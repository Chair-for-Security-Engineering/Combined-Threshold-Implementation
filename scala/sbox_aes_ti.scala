package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

class Majority(k: Int) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val i = in  UInt(2*k+1 bits)
        val o = out Bool()
    }
    
    /* Majority Voting */
    port.o := MajorityVote(port.i.asBits)
}

//Taken from Ghoshal et al. "Several Masked Implementation of the Boyar-Peralta AES S-Box"
class TI_mul_4shares extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(Bool, 4)
        val x1 = in Vec(Bool, 4)
        val y = out Vec(Bool, 4)
    }   

    val a = Reg(Vec(Bool, 4))
    //Compute 1. output share
    val t0, t1 = Bool
    t0 := port.x0(1) ^ port.x0(2) ^ port.x0(3)
    t1 := port.x1(1) ^ port.x1(2)
    a(0) := t0 ^ t1 ^ port.x1(3) ^ port.x1(2)
    //Compute 2. output share
    val t2, t3, t4 = Bool
    t2 := port.x0(0) ^ port.x0(2)
    t3 := port.x1(0) ^ port.x1(3)
    t4 := port.x0(0) & port.x1(2)
    a(1) := (t2 & t3) ^ t4 ^ port.x0(3)
    //Compute 3. output share
    val t5, t6 = Bool
    t5 := port.x0(1) ^ port.x0(3)
    t6 := port.x1(0) ^ port.x1(3)
    a(2) := t5 & t6 ^ port.x0(3) ^ port.x1(3)
    //Compute 4. output share
    val t7 = Bool
    t7 := port.x0(0) & port.x1(2)
    a(3) := t7 ^ port.x1(2)
    //Forward shares to output
    port.y := a

    
}

//Taken from Ghoshal et al. "Several Masked Implementation of the Boyar-Peralta AES S-Box"
class TI_mul_4shares_noReg extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(Bool, 4)
        val x1 = in Vec(Bool, 4)
        val y = out Vec(Bool, 4)
    }
    
    //Compute 1. output share
    val t0, t1 = Bool
    t0 := port.x0(1) ^ port.x0(2) ^ port.x0(3)
    t1 := port.x1(1) ^ port.x1(2)
    port.y(0) := t0 ^ t1 ^ port.x1(3) ^ port.x1(2)
    //Compute 2. output share
    val t2, t3, t4 = Bool
    t2 := port.x0(0) ^ port.x0(2)
    t3 := port.x1(0) ^ port.x1(3)
    t4 := port.x0(0) & port.x1(2)
    port.y(1) := (t2 & t3) ^ t4 ^ port.x0(3)
    //Compute 3. output share
    val t5, t6 = Bool
    t5 := port.x0(1) ^ port.x0(3)
    t6 := port.x1(0) ^ port.x1(3)
    port.y(2) := t5 & t6 ^ port.x0(3) ^ port.x1(3)
    //Compute 4. output share
    val t7 = Bool
    t7 := port.x0(0) & port.x1(2)
    port.y(3) := t7 ^ port.x1(2)
}

class TI_add_4shares extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(Bool, 4)
        val x1 = in Vec(Bool, 4)
        val y = out Vec(Bool, 4)
    }
    
    port.y(0) := port.x0(0) ^ port.x1(0)
    port.y(1) := port.x0(1) ^ port.x1(1)
    port.y(2) := port.x0(2) ^ port.x1(2)
    port.y(3) := port.x0(3) ^ port.x1(3)
}

class TI_xnor_4shares extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(Bool, 4)
        val x1 = in Vec(Bool, 4)
        val y = out Vec(Bool, 4)
    }
    
    port.y(0) := ~(port.x0(0) ^ port.x1(0))
    port.y(1) := port.x0(1) ^ port.x1(1)
    port.y(2) := port.x0(2) ^ port.x1(2)
    port.y(3) := port.x0(3) ^ port.x1(3)
}

class Multiplication_TI(share: Boolean, rep: Boolean) extends Component{
     val n = if(rep) 3 else 1
     val d = if(share) 4 else 1
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(UInt(n bits), d) 
        val x1 = in Vec(UInt(n bits), d) 
        val y =  out Vec(UInt(n bits), d) 
    }
    if(share){
        val a = Vec(UInt(n bits), 4)
        val b = Reg(Vec(UInt(n bits), 4))
        for(l <- 0 to n-1){
            //Compute 1. output share
            val t0, t1 = Bool
            t0 := port.x0(1)(l) ^ port.x0(2)(l) ^ port.x0(3)(l)
            t1 := port.x1(1)(l) ^ port.x1(2)(l)
            a(0)(l) := (t0 & t1) ^ port.x1(3)(l) ^ port.x1(2)(l)
            //Compute 2. output share
            val t2, t3, t4 = Bool
            t2 := port.x0(0)(l) ^ port.x0(2)(l)
            t3 := port.x1(0)(l) ^ port.x1(3)(l)
            t4 := port.x0(0)(l) & port.x1(2)(l)
            a(1)(l) := (t2 & t3) ^ t4 ^ port.x0(3)(l)
            //Compute 3. output share
            val t5, t6 = Bool
            t5 := port.x0(1)(l) ^ port.x0(3)(l)
            t6 := port.x1(0)(l) ^ port.x1(3)(l)
            a(2)(l) := t5 & t6 ^ port.x0(3)(l) ^ port.x1(3)(l)
            //Compute 4. output share
            val t7 = port.x0(0)(l) & port.x1(1)(l)
            a(3)(l) := t7 ^ port.x1(2)(l)
        }
        if(rep & share){
            for(l <- 0 to n-1){
                for(i <- 0 to d-1){
                    val maj = new Majority(1)
                    maj.port.i <> a(i)
                    maj.port.o <> b(i)(l)
                }
            }
        }else{
            b := a
        }
        //Forward shares to output
        port.y := b
    }else{
        for(l <- 0 to n-1){
            port.y(0)(l) := port.x0(0)(l) & port.x1(0)(l)
        }
    }
}

class Multiplication_TI_noReg(share: Boolean, rep: Boolean) extends Component{
     val n = if(rep) 3 else 1
     val d = if(share) 4 else 1
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(UInt(n bits), d) 
        val x1 = in Vec(UInt(n bits), d) 
        val y =  out Vec(UInt(n bits), d) 
    }
    if(share){
        val a = Vec(UInt(n bits), 4)
        for(l <- 0 to n-1){
            //Compute 1. output share
            val t0, t1 = Bool
            t0 := port.x0(1)(l) ^ port.x0(2)(l) ^ port.x0(3)(l)
            t1 := port.x1(1)(l) ^ port.x1(2)(l)
            a(0)(l) := t0 & t1 ^ port.x1(3)(l) ^ port.x1(2)(l)
            //Compute 2. output share
            val t2, t3, t4 = Bool
            t2 := port.x0(0)(l) ^ port.x0(2)(l)
            t3 := port.x1(0)(l) ^ port.x1(3)(l)
            t4 := port.x0(0)(l) & port.x1(2)(l)
            a(1)(l) := (t2 & t3) ^ t4 ^ port.x0(3)(l)
            //Compute 3. output share
            val t5, t6 = Bool
            t5 := port.x0(1)(l) ^ port.x0(3)(l)
            t6 := port.x1(0)(l) ^ port.x1(3)(l)
            a(2)(l) := t5 & t6 ^ port.x0(3)(l) ^ port.x1(3)(l)
            //Compute 4. output share
            val t7 = port.x0(0)(l) & port.x1(1)(l)
            a(3)(l) := t7 ^ port.x1(2)(l)
        }
        //Forward shares to output
        port.y := a
    }else{
        for(l <- 0 to n-1){
            port.y(0)(l) := port.x0(0)(l) & port.x1(0)(l)
        }
    }
}

class Addition_TI(share: Boolean, rep: Boolean) extends Component{
     val n = if(rep) 3 else 1
     val d = if(share) 4 else 1
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(UInt(n bits), d) 
        val x1 = in Vec(UInt(n bits), d) 
        val y =  out Vec(UInt(n bits), d) 
    }
    for(l <- 0 to n-1){
        for(i <- 0 to d-1){
            port.y(i)(l) := port.x0(i)(l) ^ port.x1(i)(l)
        }
    }
}

class Addition_Inv_TI(share: Boolean, rep: Boolean) extends Component{
     val n = if(rep) 3 else 1
     val d = if(share) 4 else 1
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val x0 = in Vec(UInt(n bits), d) 
        val x1 = in Vec(UInt(n bits), d) 
        val y =  out Vec(UInt(n bits), d) 
    }
    for(l <- 0 to n-1){
        for(i <- 0 to d-1){
            if(i==0) port.y(i)(l) := ~(port.x0(i)(l) ^ port.x1(i)(l))
            else port.y(i)(l) := port.x0(i)(l) ^ port.x1(i)(l)
        }
    }
}

//Taken from Ghoshal et al. "Several Masked Implementation of the Boyar-Peralta AES S-Box"
// TI with 4 shares and no randomness 
class Sbox_AES_BoyarPeralta(share: Boolean, rep: Boolean) extends Component{
    val n = if(rep) 3 else 1
    val d = if(share) 4 else 1

    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }
    var in_x0 = Vec(UInt(n bits), d)
    var in_x1 = Vec(UInt(n bits), d)
    var in_x2 = Vec(UInt(n bits), d)
    var in_x3 = Vec(UInt(n bits), d)
    var in_x4 = Vec(UInt(n bits), d)
    var in_x5 = Vec(UInt(n bits), d)
    var in_x6 = Vec(UInt(n bits), d)
    var in_x7 = Vec(UInt(n bits), d)
    for(i <- 0 to d-1){
        in_x0(i) := port.i(i)(7)
        in_x1(i) := port.i(i)(6)
        in_x2(i) := port.i(i)(5)
        in_x3(i) := port.i(i)(4)
        in_x4(i) := port.i(i)(3)
        in_x5(i) := port.i(i)(2)
        in_x6(i) := port.i(i)(1)
        in_x7(i) := port.i(i)(0)
    }
    var out_y0 = Vec(UInt(n bits), d)
    var out_y1 = Vec(UInt(n bits), d)
    var out_y2 = Vec(UInt(n bits), d)
    var out_y3 = Vec(UInt(n bits), d)
    var out_y4 = Vec(UInt(n bits), d)
    var out_y5 = Vec(UInt(n bits), d)
    var out_y6 = Vec(UInt(n bits), d)
    var out_y7 = Vec(UInt(n bits), d)

    //Stage 1
    val t1_xor = new Addition_TI(share, rep)
    t1_xor.port.x0 := in_x0
    t1_xor.port.x1 := in_x3 
    val t2_xor = new Addition_TI(share, rep)
    t2_xor.port.x0 := in_x0
    t2_xor.port.x1 := in_x5
    val t3_xor = new Addition_TI(share, rep)
    t3_xor.port.x0 := in_x0
    t3_xor.port.x1 := in_x6 
    val t4_xor = new Addition_TI(share, rep)
    t4_xor.port.x0 := in_x3
    t4_xor.port.x1 := in_x5
    val t5_xor = new Addition_TI(share, rep)
    t5_xor.port.x0 := in_x4
    t5_xor.port.x1 := in_x6
    val t6_xor = new Addition_TI(share, rep)
    t6_xor.port.x0 := t1_xor.port.y
    t6_xor.port.x1 := t5_xor.port.y
    val t7_xor = new Addition_TI(share, rep)
    t7_xor.port.x0 := in_x1
    t7_xor.port.x1 := in_x2
    val t8_xor = new Addition_TI(share, rep)
    t8_xor.port.x0 := in_x7
    t8_xor.port.x1 := t6_xor.port.y
    val t9_xor = new Addition_TI(share, rep)
    t9_xor.port.x0 := in_x7
    t9_xor.port.x1 := t7_xor.port.y
    val t10_xor = new Addition_TI(share, rep)
    t10_xor.port.x0 := t6_xor.port.y
    t10_xor.port.x1 := t7_xor.port.y
    val t11_xor = new Addition_TI(share, rep)
    t11_xor.port.x0 := in_x1
    t11_xor.port.x1 := in_x5
    val t12_xor = new Addition_TI(share, rep)
    t12_xor.port.x0 := in_x2
    t12_xor.port.x1 := in_x5
    val t13_xor = new Addition_TI(share, rep)
    t13_xor.port.x0 := t3_xor.port.y
    t13_xor.port.x1 := t4_xor.port.y
    val t14_xor = new Addition_TI(share, rep)
    t14_xor.port.x0 := t6_xor.port.y
    t14_xor.port.x1 := t11_xor.port.y
    val t15_xor = new Addition_TI(share, rep)
    t15_xor.port.x0 := t5_xor.port.y
    t15_xor.port.x1 := t11_xor.port.y
    val t16_xor = new Addition_TI(share, rep)
    t16_xor.port.x0 := t5_xor.port.y
    t16_xor.port.x1 := t12_xor.port.y
    val t17_xor = new Addition_TI(share, rep)
    t17_xor.port.x0 := t9_xor.port.y
    t17_xor.port.x1 := t16_xor.port.y
    val t18_xor = new Addition_TI(share, rep)
    t18_xor.port.x0 := in_x3
    t18_xor.port.x1 := in_x7
    val t19_xor = new Addition_TI(share, rep)
    t19_xor.port.x0 := t7_xor.port.y
    t19_xor.port.x1 := t18_xor.port.y
    val t20_xor = new Addition_TI(share, rep)
    t20_xor.port.x0 := t1_xor.port.y
    t20_xor.port.x1 := t19_xor.port.y
    val t21_xor = new Addition_TI(share, rep)
    t21_xor.port.x0 := in_x6
    t21_xor.port.x1 := in_x7
    val t22_xor = new Addition_TI(share, rep)
    t22_xor.port.x0 := t7_xor.port.y
    t22_xor.port.x1 := t21_xor.port.y
    val t23_xor = new Addition_TI(share, rep)
    t23_xor.port.x0 := t2_xor.port.y
    t23_xor.port.x1 := t22_xor.port.y
    val t24_xor = new Addition_TI(share, rep)
    t24_xor.port.x0 := t2_xor.port.y
    t24_xor.port.x1 := t10_xor.port.y
    val t25_xor = new Addition_TI(share, rep)
    t25_xor.port.x0 := t20_xor.port.y
    t25_xor.port.x1 := t17_xor.port.y
    val t26_xor = new Addition_TI(share, rep)
    t26_xor.port.x0 := t3_xor.port.y
    t26_xor.port.x1 := t16_xor.port.y
    val t27_xor = new Addition_TI(share, rep)
    t27_xor.port.x0 := t1_xor.port.y
    t27_xor.port.x1 := t12_xor.port.y
    val m1 = new Multiplication_TI(share, rep)
    m1.port.x0 := t13_xor.port.y
    m1.port.x1 := t6_xor.port.y
    val m2 = new Multiplication_TI(share, rep)
    m2.port.x0 := t23_xor.port.y
    m2.port.x1 := t8_xor.port.y
    val m4 = new Multiplication_TI(share, rep)
    m4.port.x0 := t19_xor.port.y
    m4.port.x1 := in_x7
    val m6 = new Multiplication_TI(share, rep)
    m6.port.x0 := t3_xor.port.y
    m6.port.x1 := t16_xor.port.y
    val m7 = new Multiplication_TI(share, rep)
    m7.port.x0 := t22_xor.port.y
    m7.port.x1 := t9_xor.port.y
    val m9 = new Multiplication_TI(share, rep)
    m9.port.x0 := t20_xor.port.y
    m9.port.x1 := t17_xor.port.y
    val m11 = new Multiplication_TI(share, rep)
    m11.port.x0 := t1_xor.port.y
    m11.port.x1 := t15_xor.port.y
    val m12 = new Multiplication_TI(share, rep)
    m12.port.x0 := t4_xor.port.y
    m12.port.x1 := t27_xor.port.y
    val m14 = new Multiplication_TI(share, rep)
    m14.port.x0 := t2_xor.port.y
    m14.port.x1 := t10_xor.port.y
    
    val x7 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7 := in_x7
    val t1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1 := t1_xor.port.y
    val t2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2 := t2_xor.port.y
    val t3 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3 := t3_xor.port.y
    val t4 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4 := t4_xor.port.y
    val t6 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6 := t6_xor.port.y
    val t7 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t7 := t7_xor.port.y
    val t8 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8 := t8_xor.port.y
    val t9 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9 := t9_xor.port.y
    val t10 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10 := t10_xor.port.y
    val t13 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13 := t13_xor.port.y
    val t14 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t14 := t14_xor.port.y
    val t15 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15 := t15_xor.port.y
    val t16 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16 := t16_xor.port.y
    val t17 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17 := t17_xor.port.y
    val t19 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19 := t19_xor.port.y
    val t20 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20 := t20_xor.port.y
    val t22 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22 := t22_xor.port.y
    val t23 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23 := t23_xor.port.y
    val t24 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t24 := t24_xor.port.y
     val t25 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t25 := t25_xor.port.y
    val t26 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t26 := t26_xor.port.y
    val t27 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27 := t27_xor.port.y

    //Stage 2
    val m3_xor = new Addition_TI(share, rep)
    m3_xor.port.x0 := t14
    m3_xor.port.x1 := m1.port.y
    val m5_xor = new Addition_TI(share, rep)
    m5_xor.port.x0 := m4.port.y
    m5_xor.port.x1 := m1.port.y
    val m8_xor = new Addition_TI(share, rep)
    m8_xor.port.x0 := t26
    m8_xor.port.x1 := m6.port.y
    val m10_xor = new Addition_TI(share, rep)
    m10_xor.port.x0 := m9.port.y
    m10_xor.port.x1 := m6.port.y
    val m13_xor = new Addition_TI(share, rep)
    m13_xor.port.x0 := m12.port.y
    m13_xor.port.x1 := m11.port.y
    val m15_xor = new Addition_TI(share, rep)
    m15_xor.port.x0 := m14.port.y
    m15_xor.port.x1 := m11.port.y
    val m16_xor = new Addition_TI(share, rep)
    m16_xor.port.x0 := m3_xor.port.y
    m16_xor.port.x1 := m2.port.y
    val m17_xor = new Addition_TI(share, rep)
    m17_xor.port.x0 := m5_xor.port.y
    m17_xor.port.x1 := t24
    val m18_xor = new Addition_TI(share, rep)
    m18_xor.port.x0 := m8_xor.port.y
    m18_xor.port.x1 := m7.port.y
    val m19_xor = new Addition_TI(share, rep)
    m19_xor.port.x0 := m10_xor.port.y
    m19_xor.port.x1 := m15_xor.port.y
    val m20_xor = new Addition_TI(share, rep)
    m20_xor.port.x0 := m16_xor.port.y
    m20_xor.port.x1 := m13_xor.port.y
    val m21_xor = new Addition_TI(share, rep)
    m21_xor.port.x0 := m17_xor.port.y
    m21_xor.port.x1 := m15_xor.port.y
    val m22_xor = new Addition_TI(share, rep)
    m22_xor.port.x0 := m18_xor.port.y
    m22_xor.port.x1 := m13_xor.port.y
    val m23_xor = new Addition_TI(share, rep)
    m23_xor.port.x0 := m19_xor.port.y
    m23_xor.port.x1 := t25
    val m24_xor = new Addition_TI(share, rep)
    m24_xor.port.x0 := m22_xor.port.y
    m24_xor.port.x1 := m23_xor.port.y
    val m25 = new Multiplication_TI(share, rep)
    m25.port.x0 := m22_xor.port.y
    m25.port.x1 := m20_xor.port.y
    val m27_xor = new Addition_TI(share, rep)
    m27_xor.port.x0 := m20_xor.port.y
    m27_xor.port.x1 := m21_xor.port.y
    val m31 = new Multiplication_TI(share, rep)
    m31.port.x0 := m20_xor.port.y
    m31.port.x1 := m23_xor.port.y
    val m34 = new Multiplication_TI(share, rep)
    m34.port.x0 := m21_xor.port.y
    m34.port.x1 := m22_xor.port.y

    val x7_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7_1 := x7
    val t1_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1_1 := t1
    val t2_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2_1 := t2
    val t3_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3_1 := t3
    val t4_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4_1 := t4
    val t6_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6_1 := t6
    val t8_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8_1 := t8
    val t9_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9_1 := t9
    val t10_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10_1 := t10
    val t13_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13_1 := t13
    val t15_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15_1 := t15
    val t16_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16_1 := t16
    val t17_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17_1 := t17
    val t19_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19_1 := t19
    val t20_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20_1 := t20
    val t22_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22_1 := t22
    val t23_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23_1 := t23
    val t27_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27_1 := t27
    val m21 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m21 := m21_xor.port.y
    val m23 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m23 := m23_xor.port.y
     val m24 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m24 := m24_xor.port.y
    val m27 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m27 := m27_xor.port.y

    //Stage 3
    val m26_xor = new Addition_TI(share, rep)
    m26_xor.port.x0 := m21
    m26_xor.port.x1 := m25.port.y
    val m28_xor = new Addition_TI(share, rep)
    m28_xor.port.x0 := m23
    m28_xor.port.x1 := m25.port.y
    val m29 = new Multiplication_TI(share, rep)
    m29.port.x0 := m28_xor.port.y
    m29.port.x1 := m27
    val m30 = new Multiplication_TI(share, rep)
    m30.port.x0 := m26_xor.port.y
    m30.port.x1 := m24
    val m32 = new Multiplication_TI(share, rep)
    m32.port.x0 := m27
    m32.port.x1 := m31.port.y
    val m33_xor = new Addition_TI(share, rep)
    m33_xor.port.x0 := m27
    m33_xor.port.x1 := m25.port.y
    val m35 = new Multiplication_TI(share, rep)
    m35.port.x0 := m24
    m35.port.x1 := m34.port.y
    val m36_xor = new Addition_TI(share, rep)
    m36_xor.port.x0 := m24
    m36_xor.port.x1 := m25.port.y

    val x7_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7_2 :=x7_1
    val t1_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1_2 := t1_1
    val t2_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2_2 := t2_1
    val t3_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3_2 := t3_1
    val t4_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4_2 := t4_1
    val t6_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6_2 := t6_1
    val t8_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8_2 := t8_1
    val t9_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9_2 := t9_1
    val t10_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10_2 := t10_1
    val t13_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13_2 := t13_1
    val t15_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15_2 := t15_1
    val t16_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16_2 := t16_1
    val t17_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17_2 := t17_1
    val t19_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19_2 := t19_1
    val t20_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20_2 := t20_1
    val t22_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22_2 := t22_1
    val t23_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23_2 := t23_1
    val t27_2 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27_2 := t27_1
    val m21_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m21_1 := m21
    val m23_1 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m23_1 := m23
    val m33 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m33 := m33_xor.port.y
    val m36 = if(share) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m36 := m36_xor.port.y

    //Stage 4
    val m37_xor = new Addition_TI(share, rep)
    m37_xor.port.x0 := m21_1
    m37_xor.port.x1 := m29.port.y
    val m38_xor = new Addition_TI(share, rep)
    m38_xor.port.x0 := m32.port.y
    m38_xor.port.x1 := m33
    val m39_xor = new Addition_TI(share, rep)
    m39_xor.port.x0 := m23_1
    m39_xor.port.x1 := m30.port.y
    val m40_xor = new Addition_TI(share, rep)
    m40_xor.port.x0 := m35.port.y
    m40_xor.port.x1 := m36
    val m41_xor = new Addition_TI(share, rep)
    m41_xor.port.x0 := m38_xor.port.y
    m41_xor.port.x1 := m40_xor.port.y
    val m42_xor = new Addition_TI(share, rep)
    m42_xor.port.x0 := m37_xor.port.y
    m42_xor.port.x1 := m39_xor.port.y
    val m43_xor = new Addition_TI(share, rep)
    m43_xor.port.x0 := m37_xor.port.y
    m43_xor.port.x1 := m38_xor.port.y
    val m44_xor = new Addition_TI(share, rep)
    m44_xor.port.x0 := m39_xor.port.y
    m44_xor.port.x1 := m40_xor.port.y
    val m45_xor = new Addition_TI(share, rep)
    m45_xor.port.x0 := m42_xor.port.y
    m45_xor.port.x1 := m41_xor.port.y
    val m46_mul = new Multiplication_TI_noReg(share, rep)
    m46_mul.port.x0 := m44_xor.port.y
    m46_mul.port.x1 := t6_2
    val m47_mul = new Multiplication_TI_noReg(share, rep)
    m47_mul.port.x0 := m40_xor.port.y
    m47_mul.port.x1 := t8_2
    val m48_mul = new Multiplication_TI_noReg(share, rep)
    m48_mul.port.x0 := m39_xor.port.y
    m48_mul.port.x1 := x7_2
    val m49_mul = new Multiplication_TI_noReg(share, rep)
    m49_mul.port.x0 := m43_xor.port.y
    m49_mul.port.x1 := t16_1
    val m50_mul = new Multiplication_TI_noReg(share, rep)
    m50_mul.port.x0 := m38_xor.port.y
    m50_mul.port.x1 := t9_2
    val m51_mul = new Multiplication_TI_noReg(share, rep)
    m51_mul.port.x0 := m37_xor.port.y
    m51_mul.port.x1 := t17_2
    val m52_mul = new Multiplication_TI_noReg(share, rep)
    m52_mul.port.x0 := m42_xor.port.y
    m52_mul.port.x1 := t15_2
    val m53_mul = new Multiplication_TI_noReg(share, rep)
    m53_mul.port.x0 := m45_xor.port.y
    m53_mul.port.x1 := t27_2
    val m54_mul = new Multiplication_TI_noReg(share, rep)
    m54_mul.port.x0 := m41_xor.port.y
    m54_mul.port.x1 := t10_2
    val m55_mul = new Multiplication_TI_noReg(share, rep)
    m55_mul.port.x0 := m44_xor.port.y
    m55_mul.port.x1 := t13_2
    val m56_mul = new Multiplication_TI_noReg(share, rep)
    m56_mul.port.x0 := m40_xor.port.y
    m56_mul.port.x1 := t23_2
    val m57_mul = new Multiplication_TI_noReg(share, rep)
    m57_mul.port.x0 := m39_xor.port.y
    m57_mul.port.x1 := t19_2
    val m58_mul = new Multiplication_TI_noReg(share, rep)
    m58_mul.port.x0 := m43_xor.port.y
    m58_mul.port.x1 := t3_2
    val m59_mul = new Multiplication_TI_noReg(share, rep)
    m59_mul.port.x0 := m38_xor.port.y
    m59_mul.port.x1 := t22_2
    val m60_mul = new Multiplication_TI_noReg(share, rep)
    m60_mul.port.x0 := m37_xor.port.y
    m60_mul.port.x1 := t20_2
    val m61_mul = new Multiplication_TI_noReg(share, rep)
    m61_mul.port.x0 := m42_xor.port.y
    m61_mul.port.x1 := t1_2
    val m62_mul = new Multiplication_TI_noReg(share, rep)
    m62_mul.port.x0 := m45_xor.port.y
    m62_mul.port.x1 := t4_2
    val m63_mul = new Multiplication_TI_noReg(share, rep)
    m63_mul.port.x0 := m41_xor.port.y
    m63_mul.port.x1 := t2_2
    val l0_xor = new Addition_TI(share, rep)
    l0_xor.port.x0 := m61_mul.port.y
    l0_xor.port.x1 := m62_mul.port.y
    val l1_xor = new Addition_TI(share, rep)
    l1_xor.port.x0 := m50_mul.port.y
    l1_xor.port.x1 := m56_mul.port.y
    val l2_xor = new Addition_TI(share, rep)
    l2_xor.port.x0 := m46_mul.port.y
    l2_xor.port.x1 := m48_mul.port.y
    val l3_xor = new Addition_TI(share, rep)
    l3_xor.port.x0 := m47_mul.port.y
    l3_xor.port.x1 := m55_mul.port.y
    val l4_xor = new Addition_TI(share, rep)
    l4_xor.port.x0 := m54_mul.port.y
    l4_xor.port.x1 := m58_mul.port.y
    val l5_xor = new Addition_TI(share, rep)
    l5_xor.port.x0 := m49_mul.port.y
    l5_xor.port.x1 := m61_mul.port.y
    val l6_xor = new Addition_TI(share, rep)
    l6_xor.port.x0 := m62_mul.port.y
    l6_xor.port.x1 := l5_xor.port.y
    val l7_xor = new Addition_TI(share, rep)
    l7_xor.port.x0 := m46_mul.port.y
    l7_xor.port.x1 := l3_xor.port.y
    val l8_xor = new Addition_TI(share, rep)
    l8_xor.port.x0 := m51_mul.port.y
    l8_xor.port.x1 := m59_mul.port.y
    val l9_xor = new Addition_TI(share, rep)
    l9_xor.port.x0 := m52_mul.port.y
    l9_xor.port.x1 := m53_mul.port.y
    val l10_xor = new Addition_TI(share, rep)
    l10_xor.port.x0 := m53_mul.port.y
    l10_xor.port.x1 := l4_xor.port.y
    val l11_xor = new Addition_TI(share, rep)
    l11_xor.port.x0 := m60_mul.port.y
    l11_xor.port.x1 := l2_xor.port.y
    val l12_xor = new Addition_TI(share, rep)
    l12_xor.port.x0 := m48_mul.port.y
    l12_xor.port.x1 := m51_mul.port.y
    val l13_xor = new Addition_TI(share, rep)
    l13_xor.port.x0 := m50_mul.port.y
    l13_xor.port.x1 := l0_xor.port.y
    val l14_xor = new Addition_TI(share, rep)
    l14_xor.port.x0 := m52_mul.port.y
    l14_xor.port.x1 := m61_mul.port.y
    val l15_xor = new Addition_TI(share, rep)
    l15_xor.port.x0 := m55_mul.port.y
    l15_xor.port.x1 := l1_xor.port.y
    val l16_xor = new Addition_TI(share, rep)
    l16_xor.port.x0 := m56_mul.port.y
    l16_xor.port.x1 := l0_xor.port.y
    val l17_xor = new Addition_TI(share, rep)
    l17_xor.port.x0 := m57_mul.port.y
    l17_xor.port.x1 := l1_xor.port.y
    val l18_xor = new Addition_TI(share, rep)
    l18_xor.port.x0 := m58_mul.port.y
    l18_xor.port.x1 := l8_xor.port.y
    val l19_xor = new Addition_TI(share, rep)
    l19_xor.port.x0 := m63_mul.port.y
    l19_xor.port.x1 := l4_xor.port.y
    val l20_xor = new Addition_TI(share, rep)
    l20_xor.port.x0 := l0_xor.port.y
    l20_xor.port.x1 := l1_xor.port.y
    val l21_xor = new Addition_TI(share, rep)
    l21_xor.port.x0 := l1_xor.port.y
    l21_xor.port.x1 := l7_xor.port.y
    val l22_xor = new Addition_TI(share, rep)
    l22_xor.port.x0 := l3_xor.port.y
    l22_xor.port.x1 := l12_xor.port.y
    val l23_xor = new Addition_TI(share, rep)
    l23_xor.port.x0 := l18_xor.port.y
    l23_xor.port.x1 := l2_xor.port.y
    val l24_xor = new Addition_TI(share, rep)
    l24_xor.port.x0 := l15_xor.port.y
    l24_xor.port.x1 := l9_xor.port.y
    val l25_xor = new Addition_TI(share, rep)
    l25_xor.port.x0 := l6_xor.port.y
    l25_xor.port.x1 := l10_xor.port.y
    val l26_xor = new Addition_TI(share, rep)
    l26_xor.port.x0 := l7_xor.port.y
    l26_xor.port.x1 := l9_xor.port.y
    val l27_xor = new Addition_TI(share, rep)
    l27_xor.port.x0 := l8_xor.port.y
    l27_xor.port.x1 := l10_xor.port.y
    val l28_xor = new Addition_TI(share, rep)
    l28_xor.port.x0 := l11_xor.port.y
    l28_xor.port.x1 := l14_xor.port.y
    val l29_xor = new Addition_TI(share, rep)
    l29_xor.port.x0 := l11_xor.port.y
    l29_xor.port.x1 := l17_xor.port.y

    val s0 = new Addition_TI(share, rep)
    s0.port.x0 := l6_xor.port.y
    s0.port.x1 := l24_xor.port.y
    out_y0 := s0.port.y
    val s1 = new Addition_Inv_TI(share, rep)
    s1.port.x0 := l16_xor.port.y
    s1.port.x1 := l26_xor.port.y
    out_y1 := s1.port.y
    val s2 = new Addition_Inv_TI(share, rep)
    s2.port.x0 := l19_xor.port.y
    s2.port.x1 := l28_xor.port.y
    out_y2 := s2.port.y
    val s3 = new Addition_TI(share, rep)
    s3.port.x0 := l6_xor.port.y
    s3.port.x1 := l21_xor.port.y
    out_y3 := s3.port.y
    val s4 = new Addition_TI(share, rep)
    s4.port.x0 := l20_xor.port.y
    s4.port.x1 := l22_xor.port.y
    out_y4 := s4.port.y
    val s5 = new Addition_TI(share, rep)
    s5.port.x0 := l25_xor.port.y
    s5.port.x1 := l29_xor.port.y
    out_y5 := s5.port.y
    val s6 = new Addition_Inv_TI(share, rep)
    s6.port.x0 := l13_xor.port.y
    s6.port.x1 := l27_xor.port.y
    out_y6 := s6.port.y
    val s7 = new Addition_Inv_TI(share, rep)
    s7.port.x0 := l6_xor.port.y
    s7.port.x1 := l23_xor.port.y
    out_y7 := s7.port.y

    for(i <- 0 to d-1){
        port.o(i)(7) := out_y0(i)
        port.o(i)(6) := out_y1(i)
        port.o(i)(5) := out_y2(i)
        port.o(i)(4) := out_y3(i)
        port.o(i)(3) := out_y4(i)
        port.o(i)(2) := out_y5(i)
        port.o(i)(1) := out_y6(i)
        port.o(i)(0) := out_y7(i)
    }
}