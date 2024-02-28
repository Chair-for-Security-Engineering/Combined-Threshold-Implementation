package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

class inv(n: Int) extends  Component{
    val port = new Bundle{
        val a = in UInt(n bits)
        val z = out UInt(n bits)
    }
    port.z := ~port.a
}

class xor(n: Int) extends  Component{
    val port = new Bundle{
        val a = in UInt(n bits)
        val b = in UInt(n bits)
        val z = out UInt(n bits)
    }
    port.z := port.a ^ port.b
}

class and(n: Int) extends  Component{
    val port = new Bundle{
        val a = in UInt(n bits)
        val b = in UInt(n bits)
        val z = out UInt(n bits)
    }
    port.z := port.a & port.b
}

class Shared_Not(num_shares: Int, num_rep: Int) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val a = in Vec(UInt(num_rep bits), num_shares) 
        val z =  out Vec(UInt(num_rep bits), num_shares) 
    }
    port.z(0) := ~port.a(0)
    for(i <- 1 to num_shares-1){
        port.z(i) := port.a(i)
    }
}

class Shared_Xor(num_shares: Int, num_rep: Int) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val a = in Vec(UInt(num_rep bits), num_shares) 
        val b = in Vec(UInt(num_rep bits), num_shares) 
        val z =  out Vec(UInt(num_rep bits), num_shares) 
    }
    for(i <- 0 to num_shares-1){
        port.z(i) := port.a(i) ^ port.b(i)
    }
}

class Shared_Xnor(num_shares: Int, num_rep: Int) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val a = in Vec(UInt(num_rep bits), num_shares) 
        val b = in Vec(UInt(num_rep bits), num_shares) 
        val z =  out Vec(UInt(num_rep bits), num_shares) 
    }
    port.z(0) := ~(port.a(0) ^ port.b(0))
    for(i <- 1 to num_shares-1){
        port.z(i) := port.a(i) ^ port.b(i)
    }
}

class CPC1(num_shares: Int, num_rep: Int) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val a = in Vec(UInt(num_rep bits), num_shares) 
        val b = in Vec(UInt(num_rep bits), num_shares) 
        val rand = in Vec(Bool(), num_shares*(num_shares-1))
        val z =  out Vec(UInt(num_rep bits), num_shares) 
    }

    val mapping_d = Map((0,0) -> 0)
    var rand_index = 0
    for (i <- 0 to num_shares-1){
        for (j <- i+1 to num_shares-1){
            mapping_d += ((i,j) -> rand_index)
            mapping_d += ((j,i) -> rand_index)
            rand_index = rand_index + 1 
        }
    }

    //Refresh
    var r0 = Vec(UInt(num_rep bits), num_shares*(num_shares-1)/2)
    for(i <- 0 to num_shares*(num_shares-1)/2-1){
        for(l <- 0 to num_rep-1){
            r0(i)(l) := port.rand(i)
        }
    }
    var v_tilde = Vec(UInt(num_rep bits), num_shares)
    for(i <- 0 to num_shares-1){
        val ref = Vec(UInt(num_rep bits), num_shares)
        var index_ref = 1
        ref(0) := port.b(i)
        for(j <- 0 to num_shares-1){
            if(i != j){
                val xxx = new xor(num_rep)
                xxx.port.a <> ref(index_ref-1)
                xxx.port.b <> r0(mapping_d(i,j))
                xxx.port.z <> ref(index_ref)

                index_ref = index_ref+1
            }
        } 
        v_tilde(i) := ref(index_ref-1)
    }  
    //Correction
    var v = Reg(Vec(UInt(num_rep bits), num_shares))
    if(num_rep>1){
        for(l <- 0 to num_rep-1){
            for(i <- 0 to num_shares-1){
                val maj = new Majority(1)
                maj.port.i <> v_tilde(i)
                maj.port.o <> v(i)(l)
            }
        }
    }else{
        v := v_tilde
    }

    //Multiplication
    var r1 = Vec(UInt(num_rep bits), num_shares*(num_shares-1)/2)
    for(i <- 0 to num_shares*(num_shares-1)/2-1){
        for(l <- 0 to num_rep-1){
            r1(i)(l) := port.rand(num_shares*(num_shares-1)/2+i)
        }
    }
    var z = Reg(Vec(Vec(UInt(num_rep bits), num_shares), num_shares))
    for(i <- 0 to num_shares-1){
        for(j <- 0 to num_shares-1){
            if(i == j){
                val and_gate = new and(num_rep)
                and_gate.port.a := port.a(i)
                and_gate.port.b := v(j)
                z(i)(j) := and_gate.port.z
            }else{
                val and_gate = new and(num_rep)
                and_gate.port.a := port.a(i)
                and_gate.port.b := v(j)
                val xor_gate = new xor(num_rep)
                xor_gate.port.a := and_gate.port.z
                xor_gate.port.b := r1(mapping_d(i,j))

                if(num_rep>1){
                    for(l <- 0 to num_rep-1){
                        val maj = new Majority(1)
                        maj.port.i <> xor_gate.port.z
                        maj.port.o <> z(i)(j)(l)
                    }
                }else{
                    z(i)(j) := xor_gate.port.z
                }
            }
        }
    }

    //Compression
    for(i <- 0 to num_shares-1){
        val temp = Vec(UInt(num_rep bits), num_shares)
        temp(0) := z(i)(i)
        var temp_index = 1
        for(j <- 0 to num_shares-1){
            if(i != j){
                val xor_gate = new xor(num_rep)
                xor_gate.port.a := temp(temp_index-1)
                xor_gate.port.b := z(i)(j)
                temp(temp_index) := xor_gate.port.z
                temp_index = temp_index+1
            }
        }
        port.z(i) := temp(temp_index-1)
    }
}

class CPC1_Ind_d1_k1 extends Component{
    val num_shares = 2
    val num_rep = 3
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val a = in Vec(UInt(num_rep bits), num_shares) 
        val b = in Vec(UInt(num_rep bits), num_shares) 
        val rand = in Vec(Bool(), 4)
        val z =  out Vec(UInt(num_rep bits), num_shares) 
    }
    
    val rand = Vec(UInt(num_rep bits), 4)
    for(bit <- 0 to 3){
        for(l <- 0 to 2){
            rand(bit)(l) := port.rand(bit)
        }
    }

    // //Refresh
    var v_tilde = Vec(UInt(num_rep bits), num_shares)
    // v_tilde = b(0) ^ r(0) ^ r(1) 
    val xor_gate_0 = new xor(num_rep)
    xor_gate_0.port.a := port.b(0)
    xor_gate_0.port.b := rand(0)
    val xor_gate_1 = new xor(num_rep)
    xor_gate_1.port.a := xor_gate_0.port.z
    xor_gate_1.port.b := rand(1)
    v_tilde(0) := xor_gate_1.port.z
    // v_tilde = b(1) ^ r(0) ^ r(1) 
    val xor_gate_2 = new xor(num_rep)
    xor_gate_2.port.a := port.b(1)
    xor_gate_2.port.b := rand(0)
    val xor_gate_3 = new xor(num_rep)
    xor_gate_3.port.a := xor_gate_2.port.z
    xor_gate_3.port.b := rand(1)
    v_tilde(1) := xor_gate_3.port.z

    //Correction
    var v = Reg(Vec(UInt(num_rep bits), num_shares))
    if(num_rep>1){
        for(l <- 0 to num_rep-1){
            for(i <- 0 to num_shares-1){
                val maj = new Majority(1)
                maj.port.i <> v_tilde(i)
                maj.port.o <> v(i)(l)
            }
        }
    }else{
        v := v_tilde
    }

    //Multiplication
    var z = Reg(Vec(Vec(UInt(num_rep bits), num_shares), num_shares))
    //z(0)(0) = a(0) & v(0)
    val and_gate_z00 = new and(num_rep)
    and_gate_z00.port.a := port.a(0)
    and_gate_z00.port.b := v(0)
    z(0)(0) := and_gate_z00.port.z
    //z(1)(1) = a(1) & v(1)
    val and_gate_z11 = new and(num_rep)
    and_gate_z11.port.a := port.a(1)
    and_gate_z11.port.b := v(1)
    z(1)(1) := and_gate_z11.port.z
    //z(0)(1) = Maj[a(0) & v(1) ^ r(2) ^ r(3)]
    val and_gate_z01 = new and(num_rep)
    and_gate_z01.port.a := port.a(0)
    and_gate_z01.port.b := v(1)
    val xor_gate_z01_0 = new xor(num_rep)
    xor_gate_z01_0.port.a := and_gate_z01.port.z 
    xor_gate_z01_0.port.b := rand(2)
    val xor_gate_z01_1 = new xor(num_rep)
    xor_gate_z01_1.port.a := xor_gate_z01_0.port.z 
    xor_gate_z01_1.port.b := rand(3)
    val maj_z01_0 = new Majority(1)
    maj_z01_0.port.i := xor_gate_z01_1.port.z
    z(0)(1)(0) := maj_z01_0.port.o
    val maj_z01_1 = new Majority(1)
    maj_z01_1.port.i := xor_gate_z01_1.port.z
    z(0)(1)(1) := maj_z01_1.port.o
    val maj_z01_2 = new Majority(1)
    maj_z01_2.port.i := xor_gate_z01_1.port.z
    z(0)(1)(2) := maj_z01_2.port.o
    //z(1)(0) = Maj[a(1) & v(0) ^ r(2) ^ r(3)]
    val and_gate_z10 = new and(num_rep)
    and_gate_z10.port.a := port.a(1)
    and_gate_z10.port.b := v(0)
    val xor_gate_z10_0 = new xor(num_rep)
    xor_gate_z10_0.port.a := and_gate_z10.port.z 
    xor_gate_z10_0.port.b := rand(2)
    val xor_gate_z10_1 = new xor(num_rep)
    xor_gate_z10_1.port.a := xor_gate_z10_0.port.z 
    xor_gate_z10_1.port.b := rand(3)
    val maj_z10_0 = new Majority(1)
    maj_z10_0.port.i := xor_gate_z10_1.port.z
    z(1)(0)(0) := maj_z10_0.port.o
    val maj_z10_1 = new Majority(1)
    maj_z10_1.port.i := xor_gate_z10_1.port.z
    z(1)(0)(1) := maj_z10_1.port.o
    val maj_z10_2 = new Majority(1)
    maj_z10_2.port.i := xor_gate_z10_1.port.z
    z(1)(0)(2) := maj_z10_2.port.o

    //Compression
    val xor_gate_z00_z01 = new xor(num_rep)
    xor_gate_z00_z01.port.a := z(0)(0)
    xor_gate_z00_z01.port.b := z(0)(1)
    port.z(0) := xor_gate_z00_z01.port.z

    val xor_gate_z11_z10 = new xor(num_rep)
    xor_gate_z11_z10.port.a := z(1)(1)
    xor_gate_z11_z10.port.b := z(1)(0)
    port.z(1) := xor_gate_z11_z10.port.z
}

class Shared_And(num_shares: Int, num_rep: Int, num_rand: Int, gadget:String) extends Component{
    /* Port definitions */
    val port = new Bundle {
        /* Data */
        val a = in Vec(UInt(num_rep bits), num_shares) 
        val b = in Vec(UInt(num_rep bits), num_shares) 
        val rand = in Vec(Bool(), num_rand)
        val z =  out Vec(UInt(num_rep bits), num_shares) 
    }
    
    if(gadget == "CPC1"){
        if((num_shares == 2) & (num_rep == 3)){
            val cpc = new CPC1_Ind_d1_k1()
            cpc.port.a := port.a 
            cpc.port.b := port.b 
            cpc.port.rand := port.rand 
            port.z := cpc.port.z
        }else{
            val cpc = new CPC1(num_shares, num_rep)
            cpc.port.a := port.a 
            cpc.port.b := port.b 
            cpc.port.rand := port.rand 
            port.z := cpc.port.z 
        }
    }
}

class Sbox_AES_BoyarPeralta_Gadgets(d: Int, n:Int, rand_per_gadget:Int, gadget:String) extends Component{
    val num_and = 34
    // val rand_per_gadget = num_rand/num_and
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val r = in Vec(Bool(), num_and*rand_per_gadget)
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
    val out_y0 = Vec(UInt(n bits), d)
    var out_y1 = Vec(UInt(n bits), d)
    var out_y2 = Vec(UInt(n bits), d)
    var out_y3 = Vec(UInt(n bits), d)
    var out_y4 = Vec(UInt(n bits), d)
    var out_y5 = Vec(UInt(n bits), d)
    var out_y6 = Vec(UInt(n bits), d)
    var out_y7 = Vec(UInt(n bits), d)

    val rand = Vec(Vec(Bool(), rand_per_gadget), num_and)
    for(idx_gadget <- 0 to num_and-1){
        for(idx_rand <- 0 to rand_per_gadget-1){
            rand(idx_gadget)(idx_rand) := port.r(idx_gadget*rand_per_gadget+idx_rand)
        }
    }
    
    //Stage 1
    val t1_0_xor = new Shared_Xor(d, n)
    t1_0_xor.port.a := in_x0
    t1_0_xor.port.b := in_x3 
    val t2_0_xor = new Shared_Xor(d, n)
    t2_0_xor.port.a := in_x0
    t2_0_xor.port.b := in_x5
    val t3_0_xor = new Shared_Xor(d, n)
    t3_0_xor.port.a := in_x0
    t3_0_xor.port.b := in_x6 
    val t4_0_xor = new Shared_Xor(d, n)
    t4_0_xor.port.a := in_x3
    t4_0_xor.port.b := in_x5
    val t5_0_xor = new Shared_Xor(d, n)
    t5_0_xor.port.a := in_x4
    t5_0_xor.port.b := in_x6
    val t6_0_xor = new Shared_Xor(d, n)
    t6_0_xor.port.a := t1_0_xor.port.z
    t6_0_xor.port.b := t5_0_xor.port.z
    val t7_0_xor = new Shared_Xor(d, n)
    t7_0_xor.port.a := in_x1
    t7_0_xor.port.b := in_x2
    val t8_0_xor = new Shared_Xor(d, n)
    t8_0_xor.port.a := in_x7
    t8_0_xor.port.b := t6_0_xor.port.z
    val t9_0_xor = new Shared_Xor(d, n)
    t9_0_xor.port.a := in_x7
    t9_0_xor.port.b := t7_0_xor.port.z
    val t10_0_xor = new Shared_Xor(d, n)
    t10_0_xor.port.a := t6_0_xor.port.z
    t10_0_xor.port.b := t7_0_xor.port.z
    val t11_0_xor = new Shared_Xor(d, n)
    t11_0_xor.port.a := in_x1
    t11_0_xor.port.b := in_x5
    val t12_0_xor = new Shared_Xor(d, n)
    t12_0_xor.port.a := in_x2
    t12_0_xor.port.b := in_x5
    val t13_0_xor = new Shared_Xor(d, n)
    t13_0_xor.port.a := t3_0_xor.port.z
    t13_0_xor.port.b := t4_0_xor.port.z
    val t14_0_xor = new Shared_Xor(d, n)
    t14_0_xor.port.a := t6_0_xor.port.z
    t14_0_xor.port.b := t11_0_xor.port.z
    val t15_0_xor = new Shared_Xor(d, n)
    t15_0_xor.port.a := t5_0_xor.port.z
    t15_0_xor.port.b := t11_0_xor.port.z
    val t16_0_xor = new Shared_Xor(d, n)
    t16_0_xor.port.a := t5_0_xor.port.z
    t16_0_xor.port.b := t12_0_xor.port.z
    val t17_0_xor = new Shared_Xor(d, n)
    t17_0_xor.port.a := t9_0_xor.port.z
    t17_0_xor.port.b := t16_0_xor.port.z
    val t18_0_xor = new Shared_Xor(d, n)
    t18_0_xor.port.a := in_x3
    t18_0_xor.port.b := in_x7
    val t19_0_xor = new Shared_Xor(d, n)
    t19_0_xor.port.a := t7_0_xor.port.z
    t19_0_xor.port.b := t18_0_xor.port.z
    val t20_0_xor = new Shared_Xor(d, n)
    t20_0_xor.port.a := t1_0_xor.port.z
    t20_0_xor.port.b := t19_0_xor.port.z
    val t21_0_xor = new Shared_Xor(d, n)
    t21_0_xor.port.a := in_x6
    t21_0_xor.port.b := in_x7
    val t22_0_xor = new Shared_Xor(d, n)
    t22_0_xor.port.a := t7_0_xor.port.z
    t22_0_xor.port.b := t21_0_xor.port.z
    val t23_0_xor = new Shared_Xor(d, n)
    t23_0_xor.port.a := t2_0_xor.port.z
    t23_0_xor.port.b := t22_0_xor.port.z
    val t24_0_xor = new Shared_Xor(d, n)
    t24_0_xor.port.a := t2_0_xor.port.z
    t24_0_xor.port.b := t10_0_xor.port.z
    val t25_0_xor = new Shared_Xor(d, n)
    t25_0_xor.port.a := t20_0_xor.port.z
    t25_0_xor.port.b := t17_0_xor.port.z
    val t26_0_xor = new Shared_Xor(d, n)
    t26_0_xor.port.a := t3_0_xor.port.z
    t26_0_xor.port.b := t16_0_xor.port.z
    val t27_0_xor = new Shared_Xor(d, n)
    t27_0_xor.port.a := t1_0_xor.port.z
    t27_0_xor.port.b := t12_0_xor.port.z
    
    val t1_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1_1 := t1_0_xor.port.z
    val t2_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2_1 := t2_0_xor.port.z
    val t3_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3_1 := t3_0_xor.port.z
    val t4_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4_1 := t4_0_xor.port.z
    val t13_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13_1 := t13_0_xor.port.z
    val t19_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19_1 := t19_0_xor.port.z
    val t20_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20_1 := t20_0_xor.port.z
    val t22_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22_1 := t22_0_xor.port.z
    val t23_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23_1 := t23_0_xor.port.z
       
    val m1_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m1_2.port.a := t13_1
    m1_2.port.b := t6_0_xor.port.z
    m1_2.port.rand := rand(0)
    val m2_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m2_2.port.a := t23_1
    m2_2.port.b := t8_0_xor.port.z
    m2_2.port.rand := rand(1)
    val m4_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m4_2.port.a := t19_1
    m4_2.port.b := in_x7
    m4_2.port.rand := rand(2)
    val m6_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m6_2.port.a := t3_1
    m6_2.port.b := t16_0_xor.port.z
    m6_2.port.rand := rand(3)
    val m7_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m7_2.port.a := t22_1
    m7_2.port.b := t9_0_xor.port.z
    m7_2.port.rand := rand(4)
    val m9_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m9_2.port.a := t20_1
    m9_2.port.b := t17_0_xor.port.z
    m9_2.port.rand := rand(5)
    val m11_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m11_2.port.a := t1_1
    m11_2.port.b := t15_0_xor.port.z
    m11_2.port.rand := rand(6)
    val m12_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m12_2.port.a := t4_1
    m12_2.port.b := t27_0_xor.port.z
    m12_2.port.rand := rand(7)
    val m14_2 = new Shared_And(d, n, rand_per_gadget, gadget)
    m14_2.port.a := t2_1
    m14_2.port.b := t10_0_xor.port.z
    m14_2.port.rand := rand(8)

    val x7_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7_1 := in_x7
    val t6_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6_1 := t6_0_xor.port.z
    val t7_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t7_1 := t7_0_xor.port.z
    val t8_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8_1 := t8_0_xor.port.z
    val t9_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9_1 := t9_0_xor.port.z
    val t10_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10_1 := t10_0_xor.port.z
    val t14_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t14_1 := t14_0_xor.port.z
    val t15_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15_1 := t15_0_xor.port.z
    val t16_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16_1 := t16_0_xor.port.z
    val t17_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17_1 := t17_0_xor.port.z
    val t24_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t24_1 := t24_0_xor.port.z
    val t25_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t25_1 := t25_0_xor.port.z
    val t26_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t26_1 := t26_0_xor.port.z
    val t27_1 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27_1 := t27_0_xor.port.z

    val x7_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7_2 := x7_1
    val t1_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1_2 := t1_1
    val t2_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2_2 := t2_1
    val t3_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3_2 := t3_1
    val t4_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4_2 := t4_1
    val t6_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6_2 := t6_1
    val t7_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t7_2 := t7_1
    val t8_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8_2 := t8_1
    val t9_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9_2 := t9_1
    val t10_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10_2 := t10_1
    val t13_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13_2 := t13_1
    val t14_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t14_2 := t14_1
    val t15_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15_2 := t15_1
    val t16_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16_2 := t16_1
    val t17_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17_2 := t17_1
    val t19_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19_2 := t19_1
    val t20_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20_2 := t20_1
     val t22_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22_2 := t22_1
    val t23_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23_2 := t23_1
    val t24_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t24_2 := t24_1
    val t25_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t25_2 := t25_1
    val t26_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t26_2 := t26_1
    val t27_2 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27_2 := t27_1

    //Stage 2
    val m3_2_xor = new Shared_Xor(d, n)
    m3_2_xor.port.a := t14_2
    m3_2_xor.port.b := m1_2.port.z
    val m5_2_xor = new Shared_Xor(d, n)
    m5_2_xor.port.a := m4_2.port.z
    m5_2_xor.port.b := m1_2.port.z
    val m8_2_xor = new Shared_Xor(d, n)
    m8_2_xor.port.a := t26_2
    m8_2_xor.port.b := m6_2.port.z
    val m10_2_xor = new Shared_Xor(d, n)
    m10_2_xor.port.a := m9_2.port.z
    m10_2_xor.port.b := m6_2.port.z
    val m13_2_xor = new Shared_Xor(d, n)
    m13_2_xor.port.a := m12_2.port.z
    m13_2_xor.port.b := m11_2.port.z
    val m15_2_xor = new Shared_Xor(d, n)
    m15_2_xor.port.a := m14_2.port.z
    m15_2_xor.port.b := m11_2.port.z
    val m16_2_xor = new Shared_Xor(d, n)
    m16_2_xor.port.a := m3_2_xor.port.z
    m16_2_xor.port.b := m2_2.port.z
    val m17_2_xor = new Shared_Xor(d, n)
    m17_2_xor.port.a := m5_2_xor.port.z
    m17_2_xor.port.b := t24_2
    val m18_2_xor = new Shared_Xor(d, n)
    m18_2_xor.port.a := m8_2_xor.port.z
    m18_2_xor.port.b := m7_2.port.z
    val m19_2_xor = new Shared_Xor(d, n)
    m19_2_xor.port.a := m10_2_xor.port.z
    m19_2_xor.port.b := m15_2_xor.port.z
    val m20_2_xor = new Shared_Xor(d, n)
    m20_2_xor.port.a := m16_2_xor.port.z
    m20_2_xor.port.b := m13_2_xor.port.z
    val m21_2_xor = new Shared_Xor(d, n)
    m21_2_xor.port.a := m17_2_xor.port.z
    m21_2_xor.port.b := m15_2_xor.port.z
    val m22_2_xor = new Shared_Xor(d, n)
    m22_2_xor.port.a := m18_2_xor.port.z
    m22_2_xor.port.b := m13_2_xor.port.z
    val m23_2_xor = new Shared_Xor(d, n)
    m23_2_xor.port.a := m19_2_xor.port.z
    m23_2_xor.port.b := t25_2
    val m24_2_xor = new Shared_Xor(d, n)
    m24_2_xor.port.a := m22_2_xor.port.z
    m24_2_xor.port.b := m23_2_xor.port.z
    val m27_2_xor = new Shared_Xor(d, n)
    m27_2_xor.port.a := m21_2_xor.port.z
    m27_2_xor.port.b := m20_2_xor.port.z
    
    val m22_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m22_3 := m22_2_xor.port.z
    val m23_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m23_3 := m23_2_xor.port.z
    
    val m25_4 = new Shared_And(d, n, rand_per_gadget, gadget)
    m25_4.port.a := m22_3
    m25_4.port.b := m20_2_xor.port.z
    m25_4.port.rand := rand(9)
    val m31_4 = new Shared_And(d, n, rand_per_gadget, gadget)
    m31_4.port.a := m23_3
    m31_4.port.b := m20_2_xor.port.z
    m31_4.port.rand := rand(10)
    val m34_4 = new Shared_And(d, n, rand_per_gadget, gadget)
    m34_4.port.a := m22_3
    m34_4.port.b := m21_2_xor.port.z
    m34_4.port.rand := rand(11)

    val x7_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7_3 := x7_2
    val t1_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1_3 := t1_2
    val t2_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2_3 := t2_2
    val t3_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3_3 := t3_2
    val t4_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4_3 := t4_2
    val t6_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6_3 := t6_2
    val t8_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8_3 := t8_2
    val t9_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9_3 := t9_2
    val t10_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10_3 := t10_2
    val t13_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13_3 := t13_2
    val t15_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15_3 := t15_2
    val t16_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16_3 := t16_2
    val t17_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17_3 := t17_2
    val t19_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19_3 := t19_2
    val t20_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20_3 := t20_2
    val t22_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22_3 := t22_2
    val t23_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23_3 := t23_2
    val t27_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27_3 := t27_2
    val m21_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m21_3 := m21_2_xor.port.z
    val m24_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m24_3 := m24_2_xor.port.z
    val m27_3 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m27_3 := m27_2_xor.port.z

    val x7_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    x7_4 := x7_3
    val t1_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t1_4 := t1_3
    val t2_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t2_4 := t2_3
    val t3_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t3_4 := t3_3
    val t4_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t4_4 := t4_3
    val t6_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t6_4 := t6_3
    val t8_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t8_4 := t8_3
    val t9_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t9_4 := t9_3
    val t10_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t10_4 := t10_3
    val t13_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t13_4 := t13_3
    val t15_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t15_4 := t15_3
    val t16_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t16_4 := t16_3
    val t17_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t17_4 := t17_3
    val t19_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t19_4 := t19_3
    val t20_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t20_4 := t20_3
    val t22_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t22_4 := t22_3
    val t23_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t23_4 := t23_3
    val t27_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    t27_4 := t27_3
    val m21_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m21_4 := m21_3
    val m23_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m23_4 := m23_3
    val m24_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m24_4 := m24_3
    val m27_4 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m27_4 := m27_3

    //Stage 3
    val m26_4_xor = new Shared_Xor(d, n)
    m26_4_xor.port.a := m21_4
    m26_4_xor.port.b := m25_4.port.z
    val m28_4_xor = new Shared_Xor(d, n)
    m28_4_xor.port.a := m23_4
    m28_4_xor.port.b := m25_4.port.z
    val m33_4_xor = new Shared_Xor(d, n)
    m33_4_xor.port.a := m27_4
    m33_4_xor.port.b := m25_4.port.z
    val m36_4_xor = new Shared_Xor(d, n)
    m36_4_xor.port.a := m24_4
    m36_4_xor.port.b := m25_4.port.z

    val m29_5 = new Shared_And(d, n, rand_per_gadget, gadget)
    m29_5.port.b := m27_3
    m29_5.port.a := m28_4_xor.port.z
    m29_5.port.rand := rand(12)
    val m30_5 = new Shared_And(d, n, rand_per_gadget, gadget)
    m30_5.port.b := m24_3
    m30_5.port.a := m26_4_xor.port.z
    m30_5.port.rand := rand(13)
    val m32_5 = new Shared_And(d, n, rand_per_gadget, gadget)
    m32_5.port.b := m27_3
    m32_5.port.a := m31_4.port.z
    m32_5.port.rand := rand(14)
    val m35_5 = new Shared_And(d, n, rand_per_gadget, gadget)
    m35_5.port.b := m24_3
    m35_5.port.a := m34_4.port.z
    m35_5.port.rand := rand(15)
    
    val m21_5 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m21_5 := m21_4
    val m23_5 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m23_5 := m23_4
    val m33_5 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m33_5 := m33_4_xor.port.z
    val m36_5 = if(d > 1) Reg(Vec(UInt(n bits), d)) else Vec(UInt(n bits), d)
    m36_5 := m36_4_xor.port.z

    //Stage 4
    val m37_5_xor = new Shared_Xor(d, n)
    m37_5_xor.port.a := m21_5
    m37_5_xor.port.b := m29_5.port.z
    val m38_5_xor = new Shared_Xor(d, n)
    m38_5_xor.port.a := m32_5.port.z
    m38_5_xor.port.b := m33_5
    val m39_5_xor = new Shared_Xor(d, n)
    m39_5_xor.port.a := m23_5
    m39_5_xor.port.b := m30_5.port.z
    val m40_5_xor = new Shared_Xor(d, n)
    m40_5_xor.port.a := m35_5.port.z
    m40_5_xor.port.b := m36_5
    val m41_5_xor = new Shared_Xor(d, n)
    m41_5_xor.port.a := m38_5_xor.port.z
    m41_5_xor.port.b := m40_5_xor.port.z
    val m42_5_xor = new Shared_Xor(d, n)
    m42_5_xor.port.a := m37_5_xor.port.z
    m42_5_xor.port.b := m39_5_xor.port.z
    val m43_5_xor = new Shared_Xor(d, n)
    m43_5_xor.port.a := m37_5_xor.port.z
    m43_5_xor.port.b := m38_5_xor.port.z
    val m44_5_xor = new Shared_Xor(d, n)
    m44_5_xor.port.a := m39_5_xor.port.z
    m44_5_xor.port.b := m40_5_xor.port.z
    val m45_5_xor = new Shared_Xor(d, n)
    m45_5_xor.port.a := m42_5_xor.port.z
    m45_5_xor.port.b := m41_5_xor.port.z

    val m46_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m46_6_mul.port.a := m44_5_xor.port.z
    m46_6_mul.port.b := t6_4
    m46_6_mul.port.rand := rand(16)
    val m47_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m47_6_mul.port.a := m40_5_xor.port.z
    m47_6_mul.port.b := t8_4
    m47_6_mul.port.rand := rand(17)
    val m48_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m48_6_mul.port.a := m39_5_xor.port.z
    m48_6_mul.port.b := x7_4
    m48_6_mul.port.rand := rand(18)
    val m49_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m49_6_mul.port.a := m43_5_xor.port.z
    m49_6_mul.port.b := t16_4
    m49_6_mul.port.rand := rand(19)
    val m50_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m50_6_mul.port.a := m38_5_xor.port.z
    m50_6_mul.port.b := t9_4
    m50_6_mul.port.rand := rand(20)
    val m51_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m51_6_mul.port.a := m37_5_xor.port.z
    m51_6_mul.port.b := t17_4
    m51_6_mul.port.rand := rand(21)
    val m52_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m52_6_mul.port.a := m42_5_xor.port.z
    m52_6_mul.port.b := t15_4
    m52_6_mul.port.rand := rand(22)
    val m53_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m53_6_mul.port.a := m45_5_xor.port.z
    m53_6_mul.port.b := t27_4
    m53_6_mul.port.rand := rand(23)
    val m54_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m54_6_mul.port.a := m41_5_xor.port.z
    m54_6_mul.port.b := t10_4
    m54_6_mul.port.rand := rand(24)
    val m55_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m55_6_mul.port.a := m44_5_xor.port.z
    m55_6_mul.port.b := t13_4
    m55_6_mul.port.rand := rand(25)
    val m56_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m56_6_mul.port.a := m40_5_xor.port.z
    m56_6_mul.port.b := t23_4
    m56_6_mul.port.rand := rand(26)
    val m57_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m57_6_mul.port.a := m39_5_xor.port.z
    m57_6_mul.port.b := t19_4
    m57_6_mul.port.rand := rand(27)
    val m58_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m58_6_mul.port.a := m43_5_xor.port.z
    m58_6_mul.port.b := t3_4
    m58_6_mul.port.rand := rand(28)
    val m59_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m59_6_mul.port.a := m38_5_xor.port.z
    m59_6_mul.port.b := t22_4
    m59_6_mul.port.rand := rand(29)
    val m60_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m60_6_mul.port.a := m37_5_xor.port.z
    m60_6_mul.port.b := t20_4
    m60_6_mul.port.rand := rand(30)
    val m61_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m61_6_mul.port.a := m42_5_xor.port.z
    m61_6_mul.port.b := t1_4
    m61_6_mul.port.rand := rand(31)
    val m62_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m62_6_mul.port.a := m45_5_xor.port.z
    m62_6_mul.port.b := t4_4
    m62_6_mul.port.rand := rand(32)
    val m63_6_mul = new Shared_And(d, n, rand_per_gadget, gadget)
    m63_6_mul.port.a := m41_5_xor.port.z
    m63_6_mul.port.b := t2_4
    m63_6_mul.port.rand := rand(33)
    val l0_6_xor = new Shared_Xor(d, n)
    l0_6_xor.port.a := m61_6_mul.port.z
    l0_6_xor.port.b := m62_6_mul.port.z
    val l1_6_xor = new Shared_Xor(d, n)
    l1_6_xor.port.a := m50_6_mul.port.z
    l1_6_xor.port.b := m56_6_mul.port.z
    val l2_6_xor = new Shared_Xor(d, n)
    l2_6_xor.port.a := m46_6_mul.port.z
    l2_6_xor.port.b := m48_6_mul.port.z
    val l3_6_xor = new Shared_Xor(d, n)
    l3_6_xor.port.a := m47_6_mul.port.z
    l3_6_xor.port.b := m55_6_mul.port.z
    val l4_6_xor = new Shared_Xor(d, n)
    l4_6_xor.port.a := m54_6_mul.port.z
    l4_6_xor.port.b := m58_6_mul.port.z
    val l5_6_xor = new Shared_Xor(d, n)
    l5_6_xor.port.a := m49_6_mul.port.z
    l5_6_xor.port.b := m61_6_mul.port.z
    val l6_6_xor = new Shared_Xor(d, n)
    l6_6_xor.port.a := m62_6_mul.port.z
    l6_6_xor.port.b := l5_6_xor.port.z
    val l7_6_xor = new Shared_Xor(d, n)
    l7_6_xor.port.a := m46_6_mul.port.z
    l7_6_xor.port.b := l3_6_xor.port.z
    val l8_6_xor = new Shared_Xor(d, n)
    l8_6_xor.port.a := m51_6_mul.port.z
    l8_6_xor.port.b := m59_6_mul.port.z
    val l9_6_xor = new Shared_Xor(d, n)
    l9_6_xor.port.a := m52_6_mul.port.z
    l9_6_xor.port.b := m53_6_mul.port.z
    val l10_6_xor = new Shared_Xor(d, n)
    l10_6_xor.port.a := m53_6_mul.port.z
    l10_6_xor.port.b := l4_6_xor.port.z
    val l11_6_xor = new Shared_Xor(d, n)
    l11_6_xor.port.a := m60_6_mul.port.z
    l11_6_xor.port.b := l2_6_xor.port.z
    val l12_6_xor = new Shared_Xor(d, n)
    l12_6_xor.port.a := m48_6_mul.port.z
    l12_6_xor.port.b := m51_6_mul.port.z
    val l13_6_xor = new Shared_Xor(d, n)
    l13_6_xor.port.a := m50_6_mul.port.z
    l13_6_xor.port.b := l0_6_xor.port.z
    val l14_6_xor = new Shared_Xor(d, n)
    l14_6_xor.port.a := m52_6_mul.port.z
    l14_6_xor.port.b := m61_6_mul.port.z
    val l15_6_xor = new Shared_Xor(d, n)
    l15_6_xor.port.a := m55_6_mul.port.z
    l15_6_xor.port.b := l1_6_xor.port.z
    val l16_6_xor = new Shared_Xor(d, n)
    l16_6_xor.port.a := m56_6_mul.port.z
    l16_6_xor.port.b := l0_6_xor.port.z
    val l17_6_xor = new Shared_Xor(d, n)
    l17_6_xor.port.a := m57_6_mul.port.z
    l17_6_xor.port.b := l1_6_xor.port.z
    val l18_6_xor = new Shared_Xor(d, n)
    l18_6_xor.port.a := m58_6_mul.port.z
    l18_6_xor.port.b := l8_6_xor.port.z
    val l19_6_xor = new Shared_Xor(d, n)
    l19_6_xor.port.a := m63_6_mul.port.z
    l19_6_xor.port.b := l4_6_xor.port.z
    val l20_6_xor = new Shared_Xor(d, n)
    l20_6_xor.port.a := l0_6_xor.port.z
    l20_6_xor.port.b := l1_6_xor.port.z
    val l21_6_xor = new Shared_Xor(d, n)
    l21_6_xor.port.a := l1_6_xor.port.z
    l21_6_xor.port.b := l7_6_xor.port.z
    val l22_6_xor = new Shared_Xor(d, n)
    l22_6_xor.port.a := l3_6_xor.port.z
    l22_6_xor.port.b := l12_6_xor.port.z
    val l23_6_xor = new Shared_Xor(d, n)
    l23_6_xor.port.a := l18_6_xor.port.z
    l23_6_xor.port.b := l2_6_xor.port.z
    val l24_6_xor = new Shared_Xor(d, n)
    l24_6_xor.port.a := l15_6_xor.port.z
    l24_6_xor.port.b := l9_6_xor.port.z
    val l25_6_xor = new Shared_Xor(d, n)
    l25_6_xor.port.a := l6_6_xor.port.z
    l25_6_xor.port.b := l10_6_xor.port.z
    val l26_6_xor = new Shared_Xor(d, n)
    l26_6_xor.port.a := l7_6_xor.port.z
    l26_6_xor.port.b := l9_6_xor.port.z
    val l27_6_xor = new Shared_Xor(d, n)
    l27_6_xor.port.a := l8_6_xor.port.z
    l27_6_xor.port.b := l10_6_xor.port.z
    val l28_6_xor = new Shared_Xor(d, n)
    l28_6_xor.port.a := l11_6_xor.port.z
    l28_6_xor.port.b := l14_6_xor.port.z
    val l29_6_xor = new Shared_Xor(d, n)
    l29_6_xor.port.a := l11_6_xor.port.z
    l29_6_xor.port.b := l17_6_xor.port.z

    val s0_6 = new Shared_Xor(d, n)
    s0_6.port.a := l6_6_xor.port.z
    s0_6.port.b := l24_6_xor.port.z
    out_y0 := s0_6.port.z
    val s1_6 = new Shared_Xnor(d, n)
    s1_6.port.a := l16_6_xor.port.z
    s1_6.port.b := l26_6_xor.port.z
    out_y1 := s1_6.port.z
    val s2_6 = new Shared_Xnor(d, n)
    s2_6.port.a := l19_6_xor.port.z
    s2_6.port.b := l28_6_xor.port.z
    out_y2 := s2_6.port.z
    val s3_6 = new Shared_Xor(d, n)
    s3_6.port.a := l6_6_xor.port.z
    s3_6.port.b := l21_6_xor.port.z
    out_y3 := s3_6.port.z
    val s4_6= new Shared_Xor(d, n)
    s4_6.port.a := l20_6_xor.port.z
    s4_6.port.b := l22_6_xor.port.z
    out_y4 := s4_6.port.z
    val s5_6 = new Shared_Xor(d, n)
    s5_6.port.a := l25_6_xor.port.z
    s5_6.port.b := l29_6_xor.port.z
    out_y5 := s5_6.port.z
    val s6_6 = new Shared_Xnor(d, n)
    s6_6.port.a := l13_6_xor.port.z
    s6_6.port.b := l27_6_xor.port.z
    out_y6 := s6_6.port.z
    val s7_6 = new Shared_Xnor(d, n)
    s7_6.port.a := l6_6_xor.port.z
    s7_6.port.b := l23_6_xor.port.z
    out_y7 := s7_6.port.z

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