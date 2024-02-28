package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow


//d = number of shares
//n = number of replications
class AES_KeyAddition(d:Int, n:Int) extends Component{
    val port = new Bundle{
        val state_in = in Vec(Vec(Vec(UInt(n bits), 8), d), 16)
        val key   = in Vec(Vec(Vec(UInt(n bits), 8), d), 16)
        val state_out = out Vec(Vec(Vec(UInt(n bits), 8), d), 16)
    }
    for(byte <- 0 to 15){
        for(share <- 0 to d-1){
            for(bit <- 0 to 7){
                port.state_out(byte)(share)(bit) := port.state_in(byte)(share)(bit) ^ port.key(byte)(share)(bit)
            }
        }
    }
}

class AES_ShiftRows(d:Int, n:Int) extends Component{
    val port = new Bundle{
        val state_in = in Vec(Vec(Vec(UInt(n bits), 8), d), 16)
        val state_out = out Vec(Vec(Vec(UInt(n bits), 8), d), 16)
    }
    port.state_out(0) := port.state_in(0)
    port.state_out(1) := port.state_in(5)
    port.state_out(2) := port.state_in(10)
    port.state_out(3) := port.state_in(15)
    port.state_out(4) := port.state_in(4)
    port.state_out(5) := port.state_in(9)
    port.state_out(6) := port.state_in(14)
    port.state_out(7) := port.state_in(3)
    port.state_out(8) := port.state_in(8)
    port.state_out(9) := port.state_in(13)
    port.state_out(10) := port.state_in(2)
    port.state_out(11) := port.state_in(7)
    port.state_out(12) := port.state_in(12)
    port.state_out(13) := port.state_in(1)
    port.state_out(14) := port.state_in(6)
    port.state_out(15) := port.state_in(11)
    
}

class Mul2(n:Int) extends Component{
    val port = new Bundle{
        val byte_in = in Vec(UInt(n bits), 8)
        val byte_out = out Vec(UInt(n bits), 8)
    }

    port.byte_out(7) := port.byte_in(6)
    port.byte_out(6) := port.byte_in(5)
    port.byte_out(5) := port.byte_in(4)
    port.byte_out(4) := port.byte_in(7) ^ port.byte_in(3)
    port.byte_out(3) := port.byte_in(7) ^ port.byte_in(2)
    port.byte_out(2) := port.byte_in(1)
    port.byte_out(1) := port.byte_in(7) ^ port.byte_in(0)
    port.byte_out(0) := port.byte_in(7)
}

class Mul3(n:Int) extends Component{
    val port = new Bundle{
        val byte_in = in Vec(UInt(n bits), 8)
        val byte_out = out Vec(UInt(n bits), 8)
    }

    port.byte_out(7) := port.byte_in(7) ^ port.byte_in(6)
    port.byte_out(6) := port.byte_in(6) ^ port.byte_in(5)
    port.byte_out(5) := port.byte_in(5) ^ port.byte_in(4)
    port.byte_out(4) := port.byte_in(7) ^ port.byte_in(4) ^ port.byte_in(3)
    port.byte_out(3) := port.byte_in(7) ^ port.byte_in(3) ^ port.byte_in(2)
    port.byte_out(2) := port.byte_in(2) ^ port.byte_in(1)
    port.byte_out(1) := port.byte_in(7) ^ port.byte_in(1) ^ port.byte_in(0)
    port.byte_out(0) := port.byte_in(7) ^ port.byte_in(0)
}

class Aes_MixColumn(d:Int, n:Int) extends Component{
    val port = new Bundle{
        val state_in = in Vec(Vec(Vec(UInt(n bits), 8), d), 16)
        val state_out = out Vec(Vec(Vec(UInt(n bits), 8), d), 16)
    }
    val state_out = Vec(Vec(Vec(UInt(n bits), 8), d), 16)
    for(row <- 0 to 3){
        for(share <- 0 to d-1){
            val mul2_0 = new Mul2(n)
            mul2_0.port.byte_in := port.state_in(row*4)(share)
            val mul3_0 = new Mul3(n)
            mul3_0.port.byte_in := port.state_in(row*4+1)(share)

            val mul2_1 = new Mul2(n)
            mul2_1.port.byte_in := port.state_in(row*4+1)(share)
            val mul3_1 = new Mul3(n)
            mul3_1.port.byte_in := port.state_in(row*4+2)(share)

            val mul2_2 = new Mul2(n)
            mul2_2.port.byte_in := port.state_in(row*4+2)(share)
            val mul3_2 = new Mul3(n)
            mul3_2.port.byte_in := port.state_in(row*4+3)(share)

            val mul2_3 = new Mul2(n)
            mul2_3.port.byte_in := port.state_in(row*4+3)(share)
            val mul3_3 = new Mul3(n)
            mul3_3.port.byte_in := port.state_in(row*4)(share)

            for(bit <- 0 to 7){
                state_out(row*4)(share)(bit) := mul2_0.port.byte_out(bit) ^ mul3_0.port.byte_out(bit) ^ port.state_in(row*4+2)(share)(bit) ^ port.state_in(row*4+3)(share)(bit)
                state_out(row*4+1)(share)(bit) := mul2_1.port.byte_out(bit) ^ mul3_1.port.byte_out(bit) ^ port.state_in(row*4)(share)(bit) ^ port.state_in(row*4+3)(share)(bit)
                state_out(row*4+2)(share)(bit) := mul2_2.port.byte_out(bit) ^ mul3_2.port.byte_out(bit) ^ port.state_in(row*4)(share)(bit) ^ port.state_in(row*4+1)(share)(bit)
                state_out(row*4+3)(share)(bit) := mul2_3.port.byte_out(bit) ^ mul3_3.port.byte_out(bit) ^ port.state_in(row*4+1)(share)(bit) ^ port.state_in(row*4+2)(share)(bit)
            }
        }
    }
    port.state_out := state_out
}