package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

class CMS_stage1(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }
    val outReg = Reg(Vec(Vec(UInt(n bits), 8), d))
    val outVal = Vec(Vec(UInt(n bits), 8), d)
    
    val rx1_0 = port.i(0)(7) ^ port.i(0)(5)
    val rx2_0 = ~(port.i(0)(7) ^ port.i(0)(4))
    val rx3_0 = port.i(0)(6) ^ port.i(0)(0)
    val rx4_0 = ~(port.i(0)(5) ^ rx3_0)
    val rx5_0 = port.i(0)(4) ^ rx4_0
    val rx6_0 = port.i(0)(3) ^ port.i(0)(0)
    val rx7_0 = port.i(0)(2) ^ rx1_0
    val rx8_0 = port.i(0)(1) ^ rx3_0
    val rx9_0 = port.i(0)(3) ^ rx8_0
    outVal(0)(7) := rx7_0 ^ rx8_0
    outVal(0)(6) := ~rx5_0 
    outVal(0)(5) := ~(port.i(0)(1) ^ rx4_0)
    outVal(0)(4) := rx1_0 ^ rx3_0 
    outVal(0)(3) := ~(port.i(0)(1) ^ rx2_0 ^ rx6_0)
    outVal(0)(2) := port.i(0)(0)
    outVal(0)(1) := ~rx4_0
    outVal(0)(0) := port.i(0)(2) ^ rx9_0 

    val rx1_1 = port.i(1)(7) ^ port.i(1)(5)
    val rx2_1 = (port.i(1)(7) ^ port.i(1)(4))
    val rx3_1 = port.i(1)(6) ^ port.i(1)(0)
    val rx4_1 = (port.i(1)(5) ^ rx3_1)
    val rx5_1 = port.i(1)(4) ^ rx4_1
    val rx6_1 = port.i(1)(3) ^ port.i(1)(0)
    val rx7_1 = port.i(1)(2) ^ rx1_1
    val rx8_1 = port.i(1)(1) ^ rx3_1
    val rx9_1 = port.i(1)(3) ^ rx8_1
    outVal(1)(7) := rx7_1 ^ rx8_1
    outVal(1)(6) := rx5_1 
    outVal(1)(5) := (port.i(1)(1) ^ rx4_1)
    outVal(1)(4) := rx1_1 ^ rx3_1 
    outVal(1)(3) := (port.i(1)(1) ^ rx2_1 ^ rx6_1)
    outVal(1)(2) := port.i(1)(0)
    outVal(1)(1) := rx4_1
    outVal(1)(0) := port.i(1)(2) ^ rx9_1 
    //Correction
    if(ca){
        for(l <- 0 to n-1){
            for(i <- 0 to d-1){
                for(j <- 0 to 7){
                    val maj = new Majority(1)
                    maj.port.i <> outVal(i)(j)
                    maj.port.o <> outReg(i)(j)(l)
                }
            }
        }
    }else{
        outReg := outVal
    }
    port.o := outReg
}

class CMS_stage2(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val a = in Vec(Vec(UInt(n bits), 4), d)
        val b = in Vec(Vec(UInt(n bits), 4), d)
        val r = in Vec(Vec(Bool, 4), if(ca)  pow(d,2).toInt else pow(d,2).toInt-1)

        val y = out Vec(Vec(UInt(n bits), 4), pow(d,2).toInt)
    }

    val outReg = Reg(Vec(Vec(UInt(n bits), 4), pow(d,2).toInt))
    val outVal = Vec(Vec(UInt(n bits), 4), pow(d,2).toInt)
    val refVal = Vec(Vec(UInt(n bits), 4), pow(d,2).toInt)

    val sq =Vec(Vec(UInt(n bits), 4), d)
    val sq_0 = new GF_SQ_SCL_4(n)
    sq_0.port.i := port.a(0) ^ port.b(0)
    sq(0) := sq_0.port.o
    val sq_1 = new GF_SQ_SCL_4(n)
    sq_1.port.i := port.a(1) ^ port.b(1)
    sq(1) := sq_1.port.o

    val sax = Vec(Vec(UInt(n bits), 2), d)
    val sbx = Vec(Vec(UInt(n bits), 2), d)
    val al = Vec(UInt(n bits), d)
    val ah = Vec(UInt(n bits), d)
    val aa = Vec(UInt(n bits), d)
    val bl = Vec(UInt(n bits), d)
    val bh = Vec(UInt(n bits), d)
    val bb = Vec(UInt(n bits), d)
    for(i <- 0 to d-1){
        sax(i)(0) := port.a(i)(2) ^ port.a(i)(0)
        sax(i)(1) := port.a(i)(3) ^ port.a(i)(1)
        sbx(i)(0) := port.b(i)(2) ^ port.b(i)(0)
        sbx(i)(1) := port.b(i)(3) ^ port.b(i)(1)
        al(i) := port.a(i)(1) ^ port.a(i)(0)
        ah(i) := port.a(i)(3) ^ port.a(i)(2)
        aa(i) := sax(i)(1) ^ sax(i)(0)
        bl(i) := port.b(i)(1) ^ port.b(i)(0)
        bh(i) := port.b(i)(3) ^ port.b(i)(2)
        bb(i) := sbx(i)(1) ^ sbx(i)(0)
    }
    for(i <- 0 to d-1){
        for(j <- 0 to d-1){
            val mul = new GF_MULS_4(n)
            mul.port.A := port.a(i)
            mul.port.Ah := ah(i)
            mul.port.Al := al(i)
            mul.port.aa := aa(i)
            mul.port.a := sax(i)
            mul.port.B := port.b(j)
            mul.port.Bh := bh(j)
            mul.port.Bl := bl(j)
            mul.port.bb := bb(j)
            mul.port.b := sbx(j)

            if(i==j)
                outVal(i+d*j) := mul.port.o ^ sq(i)
            else
                outVal(i+d*j) := mul.port.o
        }
    }
    if(ca){
        //Refreshing (Ring) 
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 3){
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j) ^ port.r(i+1)(j)
                }
            }
            for(j <- 0 to 3){
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ port.r(pow(d,2).toInt-1)(j) ^ port.r(0)(j)
            }
        }
        //Correction
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-1){
                for(j <- 0 to 3){
                    val maj = new Majority(1)
                    maj.port.i <> refVal(i)(j)
                    maj.port.o <> outReg(i)(j)(l)
                }
            }
        }
    }else{
        //Refreshing
        for(l <- 0 to n-1){
            val allRand = Vec(Vec(Bool, 4), pow(d,2).toInt-1)
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 3)
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j)
                if(i == 0){
                    allRand(i) := port.r(i)
                }else{
                    allRand(i) := allRand(i-1) ^ port.r(i)
                }
            }
            for(j <- 0 to 3)
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ allRand(pow(d,2).toInt-2)(j)
        }
        outReg := refVal   
    }
    //Connection to output
    port.y := outReg
}

class CMS_stage3(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val a = in Vec(Vec(UInt(n bits), 2), d)
        val b = in Vec(Vec(UInt(n bits), 2), d)
        val r = in Vec(Vec(Bool, 2), if(ca)  pow(d,2).toInt else pow(d,2).toInt-1)

        val y = out Vec(Vec(UInt(n bits), 2), pow(d,2).toInt)
    }

    val outReg = Reg(Vec(Vec(UInt(n bits), 2), pow(d,2).toInt))
    val outVal = Vec(Vec(UInt(n bits), 2), pow(d,2).toInt)
    val refVal = Vec(Vec(UInt(n bits), 2), pow(d,2).toInt)

    val sax = Vec(UInt(n bits), d)
    val sbx = Vec(UInt(n bits), d)
    for(i <- 0 to d-1){
        sax(i) := port.a(i)(0) ^ port.a(i)(1)
        sbx(i) := port.b(i)(0) ^ port.b(i)(1)
    }
    
    val sq =Vec(Vec(UInt(n bits), 2), d)
    for(i <- 0 to d-1){
        val sq_m = new GF_SQ_2(n)
        sq_m.port.i := port.a(i) ^ port.b(i)
        val sc_m = new GF_SCLW2_2(n)
        sc_m.port.i := sq_m.port.o
        sq(i) := sc_m.port.o
    }

    for(i <- 0 to d-1){
        for(j <- 0 to d-1){
            val mul = new GF_MULS_2(n)
            mul.port.a := port.a(i)
            mul.port.ab := sax(i)
            mul.port.b := port.b(j)
            mul.port.cd := sbx(j)
         
            if(i==j){
                outVal(i+d*j) := mul.port.o ^ sq(i)
            }else{
                outVal(i+d*j) := mul.port.o
            }
        }
    }
    if(ca){
        //Refreshing (Ring) 
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 1){
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j) ^ port.r(i+1)(j)
                }
            }
            for(j <- 0 to 1){
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ port.r(pow(d,2).toInt-1)(j) ^ port.r(0)(j)
            }
        }
        //Correction
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-1){
                for(j <- 0 to 1){
                    val maj = new Majority(1)
                    maj.port.i <> refVal(i)(j)
                    maj.port.o <> outReg(i)(j)(l)
                }
            }
        }
    }else{
        //Refreshing
        for(l <- 0 to n-1){
            val allRand = Vec(Vec(Bool, 2), pow(d,2).toInt-1)
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 1)
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j)
                if(i == 0){
                    allRand(i) := port.r(i)
                }else{
                    allRand(i) := allRand(i-1) ^ port.r(i)
                }
            }
            for(j <- 0 to 1)
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ allRand(pow(d,2).toInt-2)(j)
        }
        outReg := refVal   
    }
    port.y := outReg
}

class CMS_stage4(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val a = in Vec(Vec(UInt(n bits), 2), d)
        val b = in Vec(Vec(UInt(n bits), 2), d)
        val c = in Vec(Vec(UInt(n bits), 2), d)
        val r = in Vec(Vec(Bool, 4), if(ca)  pow(d,2).toInt else pow(d,2).toInt-1)

        val y = out Vec(Vec(UInt(n bits), 4), pow(d,2).toInt)
    }

    val outReg = Reg(Vec(Vec(UInt(n bits), 4), pow(d,2).toInt))
    val outVal = Vec(Vec(UInt(n bits), 4), pow(d,2).toInt)
    val refVal = Vec(Vec(UInt(n bits), 4), pow(d,2).toInt)

    //Square and inversion is the same operation in GF_2^2
    val sq =Vec(Vec(UInt(n bits), 2), d)
    val sq_0 = new GF_SQ_2(n)
    sq_0.port.i := port.b(0)
    sq(0) := sq_0.port.o
    val sq_1 = new GF_SQ_2(n)
    sq_1.port.i := port.b(1)
    sq(1) := sq_1.port.o

    val sax = Vec(UInt(n bits), d)
    val sqx = Vec(UInt(n bits), d)
    val scx = Vec(UInt(n bits), d)
    for(i <- 0 to d-1){
        sax(i) := port.a(i)(0) ^ port.a(i)(1)
        sqx(i) := sq(i)(0) ^ sq(i)(1)
        scx(i) := port.c(i)(0) ^ port.c(i)(1)
    }
    for(i <- 0 to d-1){
        for(j <- 0 to d-1){
            val mul0 = new GF_MULS_2(n)
            mul0.port.a := port.a(i)
            mul0.port.ab := sax(i)
            mul0.port.b := sq(j)
            mul0.port.cd := sqx(j)

            val mul1 = new GF_MULS_2(n)
            mul1.port.a := port.c(i)
            mul1.port.ab := scx(i)
            mul1.port.b := sq(j)
            mul1.port.cd := sqx(j)
         
         
            outVal(i+d*j)(0) := mul0.port.o(0)
            outVal(i+d*j)(1) := mul0.port.o(1)
            outVal(i+d*j)(2) := mul1.port.o(0)
            outVal(i+d*j)(3) := mul1.port.o(1)
            
        }
    }
    if(ca){
        //Refreshing (Ring) 
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 3){
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j) ^ port.r(i+1)(j)
                }
            }
            for(j <- 0 to 3){
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ port.r(pow(d,2).toInt-1)(j) ^ port.r(0)(j)
            }
        }
        //Correction
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-1){
                for(j <- 0 to 3){
                    val maj = new Majority(1)
                    maj.port.i <> refVal(i)(j)
                    maj.port.o <> outReg(i)(j)(l)
                }
            }
        }
    }else{
        //Refreshing
        for(l <- 0 to n-1){
            val allRand = Vec(Vec(Bool, 4), pow(d,2).toInt-1)
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 3)
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j)
                if(i == 0){
                    allRand(i) := port.r(i)
                }else{
                    allRand(i) := allRand(i-1) ^ port.r(i)
                }
            }
            for(j <- 0 to 3)
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ allRand(pow(d,2).toInt-2)(j)
        }
        outReg := refVal   
    }
    port.y := outReg
}

class CMS_stage5(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val a = in Vec(Vec(UInt(n bits), 4), d)
        val b = in Vec(Vec(UInt(n bits), 4), d)
        val c = in Vec(Vec(UInt(n bits), 4), d)
        val r = in Vec(Vec(Bool, 8), if(ca)  pow(d,2).toInt else pow(d,2).toInt-1)

        val y = out Vec(Vec(UInt(n bits), 8), pow(d,2).toInt)
    }

    val outReg = Reg(Vec(Vec(UInt(n bits), 8), pow(d,2).toInt))
    val outVal = Vec(Vec(UInt(n bits), 8), pow(d,2).toInt)
    val refVal = Vec(Vec(UInt(n bits), 8), pow(d,2).toInt)

    val sax = Vec(Vec(UInt(n bits), 2), d)
    val sbx = Vec(Vec(UInt(n bits), 2), d)
    val scx = Vec(Vec(UInt(n bits), 2), d)
    val al = Vec(UInt(n bits), d)
    val ah = Vec(UInt(n bits), d)
    val aa = Vec(UInt(n bits), d)
    val bl = Vec(UInt(n bits), d)
    val bh = Vec(UInt(n bits), d)
    val bb = Vec(UInt(n bits), d)
    val cl = Vec(UInt(n bits), d)
    val ch = Vec(UInt(n bits), d)
    val cc = Vec(UInt(n bits), d)

    for(i <- 0 to d-1){
        sax(i)(0) := port.a(i)(2) ^ port.a(i)(0)
        sax(i)(1) := port.a(i)(3) ^ port.a(i)(1)
        al(i) := port.a(i)(1) ^ port.a(i)(0)
        ah(i) := port.a(i)(3) ^ port.a(i)(2)
        aa(i) := sax(i)(1) ^ sax(i)(0)
        
        sbx(i)(0) := port.b(i)(2) ^ port.b(i)(0)
        sbx(i)(1) := port.b(i)(3) ^ port.b(i)(1)
        bl(i) := port.b(i)(1) ^ port.b(i)(0)
        bh(i) := port.b(i)(3) ^ port.b(i)(2)
        bb(i) := sbx(i)(1) ^ sbx(i)(0)

        scx(i)(0) := port.c(i)(2) ^ port.c(i)(0)
        scx(i)(1) := port.c(i)(3) ^ port.c(i)(1)
        cl(i) := port.c(i)(1) ^ port.c(i)(0)
        ch(i) := port.c(i)(3) ^ port.c(i)(2)
        cc(i) := scx(i)(1) ^ scx(i)(0)
    }
    
    for(i <- 0 to d-1){
        for(j <- 0 to d-1){
            val px = Vec(UInt(n bits), 4)
            val px_mul = new GF_MULS_4(n)
            px_mul.port.A := port.b(i) 
            px_mul.port.a := sbx(i)
            px_mul.port.Al := bl(i)
            px_mul.port.Ah := bh(i)
            px_mul.port.aa := bb(i)
            px_mul.port.B := port.a(j)
            px_mul.port.b := sax(j) 
            px_mul.port.Bl := al(j)
            px_mul.port.Bh := ah(j)
            px_mul.port.bb := aa(j)
            px := px_mul.port.o

            val qx = Vec(UInt(n bits), 4)
            val qx_mul = new GF_MULS_4(n)
            qx_mul.port.A := port.b(i)
            qx_mul.port.a := sbx(i)
            qx_mul.port.Al := bl(i)
            qx_mul.port.Ah := bh(i)
            qx_mul.port.aa := bb(i)
            qx_mul.port.B := port.c(j)
            qx_mul.port.b := scx(j) 
            qx_mul.port.Bl := cl(j)
            qx_mul.port.Bh := ch(j) 
            qx_mul.port.bb := cc(j) 
            qx := qx_mul.port.o

            outVal(i+d*j)(0) := qx(0)
            outVal(i+d*j)(1) := qx(1)
            outVal(i+d*j)(2) := qx(2)
            outVal(i+d*j)(3) := qx(3)
            outVal(i+d*j)(4) := px(0)
            outVal(i+d*j)(5) := px(1)
            outVal(i+d*j)(6) := px(2)
            outVal(i+d*j)(7) := px(3)
        }
    }
    if(ca){
        //Refreshing (Ring) 
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 7){
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j) ^ port.r(i+1)(j)
                }
            }
            for(j <- 0 to 7){
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ port.r(pow(d,2).toInt-1)(j) ^ port.r(0)(j)
            }
        }
        //Correction
        for(l <- 0 to n-1){
            for(i <- 0 to pow(d,2).toInt-1){
                for(j <- 0 to 7){
                    val maj = new Majority(1)
                    maj.port.i <> refVal(i)(j)
                    maj.port.o <> outReg(i)(j)(l)
                }
            }
        }
    }else{
        //Refreshing
        for(l <- 0 to n-1){
            val allRand = Vec(Vec(Bool, 8), pow(d,2).toInt-1)
            for(i <- 0 to pow(d,2).toInt-2){
                for(j <- 0 to 7)
                    refVal(i)(j)(l) := outVal(i)(j)(l) ^ port.r(i)(j)
                if(i == 0){
                    allRand(i) := port.r(i)
                }else{
                    allRand(i) := allRand(i-1) ^ port.r(i)
                }
            }
            for(j <- 0 to 7)
                refVal(pow(d,2).toInt-1)(j)(l) := outVal(pow(d,2).toInt-1)(j)(l) ^ allRand(pow(d,2).toInt-2)(j)
        }
        outReg := refVal   
    }
    port.y := outReg
}


class CMS_stage6(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }
        val tx1_0 = port.i(0)(7) ^ port.i(0)(3)
        val tx2_0 = port.i(0)(6) ^ port.i(0)(4)
        val tx3_0 = port.i(0)(6) ^ port.i(0)(0)
        val tx4_0 = ~(port.i(0)(5) ^ port.i(0)(3))
        val tx5_0 = ~(port.i(0)(5) ^ tx1_0)
        val tx6_0 = ~(port.i(0)(5) ^ port.i(0)(1))
        val tx7_0 = ~(port.i(0)(4) ^ tx6_0)
        val tx8_0 = port.i(0)(2) ^ tx4_0
        val tx9_0 = port.i(0)(1) ^ tx2_0 
        val tx10_0 = tx3_0 ^ tx5_0
        port.o(0)(7) := ~tx4_0
        port.o(0)(6) := ~tx1_0
        port.o(0)(5) := ~tx3_0 
        port.o(0)(4) := ~tx5_0 
        port.o(0)(3) := ~(tx2_0 ^ tx5_0)
        port.o(0)(2) := ~(tx3_0 ^ tx8_0)
        port.o(0)(1) := ~tx7_0 
        port.o(0)(0) := ~tx9_0

        val tx1_1 = port.i(1)(7) ^ port.i(1)(3)
        val tx2_1 = port.i(1)(6) ^ port.i(1)(4)
        val tx3_1 = port.i(1)(6) ^ port.i(1)(0)
        val tx4_1 = (port.i(1)(5) ^ port.i(1)(3))
        val tx5_1 = (port.i(1)(5) ^ tx1_1)
        val tx6_1 = (port.i(1)(5) ^ port.i(1)(1))
        val tx7_1 = (port.i(1)(4) ^ tx6_1)
        val tx8_1 = port.i(1)(2) ^ tx4_1
        val tx9_1 = port.i(1)(1) ^ tx2_1 
        val tx10_1 = tx3_1 ^ tx5_1
        port.o(1)(7) := tx4_1
        port.o(1)(6) := tx1_1
        port.o(1)(5) := tx3_1 
        port.o(1)(4) := tx5_1 
        port.o(1)(3) := (tx2_1 ^ tx5_1)
        port.o(1)(2) := (tx3_1 ^ tx8_1)
        port.o(1)(1) := tx7_1 
        port.o(1)(0) := tx9_1
    
}

//Taken from De Cnudde et al, "Masking AES with 𝑑+1 Shares in Hardware", 2016
// https://www.iacr.org/archive/ches2016/98130170/98130170.pdf
class Sbox_AES_Canright_CMS_2shares(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val r = in Vec(Bool, if(ca) 62 else 54)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }
    val r_bits = if(ca) 4 else 3
    
    val stage1 = new CMS_stage1(ca)
    stage1.port.i := port.i

    val ax = Vec(Vec(UInt(n bits), 4), 2)
    val bx = Vec(Vec(UInt(n bits), 4), 2)
    //Separation into lower and upper part
    for(i <- 0 to 1){
        for(j <- 0 to 3){
            ax(i)(j) := stage1.port.o(i)(4+j)
            bx(i)(j) := stage1.port.o(i)(j)
        }
    }
    val stage2 = new CMS_stage2(ca)
    stage2.port.a := ax
    stage2.port.b := bx
    for(i <- 0 to r_bits-1){
        for(j <- 0 to 3){
            stage2.port.r(i)(j) := port.r(4*i+j)
        }
    }

    val ax1 = Vec(Vec(UInt(n bits), 2), 2)
    val bx1 = Vec(Vec(UInt(n bits), 2), 2)
    //Compression and separation into upper and lower part
    ax1(0)(0) := stage2.port.y(0)(2) ^ stage2.port.y(1)(2)
    ax1(1)(0) := stage2.port.y(2)(2) ^ stage2.port.y(3)(2)
    ax1(0)(1) := stage2.port.y(0)(3) ^ stage2.port.y(1)(3)
    ax1(1)(1) := stage2.port.y(2)(3) ^ stage2.port.y(3)(3)
    bx1(0)(0) := stage2.port.y(0)(0) ^ stage2.port.y(1)(0)
    bx1(1)(0) := stage2.port.y(2)(0) ^ stage2.port.y(3)(0)
    bx1(0)(1) := stage2.port.y(0)(1) ^ stage2.port.y(1)(1)
    bx1(1)(1) := stage2.port.y(2)(1) ^ stage2.port.y(3)(1)
    val stage3 = new CMS_stage3(ca)
    stage3.port.a := ax1
    stage3.port.b := bx1
    for(i <- 0 to r_bits-1){
        for(j <- 0 to 1){
             stage3.port.r(i)(j) := port.r(12+2*i+j)
        }
    }
    //Pipelining
    val ax4 = Reg(Vec(Vec(UInt(n bits), 2), 2))
    val bx4 = Reg(Vec(Vec(UInt(n bits), 2), 2))
    ax4 := ax1 
    bx4 := bx1
    val cx4 = Vec(Vec(UInt(n bits), 2), 2)
    //Compression
    cx4(0) := stage3.port.y(0) ^ stage3.port.y(1)
    cx4(1) := stage3.port.y(2) ^ stage3.port.y(3)
    val stage4 = new CMS_stage4(ca)
    stage4.port.a := ax4
    stage4.port.b := cx4
    stage4.port.c := bx4
    for(i <- 0 to r_bits-1){
        for(j <- 0 to 3){
            stage4.port.r(i)(j) := port.r(18+4*i+j)
        }
    }
    //Pipelining
    val ax_reg1 = Reg(Vec(Vec(UInt(n bits), 4), 2))
    ax_reg1 := ax
    val ax_reg2 = Reg(Vec(Vec(UInt(n bits), 4), 2))
    ax_reg2 := ax_reg1
    val ax_reg3 = Reg(Vec(Vec(UInt(n bits), 4), 2))
    ax_reg3 := ax_reg2
    val bx_reg1 = Reg(Vec(Vec(UInt(n bits), 4), 2))
    bx_reg1 := bx
    val bx_reg2 = Reg(Vec(Vec(UInt(n bits), 4), 2))
    bx_reg2 := bx_reg1
    val bx_reg3 = Reg(Vec(Vec(UInt(n bits), 4), 2))
    bx_reg3 := bx_reg2

    val bx5 = Vec(Vec(UInt(n bits), 4), 2)
    //Compression
    bx5(0) := stage4.port.y(0) ^ stage4.port.y(1)
    bx5(1) := stage4.port.y(2) ^ stage4.port.y(3)
    val stage5 = new CMS_stage5(ca)
    stage5.port.a := bx_reg3
    stage5.port.b := bx5
    stage5.port.c := ax_reg3
    for(i <- 0 to r_bits-1){
        for(j <- 0 to 7){
            stage5.port.r(i)(j) := port.r(30+4*i+j)
        }
    }
    
    val stage6 = new CMS_stage6(ca)
    //Compression
    stage6.port.i(0) := stage5.port.y(0) ^ stage5.port.y(1)
    stage6.port.i(1) := stage5.port.y(2) ^ stage5.port.y(3)

    port.o := stage6.port.o

}