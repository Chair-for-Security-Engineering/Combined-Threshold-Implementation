package sbox

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

class Maj(k: Int) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val i = in  Vec(Bool, 2*k+1)
        val o = out Bool()
    }
    
    /* Majority Voting */
    port.o := MajorityVote(port.i.asBits)
}

// C_1^4 -> (1,1)-CA secure
class Sbox_0123456789ABCDFE_4shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 4)
                 val x1 = in Vec(UInt(3 bits), 4)
                 val x2 = in Vec(UInt(3 bits), 4)
                 val x3 = in Vec(UInt(3 bits), 4)
                 val y0 = out Vec(UInt(3 bits), 4)
                 val y1 = out Vec(UInt(3 bits), 4)
                 val y2 = out Vec(UInt(3 bits), 4)
                 val y3 = out Vec(UInt(3 bits), 4)
        }
        val t0 = Vec(Vec(Bool, 3), 4)
        val reg_y0 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(2)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(0)(l))
                t0(2)(l) :=(port.x0(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(3)(l))
                t0(3)(l) :=(port.x0(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(1)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t0(3)
                maj3.port.o <> reg_y0(3)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 4)
        val reg_y1 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l))
                t1(1)(l) :=(port.x1(2)(l))
                t1(2)(l) :=(port.x1(3)(l))
                t1(3)(l) :=(port.x1(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t1(3)
                maj3.port.o <> reg_y1(3)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 4)
        val reg_y2 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l))
                t2(1)(l) :=(port.x2(2)(l))
                t2(2)(l) :=(port.x2(3)(l))
                t2(3)(l) :=(port.x2(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t2(3)
                maj3.port.o <> reg_y2(3)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 4)
        val reg_y3 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(3)(l))
                t3(3)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t3(3)
                maj3.port.o <> reg_y3(3)(l)
        }
        port.y3 := reg_y3
}

// C_3^4 -> (1,1)-CA secure
class Sbox_0123456789ABDEFC_4shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 4)
                 val x1 = in Vec(UInt(3 bits), 4)
                 val x2 = in Vec(UInt(3 bits), 4)
                 val x3 = in Vec(UInt(3 bits), 4)
                 val y0 = out Vec(UInt(3 bits), 4)
                 val y1 = out Vec(UInt(3 bits), 4)
                 val y2 = out Vec(UInt(3 bits), 4)
                 val y3 = out Vec(UInt(3 bits), 4)
        }
        val t0 = Vec(Vec(Bool, 3), 4)
        val reg_y0 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x2(3)(l) & port.x3(2)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(3)(l) & port.x3(0)(l))
                t0(2)(l) :=(port.x0(3)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(3)(l) & port.x3(3)(l))
                t0(3)(l) :=(port.x0(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t0(3)
                maj3.port.o <> reg_y0(3)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 4)
        val reg_y1 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x0(1)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x0(1)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x0(1)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x0(2)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x0(2)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x0(2)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x0(2)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x0(3)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x0(3)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x0(3)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x0(3)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x0(3)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x0(3)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x0(3)(l) & port.x2(3)(l) & port.x3(2)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x0(0)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x0(0)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x0(0)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x0(0)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x0(0)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x0(0)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x0(2)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x0(2)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x0(2)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x0(3)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x0(3)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x0(3)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x0(3)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x0(3)(l) & port.x2(3)(l) & port.x3(0)(l))
                t1(2)(l) :=(port.x1(3)(l)) ^ 
                        (port.x0(0)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x0(0)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x0(0)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x0(0)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x0(0)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x0(1)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x0(1)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x0(1)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x0(1)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x0(1)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x0(3)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x0(3)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x0(3)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x0(3)(l) & port.x2(3)(l) & port.x3(3)(l))
                t1(3)(l) :=(port.x1(0)(l)) ^ 
                        (port.x0(0)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x0(0)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x0(0)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x0(0)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x0(0)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x0(1)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x0(1)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x0(1)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x0(2)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x0(2)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x0(2)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x0(2)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x2(2)(l) & port.x3(1)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t1(3)
                maj3.port.o <> reg_y1(3)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 4)
        val reg_y2 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l))
                t2(1)(l) :=(port.x2(2)(l))
                t2(2)(l) :=(port.x2(3)(l))
                t2(3)(l) :=(port.x2(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t2(3)
                maj3.port.o <> reg_y2(3)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 4)
        val reg_y3 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(3)(l))
                t3(3)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t3(3)
                maj3.port.o <> reg_y3(3)(l)
        }
        port.y3 := reg_y3
}

// Q_4^4 -> (1,1)-CA secure
class Sbox_0123456789ABDCFE_3shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 3)
                 val x1 = in Vec(UInt(3 bits), 3)
                 val x2 = in Vec(UInt(3 bits), 3)
                 val x3 = in Vec(UInt(3 bits), 3)
                 val y0 = out Vec(UInt(3 bits), 3)
                 val y1 = out Vec(UInt(3 bits), 3)
                 val y2 = out Vec(UInt(3 bits), 3)
                 val y3 = out Vec(UInt(3 bits), 3)
        }
        val t0 = Vec(Vec(Bool, 3), 3)
        val reg_y0 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t0(2)(l) :=(port.x0(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 3)
        val reg_y1 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l))
                t1(1)(l) :=(port.x1(2)(l))
                t1(2)(l) :=(port.x1(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 3)
        val reg_y2 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l))
                t2(1)(l) :=(port.x2(2)(l))
                t2(2)(l) :=(port.x2(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 3)
        val reg_y3 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
        }
        port.y3 := reg_y3
}

// Q_12^4 -> (1,1)-CA secure
class Sbox_0123456789CDEFAB_3shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 3)
                 val x1 = in Vec(UInt(3 bits), 3)
                 val x2 = in Vec(UInt(3 bits), 3)
                 val x3 = in Vec(UInt(3 bits), 3)
                 val y0 = out Vec(UInt(3 bits), 3)
                 val y1 = out Vec(UInt(3 bits), 3)
                 val y2 = out Vec(UInt(3 bits), 3)
                 val y3 = out Vec(UInt(3 bits), 3)
        }
        val t0 = Vec(Vec(Bool, 3), 3)
        val reg_y0 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l))
                t0(1)(l) :=(port.x0(2)(l))
                t0(2)(l) :=(port.x0(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 3)
        val reg_y1 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t1(2)(l) :=(port.x1(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 3)
        val reg_y2 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l))
                t2(1)(l) :=(port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l))
                t2(2)(l) :=(port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 3)
        val reg_y3 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
        }
        port.y3 := reg_y3
}

// C_13^4 -> (1,1)-CA secure
class Sbox_0123456789CDEFBA_4shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 4)
                 val x1 = in Vec(UInt(3 bits), 4)
                 val x2 = in Vec(UInt(3 bits), 4)
                 val x3 = in Vec(UInt(3 bits), 4)
                 val y0 = out Vec(UInt(3 bits), 4)
                 val y1 = out Vec(UInt(3 bits), 4)
                 val y2 = out Vec(UInt(3 bits), 4)
                 val y3 = out Vec(UInt(3 bits), 4)
        }
        val t0 = Vec(Vec(Bool, 3), 4)
        val reg_y0 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(2)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(0)(l))
                t0(2)(l) :=(port.x0(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(3)(l))
                t0(3)(l) :=(port.x0(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(1)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t0(3)
                maj3.port.o <> reg_y0(3)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 4)
        val reg_y1 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x3(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x2(3)(l) & port.x3(2)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(3)(l) & port.x3(0)(l))
                t1(2)(l) :=(port.x1(3)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x3(3)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(3)(l) & port.x3(3)(l))
                t1(3)(l) :=(port.x1(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t1(3)
                maj3.port.o <> reg_y1(3)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 4)
        val reg_y2 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x3(2)(l))
                t2(1)(l) :=(port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x3(0)(l))
                t2(2)(l) :=(port.x2(3)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x3(3)(l))
                t2(3)(l) :=(port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t2(3)
                maj3.port.o <> reg_y2(3)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 4)
        val reg_y3 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(3)(l))
                t3(3)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t3(3)
                maj3.port.o <> reg_y3(3)(l)
        }
        port.y3 := reg_y3
}

// Q_293^4 -> (1,1)-CA secure
class Sbox_0123457689CDEFBA_3shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 3)
                 val x1 = in Vec(UInt(3 bits), 3)
                 val x2 = in Vec(UInt(3 bits), 3)
                 val x3 = in Vec(UInt(3 bits), 3)
                 val y0 = out Vec(UInt(3 bits), 3)
                 val y1 = out Vec(UInt(3 bits), 3)
                 val y2 = out Vec(UInt(3 bits), 3)
                 val y3 = out Vec(UInt(3 bits), 3)
        }
        val t0 = Vec(Vec(Bool, 3), 3)
        val reg_y0 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l))
                t0(2)(l) :=(port.x0(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 3)
        val reg_y1 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t1(2)(l) :=(port.x1(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 3)
        val reg_y2 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l))
                t2(1)(l) :=(port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l))
                t2(2)(l) :=(port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 3)
        val reg_y3 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
        }
        port.y3 := reg_y3
}

// Q_294^4 -> (1,1)-CA secure
class Sbox_0123456789BAEFDC_3shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 3)
                 val x1 = in Vec(UInt(3 bits), 3)
                 val x2 = in Vec(UInt(3 bits), 3)
                 val x3 = in Vec(UInt(3 bits), 3)
                 val y0 = out Vec(UInt(3 bits), 3)
                 val y1 = out Vec(UInt(3 bits), 3)
                 val y2 = out Vec(UInt(3 bits), 3)
                 val y3 = out Vec(UInt(3 bits), 3)
        }
        val t0 = Vec(Vec(Bool, 3), 3)
        val reg_y0 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l))
                t0(2)(l) :=(port.x0(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 3)
        val reg_y1 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t1(2)(l) :=(port.x1(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 3)
        val reg_y2 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l))
                t2(1)(l) :=(port.x2(2)(l))
                t2(2)(l) :=(port.x2(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 3)
        val reg_y3 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
        }
        port.y3 := reg_y3
}

// Q_299^4 -> (1,1)-CA secure
class Sbox_012345678ACEB9FD_3shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 3)
                 val x1 = in Vec(UInt(3 bits), 3)
                 val x2 = in Vec(UInt(3 bits), 3)
                 val x3 = in Vec(UInt(3 bits), 3)
                 val y0 = out Vec(UInt(3 bits), 3)
                 val y1 = out Vec(UInt(3 bits), 3)
                 val y2 = out Vec(UInt(3 bits), 3)
                 val y3 = out Vec(UInt(3 bits), 3)
        }
        val t0 = Vec(Vec(Bool, 3), 3)
        val reg_y0 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x0(1)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x0(0)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x3(0)(l)) ^ 
                        (port.x0(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t0(2)(l) :=(port.x0(0)(l)) ^ 
                        (port.x0(0)(l) & port.x3(0)(l)) ^ 
                        (port.x0(0)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 3)
        val reg_y1 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x0(1)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x0(0)(l) & port.x3(2)(l)) ^ 
                        (port.x0(2)(l) & port.x3(0)(l)) ^ 
                        (port.x0(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t1(2)(l) :=(port.x1(0)(l)) ^ 
                        (port.x0(0)(l) & port.x3(0)(l)) ^ 
                        (port.x0(0)(l) & port.x3(1)(l)) ^ 
                        (port.x0(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 3)
        val reg_y2 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l))
                t2(1)(l) :=(port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l))
                t2(2)(l) :=(port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 3)
        val reg_y3 = Reg(Vec(UInt(3 bits), 3))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x3(1)(l))
                t3(1)(l) :=(port.x3(2)(l))
                t3(2)(l) :=(port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
        }
        port.y3 := reg_y3
}

// Q_300^4 (different than first representative for efficient sharing) -> (1,1)-CA secure
class Sbox_01234589DC76BAFE_4shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 4)
                 val x1 = in Vec(UInt(3 bits), 4)
                 val x2 = in Vec(UInt(3 bits), 4)
                 val x3 = in Vec(UInt(3 bits), 4)
                 val y0 = out Vec(UInt(3 bits), 4)
                 val y1 = out Vec(UInt(3 bits), 4)
                 val y2 = out Vec(UInt(3 bits), 4)
                 val y3 = out Vec(UInt(3 bits), 4)
        }
        val t0 = Vec(Vec(Bool, 3), 4)
        val reg_y0 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x3(1)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x3(2)(l))
                t0(2)(l) :=(port.x0(3)(l)) ^ 
                        (port.x3(3)(l))
                t0(3)(l) :=(port.x0(0)(l)) ^ 
                        (port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t0(3)
                maj3.port.o <> reg_y0(3)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 4)
        val reg_y1 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x2(3)(l) & port.x3(2)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(3)(l) & port.x3(0)(l))
                t1(2)(l) :=(port.x1(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(3)(l) & port.x3(3)(l))
                t1(3)(l) :=(port.x1(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t1(3)
                maj3.port.o <> reg_y1(3)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 4)
        val reg_y2 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l)) ^ 
                        (port.x3(1)(l))
                t2(1)(l) :=(port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l)) ^ 
                        (port.x3(2)(l))
                t2(2)(l) :=(port.x2(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l)) ^ 
                        (port.x3(3)(l))
                t2(3)(l) :=(port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t2(3)
                maj3.port.o <> reg_y2(3)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 4)
        val reg_y3 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l)) ^ 
                        (port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x3(2)(l))
                t3(1)(l) :=(port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l)) ^ 
                        (port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x3(0)(l))
                t3(2)(l) :=(port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l)) ^ 
                        (port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x3(3)(l))
                t3(3)(l) :=(port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t3(3)
                maj3.port.o <> reg_y3(3)(l)
        }
        port.y3 := reg_y3
}

//Q_301^4 (different than first representative for efficient sharing) -> (1,1) CA secure
class Sbox_01234589DC76ABFE_4shares_3replications extends Component{
        val port = new Bundle{
                 val x0 = in Vec(UInt(3 bits), 4)
                 val x1 = in Vec(UInt(3 bits), 4)
                 val x2 = in Vec(UInt(3 bits), 4)
                 val x3 = in Vec(UInt(3 bits), 4)
                 val y0 = out Vec(UInt(3 bits), 4)
                 val y1 = out Vec(UInt(3 bits), 4)
                 val y2 = out Vec(UInt(3 bits), 4)
                 val y3 = out Vec(UInt(3 bits), 4)
        }
        val t0 = Vec(Vec(Bool, 3), 4)
        val reg_y0 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t0(0)(l) :=(port.x0(1)(l)) ^ 
                        (port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(2)(l))
                t0(1)(l) :=(port.x0(2)(l)) ^ 
                        (port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(0)(l))
                t0(2)(l) :=(port.x0(3)(l)) ^ 
                        (port.x3(3)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(3)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l) & port.x3(3)(l))
                t0(3)(l) :=(port.x0(0)(l)) ^ 
                        (port.x3(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l) & port.x3(1)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t0(0)
                maj0.port.o <> reg_y0(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t0(1)
                maj1.port.o <> reg_y0(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t0(2)
                maj2.port.o <> reg_y0(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t0(3)
                maj3.port.o <> reg_y0(3)(l)
        }
        port.y0 := reg_y0
        val t1 = Vec(Vec(Bool, 3), 4)
        val reg_y1 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t1(0)(l) :=(port.x1(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(2)(l)) ^ 
                        (port.x2(1)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(1)(l)) ^ 
                        (port.x2(2)(l) & port.x3(3)(l)) ^ 
                        (port.x2(3)(l) & port.x3(1)(l)) ^ 
                        (port.x2(3)(l) & port.x3(2)(l))
                t1(1)(l) :=(port.x1(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(2)(l)) ^ 
                        (port.x2(0)(l) & port.x3(3)(l)) ^ 
                        (port.x2(2)(l) & port.x3(0)(l)) ^ 
                        (port.x2(2)(l) & port.x3(2)(l)) ^ 
                        (port.x2(3)(l) & port.x3(0)(l))
                t1(2)(l) :=(port.x1(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l)) ^ 
                        (port.x2(0)(l) & port.x3(1)(l)) ^ 
                        (port.x2(1)(l) & port.x3(0)(l)) ^ 
                        (port.x2(3)(l) & port.x3(3)(l))
                t1(3)(l) :=(port.x1(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x2(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t1(0)
                maj0.port.o <> reg_y1(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t1(1)
                maj1.port.o <> reg_y1(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t1(2)
                maj2.port.o <> reg_y1(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t1(3)
                maj3.port.o <> reg_y1(3)(l)
        }
        port.y1 := reg_y1
        val t2 = Vec(Vec(Bool, 3), 4)
        val reg_y2 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t2(0)(l) :=(port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l)) ^ 
                        (port.x3(1)(l))
                t2(1)(l) :=(port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l)) ^ 
                        (port.x3(2)(l))
                t2(2)(l) :=(port.x2(3)(l)) ^ 
                        (port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l)) ^ 
                        (port.x3(3)(l))
                t2(3)(l) :=(port.x2(0)(l)) ^ 
                        (port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t2(0)
                maj0.port.o <> reg_y2(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t2(1)
                maj1.port.o <> reg_y2(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t2(2)
                maj2.port.o <> reg_y2(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t2(3)
                maj3.port.o <> reg_y2(3)(l)
        }
        port.y2 := reg_y2
        val t3 = Vec(Vec(Bool, 3), 4)
        val reg_y3 = Reg(Vec(UInt(3 bits), 4))
        for (l <- 0 to 2){
                t3(0)(l) :=(port.x1(1)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(2)(l)) ^ 
                        (port.x1(1)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(1)(l)) ^ 
                        (port.x1(2)(l) & port.x2(3)(l)) ^ 
                        (port.x1(3)(l) & port.x2(1)(l)) ^ 
                        (port.x1(3)(l) & port.x2(2)(l)) ^ 
                        (port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(2)(l)) ^ 
                        (port.x1(1)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(1)(l)) ^ 
                        (port.x1(2)(l) & port.x3(3)(l)) ^ 
                        (port.x1(3)(l) & port.x3(1)(l)) ^ 
                        (port.x1(3)(l) & port.x3(2)(l))
                t3(1)(l) :=(port.x1(0)(l) & port.x2(2)(l)) ^ 
                        (port.x1(0)(l) & port.x2(3)(l)) ^ 
                        (port.x1(2)(l) & port.x2(0)(l)) ^ 
                        (port.x1(2)(l) & port.x2(2)(l)) ^ 
                        (port.x1(3)(l) & port.x2(0)(l)) ^ 
                        (port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(2)(l)) ^ 
                        (port.x1(0)(l) & port.x3(3)(l)) ^ 
                        (port.x1(2)(l) & port.x3(0)(l)) ^ 
                        (port.x1(2)(l) & port.x3(2)(l)) ^ 
                        (port.x1(3)(l) & port.x3(0)(l))
                t3(2)(l) :=(port.x1(0)(l) & port.x2(1)(l)) ^ 
                        (port.x1(1)(l) & port.x2(0)(l)) ^ 
                        (port.x1(3)(l) & port.x2(3)(l)) ^ 
                        (port.x3(3)(l)) ^ 
                        (port.x1(0)(l) & port.x3(1)(l)) ^ 
                        (port.x1(1)(l) & port.x3(0)(l)) ^ 
                        (port.x1(3)(l) & port.x3(3)(l))
                t3(3)(l) :=(port.x1(0)(l) & port.x2(0)(l)) ^ 
                        (port.x3(0)(l)) ^ 
                        (port.x1(0)(l) & port.x3(0)(l))
        }
        for (l <- 0 to 2){
                val maj0 = new Maj(1)
                maj0.port.i <> t3(0)
                maj0.port.o <> reg_y3(0)(l)
                val maj1 = new Maj(1)
                maj1.port.i <> t3(1)
                maj1.port.o <> reg_y3(1)(l)
                val maj2 = new Maj(1)
                maj2.port.i <> t3(2)
                maj2.port.o <> reg_y3(2)(l)
                val maj3 = new Maj(1)
                maj3.port.i <> t3(3)
                maj3.port.o <> reg_y3(3)(l)
        }
        port.y3 := reg_y3
}

object Sbox_CA_Main extends App {
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789ABCDFE_4shares_3replications.v").generate(new Sbox_0123456789ABCDFE_4shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789ABDEFC_4shares_3replications.v").generate(new Sbox_0123456789ABDEFC_4shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789ABDCFE_3shares_3replications.v").generate(new Sbox_0123456789ABDCFE_3shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789CDEFAB_3shares_3replications.v").generate(new Sbox_0123456789CDEFAB_3shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789CDEFBA_4shares_3replications.v").generate(new Sbox_0123456789CDEFBA_4shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123457689CDEFBA_3shares_3replications.v").generate(new Sbox_0123457689CDEFBA_3shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789BAEFDC_3shares_3replications.v").generate(new Sbox_0123456789BAEFDC_3shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_012345678ACEB9FD_3shares_3replications.v").generate(new Sbox_012345678ACEB9FD_3shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_01234589DC76BAFE_4shares_3replications.v").generate(new Sbox_01234589DC76BAFE_4shares_3replications)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_01234589DC76ABFE_4shares_3replications.v").generate(new Sbox_01234589DC76ABFE_4shares_3replications)
}