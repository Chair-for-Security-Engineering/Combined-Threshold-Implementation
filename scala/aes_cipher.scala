package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

// d = number of shares
// n = number of replications
// r = randomness bits per Sbox
class AES_Round(d:Int, n:Int, r:Int, sboxName:String) extends Component{
    val port = new Bundle{
        val state_in = in Vec(Vec(Vec(UInt(n bits), 8), d), 16)
        val key   = in Vec(Vec(Vec(UInt(n bits), 8), d), 16)
        val rand = (r > 0) generate (in Vec(Vec(Bool(), r), 16)) 
        val state_out = out Vec(Vec(Vec(UInt(n bits), 8), d), 16)
    }
    val share = 0
    var ca = false
    var finalCorrection = false
    if((d > 1) & (n > 1)) ca = true

    //Key addition
    val keyAdd = new AES_KeyAddition(d, n)
    keyAdd.port.state_in := port.state_in
    keyAdd.port.key := port.key

    //SubBytes
    val subBytes_out = Vec(Vec(Vec(UInt(n bits), 8), d), 16)
    for(byte <- 0 to 15){
        if(sboxName == "Canright"){
            val sbox = new Sbox_AES_Canright(n)
            sbox.port.i := keyAdd.port.state_out(byte)(share)
            subBytes_out(byte)(share) := sbox.port.o
        }else if(sboxName == "CMS"){
            if(ca) assert(r == 62)
            else assert(r == 54)
            val sbox = new Sbox_AES_Canright_CMS_2shares(ca)
            sbox.port.i := keyAdd.port.state_out(byte)
            sbox.port.r := port.rand(byte)
            subBytes_out(byte) := sbox.port.o
        }else if(sboxName == "BoyarPeralta"){
            assert(d == 1 | d == 4)
            assert(r == 0)
            val sbox = new Sbox_AES_BoyarPeralta(d>1,n>1)
            sbox.port.i := keyAdd.port.state_out(byte)
            subBytes_out(byte) := sbox.port.o
            if(d>1 & n>1) finalCorrection = true
        }else if(sboxName == "BoyarPeralta_CPC1"){
            val sbox = new Sbox_AES_BoyarPeralta_Gadgets(d, n, d*(d-1), "CPC1")
            sbox.port.i := keyAdd.port.state_out(byte)
            sbox.port.r := port.rand(byte)
            subBytes_out(byte) := sbox.port.o 
        }else if(sboxName == "Canright_CPC1"){
            val sbox = new Sbox_AES_Canright_Gadgets(d, n, d*(d-1), "CPC1")
            sbox.port.i := keyAdd.port.state_out(byte)
            sbox.port.r := port.rand(byte)
            subBytes_out(byte) := sbox.port.o 
        }
    }

    //ShiftRows
    val shiftRows = new AES_ShiftRows(d, n)
    shiftRows.port.state_in := subBytes_out

    //MixColumns
    val mixColumns = new Aes_MixColumn(d, n)
    mixColumns.port.state_in := shiftRows.port.state_out

    //State register at round output
    val roundReg = Reg(Vec(Vec(Vec(UInt(n bits), 8), d), 16))
    if(finalCorrection){
        for(l <- 0 to n-1){
            for(bit <- 0 to 7){
                for(share <- 0 to d-1){
                    for(byte <- 0 to 15){
                        val maj = new Majority(1)
                        maj.port.i <> mixColumns.port.state_out(byte)(share)(bit) 
                        maj.port.o <> roundReg(byte)(share)(bit)(l)
                    }
                }
            }
        }
    }else{
        roundReg := mixColumns.port.state_out 
    }
    port.state_out := roundReg
}

object Combined_TI_Main extends App {
        //Canright - Plain
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_Canright.v").generate(new Sbox_AES_Canright(1))
        //Canright - FA - 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_Canright_k1.v").generate(new Sbox_AES_Canright(3))

        //Boyar & Peralta - Plain
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_BoyarPeralta.v").generate(new Sbox_AES_BoyarPeralta(false, false))
        //Boyar & Peralta - FA - 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_BoyarPeralta_k1.v").generate(new Sbox_AES_BoyarPeralta(false, true))

        //Canright - CMS  SCA - 2 Shares
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_Canright_CMS_d1.v").generate(new Sbox_AES_Canright_CMS_2shares(false))
        //Canright - CMS  CA - 2 Shares, 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_Canright_CMS_d1_k1.v").generate(new Sbox_AES_Canright_CMS_2shares(true))

        //Boyar & Peralta - TI SCA - 4 Shares
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_BoyarPeralta_d1.v").generate(new Sbox_AES_BoyarPeralta(true, false))
        //Boyar & Peralta - TI CA - 4 Shares, 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_BoyarPeralta_d1_k1.v").generate(new Sbox_AES_BoyarPeralta(true, true))

        //Boyar & Peralta CA (CPC1)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_BoyarPeralta_CPC1_d1_k1.v").generate(new Sbox_AES_BoyarPeralta_Gadgets(2,3, 4 , "CPC1"))
        //Boyar & Peralta SCA (HPC1)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_BoyarPeralta_HPC1_d1.v").generate(new Sbox_AES_BoyarPeralta_Gadgets(2,1, 2 , "CPC1"))

        //Canright CA (CPC1)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_Canright_CPC1_d1_k1.v").generate(new Sbox_AES_Canright_Gadgets(2,3, 4 , "CPC1"))

        //Canright SCA (HPC1) 
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_AES_Canright_HPC1_d1.v").generate(new Sbox_AES_Canright_Gadgets(2,1, 2 , "CPC1"))

        //Canright RCFMS SCA - 2 Shares  
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Inv_AES_Canright_NFR_d1.v").generate(new GF_INV_8_RCFMS_2shares(false))

        //Canright RCFMS CA - 2 Shares, 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Inv_AES_Canright_NFR_d1_k1.v").generate(new GF_INV_8_RCFMS_2shares(true))

        //Full CMS - 2 Shares
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Round_AES_CMS_d1.v").generate(new AES_Round(2,1, 54, "CMS"))

        //Full CCMS - 2 Shares, 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Round_AES_CCMS_d1_k1.v").generate(new AES_Round(2,3, 62, "CMS"))

         //Full TI - 4 Shares
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Round_AES_TI_d1.v").generate(new AES_Round(4,1, 0, "BoyarPeralta"))

        //Full CTI - 4 Shares, 3 Replications
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Round_AES_CTI_d1_k1.v").generate(new AES_Round(4,3, 0, "BoyarPeralta"))  
}