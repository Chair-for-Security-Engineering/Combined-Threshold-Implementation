package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

//0 Cycles
class Shared_LinearMapping(num_shares: Int, num_rep: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 8), num_shares)
        val o = out Vec(Vec(UInt(num_rep bits), 8), num_shares)
    }
    val outVal = Vec(Vec(UInt(num_rep bits), 8), num_shares)
    
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

    for(share <- 1 to num_shares-1){
        val rx1_1 = port.i(share)(7) ^ port.i(share)(5)
        val rx2_1 = (port.i(share)(7) ^ port.i(share)(4))
        val rx3_1 = port.i(share)(6) ^ port.i(share)(0)
        val rx4_1 = (port.i(share)(5) ^ rx3_1)
        val rx5_1 = port.i(share)(4) ^ rx4_1
        val rx6_1 = port.i(share)(3) ^ port.i(share)(0)
        val rx7_1 = port.i(share)(2) ^ rx1_1
        val rx8_1 = port.i(share)(1) ^ rx3_1
        val rx9_1 = port.i(share)(3) ^ rx8_1
        outVal(share)(7) := rx7_1 ^ rx8_1
        outVal(share)(6) := rx5_1 
        outVal(share)(5) := (port.i(share)(1) ^ rx4_1)
        outVal(share)(4) := rx1_1 ^ rx3_1 
        outVal(share)(3) := (port.i(share)(1) ^ rx2_1 ^ rx6_1)
        outVal(share)(2) := port.i(share)(0)
        outVal(share)(1) := rx4_1
        outVal(share)(0) := port.i(share)(2) ^ rx9_1 
    }
    port.o := outVal
}

//0 Cycles
class Shared_InverseLinearMapping(num_shares: Int, num_rep: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 8), num_shares)
        val o = out Vec(Vec(UInt(num_rep bits), 8), num_shares)
    }
    val outVal = Vec(Vec(UInt(num_rep bits), 8), num_shares)
    
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
    outVal(0)(7) := ~tx4_0
    outVal(0)(6) := ~tx1_0
    outVal(0)(5) := ~tx3_0 
    outVal(0)(4) := ~tx5_0 
    outVal(0)(3) := ~(tx2_0 ^ tx5_0)
    outVal(0)(2) := ~(tx3_0 ^ tx8_0)
    outVal(0)(1) := ~tx7_0 
    outVal(0)(0) := ~tx9_0

    for(share <- 1 to num_shares-1){
        val tx1_1 = port.i(share)(7) ^ port.i(share)(3)
        val tx2_1 = port.i(share)(6) ^ port.i(share)(4)
        val tx3_1 = port.i(share)(6) ^ port.i(share)(0)
        val tx4_1 = (port.i(share)(5) ^ port.i(share)(3))
        val tx5_1 = (port.i(share)(5) ^ tx1_1)
        val tx6_1 = (port.i(share)(5) ^ port.i(share)(1))
        val tx7_1 = (port.i(share)(4) ^ tx6_1)
        val tx8_1 = port.i(share)(2) ^ tx4_1
        val tx9_1 = port.i(share)(1) ^ tx2_1 
        val tx10_1 = tx3_1 ^ tx5_1
        outVal(share)(7) := tx4_1
        outVal(share)(6) := tx1_1
        outVal(share)(5) := tx3_1 
        outVal(share)(4) := tx5_1 
        outVal(share)(3) := (tx2_1 ^ tx5_1)
        outVal(share)(2) := (tx3_1 ^ tx8_1)
        outVal(share)(1) := tx7_1 
        outVal(share)(0) := tx9_1
    }
    port.o := outVal
}

//Squaring in GF(2^2)
//0 Cycles
class Shared_GF_SQ_2(num_shares: Int, num_rep: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val o = out Vec(Vec(UInt(num_rep bits), 2), num_shares)
    }
    for(share <- 0 to num_shares-1){
        port.o(share)(0) := port.i(share)(1)
        port.o(share)(1) := port.i(share)(0)
    }
}
//Scale by w in GF(2^2)
//0 Cycles
class Shared_GF_SCLW_2(num_shares: Int, num_rep: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val o = out Vec(Vec(UInt(num_rep bits), 2), num_shares)
    }
    for(share <- 0 to num_shares-1){
        port.o(share)(0) := port.i(share)(1)
        port.o(share)(1) := port.i(share)(0) ^ port.i(share)(1)
    }
}
//Scale by w^2 in GF(2^2)
//0 Cycles
class Shared_GF_SCLW2_2(num_shares: Int, num_rep: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val o = out Vec(Vec(UInt(num_rep bits), 2), num_shares)
    }
    for(share <- 0 to num_shares-1){
        port.o(share)(0) := port.i(share)(1) ^ port.i(share)(0)
        port.o(share)(1) := port.i(share)(0)
    }
}
//Multiply in GF(2^2)
//2 Cycles: b, cd 
//1 Cycles: a, ab
class Shared_GF_MULS_2(num_shares: Int, num_rep: Int, rand_per_gadget:Int, gadget:String) extends Component{
    val port = new Bundle{
        val a = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val ab = in Vec(UInt(num_rep bits), num_shares)
        val b = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val cd = in Vec(UInt(num_rep bits), num_shares)
        val rand = in Vec(Bool(), 3*rand_per_gadget)
        val o = out Vec(Vec(UInt(num_rep bits), 2), num_shares)
    }
    //Randomness assignment
    val r0 = Vec(Bool(), rand_per_gadget)
    val r1 = Vec(Bool(), rand_per_gadget)
    val r2 = Vec(Bool(), rand_per_gadget)
    for(i <- 0 to rand_per_gadget-1){
        r0(i) := port.rand(i)
        r1(i) := port.rand(rand_per_gadget + i)
        r2(i) := port.rand(2*rand_per_gadget + i)
    }
    //Reordering of vectors
    val ax = Vec(Vec(UInt(num_rep bits), num_shares), 2)
    val bx = Vec(Vec(UInt(num_rep bits), num_shares), 2)
    for(share <- 0 to num_shares-1){
        ax(0)(share) := port.a(share)(0)
        ax(1)(share) := port.a(share)(1)
        bx(0)(share) := port.b(share)(0)
        bx(1)(share) := port.b(share)(1)
    }
    //val t = ~(port.ab & port.cd)
    val and_1 = new Shared_And(num_shares, num_rep, rand_per_gadget, gadget)
    and_1.port.a := port.ab
    and_1.port.b := port.cd
    and_1.port.rand := r0
    val not_1 = new Shared_Not(num_shares, num_rep)
    not_1.port.a := and_1.port.z
    //port.o(0) := (~(port.a(0) & port.b(0))) ^ t
    val and_2 = new Shared_And(num_shares, num_rep, rand_per_gadget, gadget)
    and_2.port.a := ax(0)
    and_2.port.b := bx(0)
    and_2.port.rand := r1 
    val not_2 = new Shared_Not(num_shares, num_rep)
    not_2.port.a := and_2.port.z
    val xor_2 = new Shared_Xor(num_shares, num_rep)
    xor_2.port.a := not_1.port.z
    xor_2.port.b := not_2.port.z
    //port.o(1) := (~(port.a(1) & port.b(1))) ^ t
    val and_3 = new Shared_And(num_shares, num_rep, rand_per_gadget, gadget)
    and_3.port.a := ax(1)
    and_3.port.b := bx(1)
    and_3.port.rand := r2
    val not_3 = new Shared_Not(num_shares, num_rep)
    not_3.port.a := and_3.port.z
    val xor_3 = new Shared_Xor(num_shares, num_rep)
    xor_3.port.a := not_1.port.z
    xor_3.port.b := not_3.port.z

    val outVal = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    for(share <- 0 to num_shares-1){
        outVal(share)(0) := xor_2.port.z(share)
        outVal(share)(1) := xor_3.port.z(share)
    }
    port.o := outVal
}

//Multiply and scale by N in GF(2^2)
//2 Cycles: b, cd
//1 Cycles: a, ab
class Shared_GF_MULS_SCL_2(num_shares: Int, num_rep: Int, rand_per_gadget:Int, gadget:String) extends Component{
    val port = new Bundle{
        val a = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val ab = in Vec(UInt(num_rep bits), num_shares)
        val b = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val cd = in Vec(UInt(num_rep bits), num_shares)
        val rand = in Vec(Bool(), 3*rand_per_gadget)
        val o = out Vec(Vec(UInt(num_rep bits), 2), num_shares)
    }
    //Randomness assignment
    val r0 = Vec(Bool(), rand_per_gadget)
    val r1 = Vec(Bool(), rand_per_gadget)
    val r2 = Vec(Bool(), rand_per_gadget)
    for(i <- 0 to rand_per_gadget-1){
        r0(i) := port.rand(i)
        r1(i) := port.rand(rand_per_gadget + i)
        r2(i) := port.rand(2*rand_per_gadget + i)
    }
    //Reordering of vectors
    val ax = Vec(Vec(UInt(num_rep bits), num_shares), 2)
    val bx = Vec(Vec(UInt(num_rep bits), num_shares), 2)
    for(share <- 0 to num_shares-1){
        ax(0)(share) := port.a(share)(0)
        ax(1)(share) := port.a(share)(1)
        bx(0)(share) := port.b(share)(0)
        bx(1)(share) := port.b(share)(1)
    }
    //val t = ~(port.a(0) & port.b(0))
    val and_1 = new Shared_And(num_shares, num_rep, rand_per_gadget, gadget)
    and_1.port.a := ax(0)
    and_1.port.b := bx(0)
    and_1.port.rand := r0
    val not_1 = new Shared_Not(num_shares, num_rep)
    not_1.port.a := and_1.port.z
    //port.o(0) := (~(port.a(1) & port.b(1))) ^ t
    val and_2 = new Shared_And(num_shares, num_rep, rand_per_gadget, gadget)
    and_2.port.a := ax(1)
    and_2.port.b := bx(1)
    and_2.port.rand := r1 
    val not_2 = new Shared_Not(num_shares, num_rep)
    not_2.port.a := and_2.port.z
    val xor_2 = new Shared_Xor(num_shares, num_rep)
    xor_2.port.a := not_1.port.z
    xor_2.port.b := not_2.port.z
    //port.o(1) := (~(port.ab & port.cd)) ^ t
    val and_3 = new Shared_And(num_shares, num_rep, rand_per_gadget, gadget)
    and_3.port.a := port.ab
    and_3.port.b := port.cd
    and_3.port.rand := r2
    val not_3 = new Shared_Not(num_shares, num_rep)
    not_3.port.a := and_3.port.z
    val xor_3 = new Shared_Xor(num_shares, num_rep)
    xor_3.port.a := not_1.port.z
    xor_3.port.b := not_3.port.z

    val outVal = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    for(share <- 0 to num_shares-1){
        outVal(share)(0) := xor_2.port.z(share)
        outVal(share)(1) := xor_3.port.z(share)
    }
    port.o := outVal
}
//Inverse in GF(2^4)
//3 Cycles
class Shared_GF_INV_4(num_shares: Int, num_rep: Int, rand_per_gadget:Int, gadget:String) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 4), num_shares)
        val rand = in Vec(Bool(), 9*rand_per_gadget)
        val o = out Vec(Vec(UInt(num_rep bits), 4), num_shares)
    }
    val ax = Reg(Vec(Vec(UInt(num_rep bits), 2), num_shares))
    val bx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val sax = Vec(UInt(num_rep bits), num_shares)
    val sbx = Vec(UInt(num_rep bits), num_shares)
    val cx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val dx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val sdx = Vec(UInt(num_rep bits), num_shares)
    val px = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val qx = Vec(Vec(UInt(num_rep bits), 2), num_shares)

    //Assign randomness
    val r0 = Vec(Bool(), 3*rand_per_gadget)
    val r1 = Vec(Bool(), 3*rand_per_gadget)
    val r2 = Vec(Bool(), 3*rand_per_gadget)
    for(i <- 0 to 3*rand_per_gadget-1){
        r0(i) := port.rand(i)
        r1(i) := port.rand(3*rand_per_gadget + i)
        r2(i) := port.rand(6*rand_per_gadget + i)
    }

    for(share <- 0 to num_shares-1){
        ax(share)(0) := port.i(share)(2)
        ax(share)(1) := port.i(share)(3)
        bx(share)(0) := port.i(share)(0)
        bx(share)(1) := port.i(share)(1)
        sax(share) := ax(share)(1) ^ ax(share)(0)
        sbx(share) := bx(share)(1) ^ bx(share)(0)
    }
    //---
    //2 Cycles: bx, sbx 
    //1 Cycles: ax, sax -> Register
    // => 2 Cycles
    val mul2 = new Shared_GF_MULS_2(num_shares, num_rep, rand_per_gadget, gadget)
    mul2.port.a := ax 
    mul2.port.b := bx
    mul2.port.ab := sax
    mul2.port.cd := sbx
    mul2.port.rand := r0

    val sq_in = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    for(share <- 0 to num_shares-1){
        sq_in(share) := ax(share) ^ bx(share)
    }
    //0 Cycles
    val sq = new Shared_GF_SQ_2(num_shares, num_rep)
    sq.port.i := sq_in
    //0 Cycles
    val sc = new Shared_GF_SCLW2_2(num_shares, num_rep)
    sc.port.i := sq.port.o

    for(share <- 0 to num_shares-1){
        cx(share) := mul2.port.o(share) ^ sc.port.o(share)
    }
    
    //0 Cycles
    val dx_inv = new Shared_GF_SQ_2(num_shares, num_rep)
    dx_inv.port.i := cx
    dx := dx_inv.port.o 

    for(share <- 0 to num_shares-1){
        sdx(share) := dx(share)(0) ^ dx(share)(1)
    }

    val reg_bx = Reg(Vec(Vec(UInt(num_rep bits), 2), num_shares))
    reg_bx := bx
    val reg_sbx = Reg(Vec(UInt(num_rep bits), num_shares))
    reg_sbx := sbx
    //2 Cycles: bx, sbx 
    //1 Cycles: dx, sdx
    val px_mul = new Shared_GF_MULS_2(num_shares, num_rep, rand_per_gadget, gadget)
    px_mul.port.a := dx
    px_mul.port.b := reg_bx
    px_mul.port.ab := sdx
    px_mul.port.cd := reg_sbx
    px_mul.port.rand := r1
    px := px_mul.port.o

    //2 Cycles: ax, sax 
    //1 Cycles: dx, sdx
    val qx_mul = new Shared_GF_MULS_2(num_shares, num_rep, rand_per_gadget, gadget)
    qx_mul.port.a := dx
    qx_mul.port.b := ax
    qx_mul.port.ab := sdx
    qx_mul.port.cd := sax
    qx_mul.port.rand := r2
    qx := qx_mul.port.o

    for(share <- 0 to num_shares-1){
        port.o(share)(0) := qx(share)(0)
        port.o(share)(1) := qx(share)(1)
        port.o(share)(2) := px(share)(0)
        port.o(share)(3) := px(share)(1)
    }
   
}
//Square and scale by nu in GF(2^4)/GF/2^2
//0 Cycles
class Shared_GF_SQ_SCL_4(num_shares: Int, num_rep: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 4), num_shares)
        val o = out Vec(Vec(UInt(num_rep bits), 4), num_shares)
    }
    val ax = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val bx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val abx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val ab2x = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val b2x = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val b2N2 = Vec(Vec(UInt(num_rep bits), 2), num_shares)

    for(share <- 0 to num_shares-1){
        ax(share)(0) := port.i(share)(2)
        ax(share)(1) := port.i(share)(3)
        bx(share)(0) := port.i(share)(0)
        bx(share)(1) := port.i(share)(1)
        abx(share)(0) := ax(share)(0) ^ bx(share)(0)
        abx(share)(1) := ax(share)(1) ^ bx(share)(1)
    }
    
    //0 Cycles
    val ab_sq = new Shared_GF_SQ_2(num_shares, num_rep)
    ab_sq.port.i := abx 
    ab2x := ab_sq.port.o

    //0 Cycles
    val b_sq = new Shared_GF_SQ_2(num_shares, num_rep)
    b_sq.port.i := bx 
    b2x := b_sq.port.o

    //0 Cycles
    val b_mulN2 = new Shared_GF_SCLW_2(num_shares, num_rep)
    b_mulN2.port.i := b2x
    b2N2 := b_mulN2.port.o

    for(share <- 0 to num_shares-1){
        port.o(share)(0) := b2N2(share)(0)
        port.o(share)(1) := b2N2(share)(1)
        port.o(share)(2) := ab2x(share)(0)
        port.o(share)(3) := ab2x(share)(1)
    }
}

//Multiply in GF(2^4)/GF(2^2)
//2 Cycles: B, Bh, b, bb
//1 Cycles: A, Ah, a, aa
class Shared_GF_MULS_4(num_shares: Int, num_rep: Int, rand_per_gadget:Int, gadget:String) extends Component{
    val port = new Bundle{
        val A = in Vec(Vec(UInt(num_rep bits), 4), num_shares)
        val a = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val Al = in Vec(UInt(num_rep bits), num_shares)
        val Ah = in Vec(UInt(num_rep bits), num_shares)
        val aa = in Vec(UInt(num_rep bits), num_shares)
        val B = in Vec(Vec(UInt(num_rep bits), 4), num_shares)
        val b = in Vec(Vec(UInt(num_rep bits), 2), num_shares)
        val Bl = in Vec(UInt(num_rep bits), num_shares)
        val Bh = in Vec(UInt(num_rep bits), num_shares)
        val bb = in Vec(UInt(num_rep bits), num_shares)
        val rand = in Vec(Bool(), 9*rand_per_gadget)

        val o = out Vec(Vec(UInt(num_rep bits), 4), num_shares)
    }
    //Assign randomness
    val r0 = Vec(Bool(), 3*rand_per_gadget)
    val r1 = Vec(Bool(), 3*rand_per_gadget)
    val r2 = Vec(Bool(), 3*rand_per_gadget)
    for(i <- 0 to 3*rand_per_gadget-1){
        r0(i) := port.rand(i)
        r1(i) := port.rand(3*rand_per_gadget + i)
        r2(i) := port.rand(6*rand_per_gadget + i)
    }
    //Reordering of vectors
    val high_A = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val low_A = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val high_B = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val low_B = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    for(share <- 0 to num_shares-1){
        high_A(share)(0) := port.A(share)(2)
        high_A(share)(1) := port.A(share)(3)
        low_A(share)(0) := port.A(share)(0)
        low_A(share)(1) := port.A(share)(1)
        high_B(share)(0) := port.B(share)(2)
        high_B(share)(1) := port.B(share)(3)
        low_B(share)(0) := port.B(share)(0)
        low_B(share)(1) := port.B(share)(1)
    }

    val ph = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    //2 Cycles: high_B, port.Bh 
    //1 Cycles: high_A, port.Ah
    val hi_mul = new Shared_GF_MULS_2(num_shares, num_rep, rand_per_gadget, gadget)
    hi_mul.port.a := high_A
    hi_mul.port.ab := port.Ah 
    hi_mul.port.b := high_B
    hi_mul.port.cd := port.Bh
    hi_mul.port.rand := r0
    ph := hi_mul.port.o

    

    val pl = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    //2 Cycles: low_B, port.Bh 
    //1 Cycles: low_A, port.Ah
    val lo_mul = new Shared_GF_MULS_2(num_shares, num_rep, rand_per_gadget, gadget)
    lo_mul.port.a := low_A
    lo_mul.port.ab := port.Al
    lo_mul.port.b := low_B
    lo_mul.port.cd := port.Bl
    lo_mul.port.rand := r1
    pl := lo_mul.port.o

    val p = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    //2 Cycles: port.b, port.bb
    //1 Cycles: port.a, port.aa
    val sum_mul = new Shared_GF_MULS_SCL_2(num_shares, num_rep, rand_per_gadget, gadget)
    sum_mul.port.a := port.a
    sum_mul.port.ab := port.aa
    sum_mul.port.b := port.b
    sum_mul.port.cd := port.bb
    sum_mul.port.rand := r2
    p := sum_mul.port.o

    for(share <- 0 to num_shares-1){
        port.o(share)(0) := pl(share)(0) ^ p(share)(0)
        port.o(share)(1) := pl(share)(1) ^ p(share)(1)
        port.o(share)(2) := ph(share)(0) ^ p(share)(0)
        port.o(share)(3) := ph(share)(1) ^ p(share)(1) 
    }
    
}

//Inverse in GF(2^8)/GF(2^4)
//6 Cycles
class Shared_GF_INV_8(num_shares: Int, num_rep: Int, rand_per_gadget:Int, gadget:String) extends Component{
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 8), num_shares)
        val rand = in Vec(Bool(), 4*9*rand_per_gadget)
        val o = out Vec(Vec(UInt(num_rep bits), 8), num_shares)
    }
    //Assign randomness
    val r0 = Vec(Bool(), 9*rand_per_gadget)
    val r1 = Vec(Bool(), 9*rand_per_gadget)
    val r2 = Vec(Bool(), 9*rand_per_gadget)
    val r3 = Vec(Bool(), 9*rand_per_gadget)
    for(i <- 0 to 9*rand_per_gadget-1){
        r0(i) := port.rand(i)
        r1(i) := port.rand(9*rand_per_gadget + i)
        r2(i) := port.rand(2*9*rand_per_gadget + i)
        r3(i) := port.rand(3*9*rand_per_gadget + i)
    }

    val ax = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val bx = Vec(Vec(UInt(num_rep bits), 4), num_shares)
    val sax = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val sbx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val al = Vec(UInt(num_rep bits), num_shares)
    val ah = Vec(UInt(num_rep bits), num_shares)
    val aa = Vec(UInt(num_rep bits), num_shares)
    val bl = Vec(UInt(num_rep bits), num_shares)
    val bh = Vec(UInt(num_rep bits), num_shares)
    val bb = Vec(UInt(num_rep bits), num_shares)
    val cx = Vec(Vec(UInt(num_rep bits), 4), num_shares)
    for(share <- 0 to num_shares-1){
        ax(share)(0) := port.i(share)(4)
        ax(share)(1) := port.i(share)(5)
        ax(share)(2) := port.i(share)(6)
        ax(share)(3) := port.i(share)(7)
        bx(share)(0) := port.i(share)(0)
        bx(share)(1) := port.i(share)(1)
        bx(share)(2) := port.i(share)(2)
        bx(share)(3) := port.i(share)(3)

        sax(share)(0) := ax(share)(2) ^ ax(share)(0)
        sax(share)(1) := ax(share)(3) ^ ax(share)(1)
        sbx(share)(0) := bx(share)(2) ^ bx(share)(0)
        sbx(share)(1) := bx(share)(3) ^ bx(share)(1)
        al(share) := ax(share)(1) ^ ax(share)(0)
        ah(share) := ax(share)(3) ^ ax(share)(2)
        aa(share) := sax(share)(1) ^ sax(share)(0)
        bl(share) := bx(share)(1) ^ bx(share)(0)
        bh(share) := bx(share)(3) ^ bx(share)(2)
        bb(share) := sbx(share)(1) ^ sbx(share)(0)
    }
    //---
    val sq_in = Vec(Vec(UInt(num_rep bits), 4), num_shares)
    for(share <- 0 to num_shares-1){
        sq_in(share) := ax(share) ^ bx(share)
    }
    //0 Cycles
    val sq = new Shared_GF_SQ_SCL_4(num_shares, num_rep)
    sq.port.i := sq_in

    //2 Cycles: B, Bh, b, bb 
    //1 Cycles: A, Ah, a, aa -> in register
    // => 2 Cycles
    val mul4 = new Shared_GF_MULS_4(num_shares, num_rep, rand_per_gadget, gadget)
    mul4.port.A := ax 
    mul4.port.a := sax
    mul4.port.Ah := ah
    mul4.port.Al := al
    mul4.port.aa := aa 
    mul4.port.B := bx 
    mul4.port.b := sbx
    mul4.port.Bh := bh
    mul4.port.Bl := bl
    mul4.port.bb := bb 
    mul4.port.rand := r0
    for(share <- 0 to num_shares-1){
        cx(share) := mul4.port.o(share) ^ sq.port.o(share)
    }
    //---

    val dx = Vec(Vec(UInt(num_rep bits), 4), num_shares)
    //3 Cycles
    val dx_inv = new Shared_GF_INV_4(num_shares, num_rep, rand_per_gadget, gadget)
    dx_inv.port.i := cx 
    dx_inv.port.rand := r1
    dx := dx_inv.port.o

    val sdx = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val dl = Vec(UInt(num_rep bits), num_shares)
    val dh = Vec(UInt(num_rep bits), num_shares)
    val dd = Vec(UInt(num_rep bits), num_shares)
    for(share <- 0 to num_shares-1){
        sdx(share)(0) := dx(share)(2) ^ dx(share)(0)
        sdx(share)(1) := dx(share)(3) ^ dx(share)(1)
        dl(share) := dx(share)(1) ^ dx(share)(0)
        dh(share) := dx(share)(3) ^ dx(share)(2)
        dd(share) := sdx(share)(1) ^ sdx(share)(0)
    }
    
    //Pipelining
    val bx_reg_0 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val bx_reg_1 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val bx_reg_2 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val bx_reg_3 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val ax_reg_1 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val ax_reg_2 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val ax_reg_3 = Reg(Vec(Vec(UInt(num_rep bits), 4), num_shares))
    val sax_reg_3 = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val sbx_reg_3 = Vec(Vec(UInt(num_rep bits), 2), num_shares)
    val al_reg_3 = Vec(UInt(num_rep bits), num_shares)
    val ah_reg_3 = Vec(UInt(num_rep bits), num_shares)
    val aa_reg_3 = Vec(UInt(num_rep bits), num_shares)
    val bl_reg_3 = Vec(UInt(num_rep bits), num_shares)
    val bh_reg_3 = Vec(UInt(num_rep bits), num_shares)
    val bb_reg_3 = Vec(UInt(num_rep bits), num_shares)
    bx_reg_0 := bx 
    bx_reg_1 := bx_reg_0
    bx_reg_2 := bx_reg_1 
    bx_reg_3 := bx_reg_2
    ax_reg_1 := ax 
    ax_reg_2 := ax_reg_1
    ax_reg_3 := ax_reg_2
    for(share <- 0 to num_shares-1){
        sax_reg_3(share)(0) := ax_reg_3(share)(2) ^ ax_reg_3(share)(0)
        sax_reg_3(share)(1) := ax_reg_3(share)(3) ^ ax_reg_3(share)(1)
        sbx_reg_3(share)(0) := bx_reg_3(share)(2) ^ bx_reg_3(share)(0)
        sbx_reg_3(share)(1) := bx_reg_3(share)(3) ^ bx_reg_3(share)(1)
        al_reg_3(share) := ax_reg_3(share)(1) ^ ax_reg_3(share)(0)
        ah_reg_3(share) := ax_reg_3(share)(3) ^ ax_reg_3(share)(2)
        aa_reg_3(share) := sax_reg_3(share)(1) ^ sax_reg_3(share)(0)
        bl_reg_3(share) := bx_reg_3(share)(1) ^ bx_reg_3(share)(0)
        bh_reg_3(share) := bx_reg_3(share)(3) ^ bx_reg_3(share)(2)
        bb_reg_3(share) := sbx_reg_3(share)(1) ^ sbx_reg_3(share)(0)
    }
    val px = Vec(Vec(UInt(num_rep bits), 4), num_shares)
    //2 Cycles: B, Bh, b, bb
    //1 Cycles: A, Ah, a, aa
    val px_mul = new Shared_GF_MULS_4(num_shares, num_rep, rand_per_gadget, gadget)
    px_mul.port.A := dx 
    px_mul.port.a := sdx
    px_mul.port.Al := dl
    px_mul.port.Ah := dh
    px_mul.port.aa := dd 
    px_mul.port.B := bx_reg_3
    px_mul.port.b := sbx_reg_3
    px_mul.port.Bl := bl_reg_3
    px_mul.port.Bh := bh_reg_3 
    px_mul.port.bb := bb_reg_3 
    px_mul.port.rand := r2
    px := px_mul.port.o

    val qx = Vec(Vec(UInt(num_rep bits), 4), num_shares)
    //2 Cycles: B, Bh, b, bb
    //1 Cycles: A, Ah, a, aa
    val qx_mul = new Shared_GF_MULS_4(num_shares, num_rep, rand_per_gadget, gadget)
    qx_mul.port.A := dx
    qx_mul.port.a := sdx
    qx_mul.port.Al := dl
    qx_mul.port.Ah := dh
    qx_mul.port.aa := dd 
    qx_mul.port.B := ax_reg_3
    qx_mul.port.b := sax_reg_3
    qx_mul.port.Bl := al_reg_3
    qx_mul.port.Bh := ah_reg_3 
    qx_mul.port.bb := aa_reg_3 
    qx_mul.port.rand := r3
    qx := qx_mul.port.o

    for(share <- 0 to num_shares-1){
        port.o(share)(0) := qx(share)(0)
        port.o(share)(1) := qx(share)(1)
        port.o(share)(2) := qx(share)(2)
        port.o(share)(3) := qx(share)(3)
        port.o(share)(4) := px(share)(0)
        port.o(share)(5) := px(share)(1)
        port.o(share)(6) := px(share)(2)
        port.o(share)(7) := px(share)(3)
    }
}

class Sbox_AES_Canright_Gadgets(num_shares: Int, num_rep:Int, rand_per_gadget:Int, gadget:String)  extends Component{
    val num_and = 36
    val port = new Bundle{
        val i = in Vec(Vec(UInt(num_rep bits), 8), num_shares)
        val r = in Vec(Bool(), num_and*rand_per_gadget)
        val o = out Vec(Vec(UInt(num_rep bits), 8), num_shares)
    }

    //0 Cycles
    val linMap = new Shared_LinearMapping(num_shares, num_rep)
    linMap.port.i := port.i 
    
    //6 Cycles
    val inv = new Shared_GF_INV_8(num_shares, num_rep, rand_per_gadget, gadget)
    inv.port.i := linMap.port.o
    inv.port.rand := port.r

    //0 Cycles
    val invLinMap = new Shared_InverseLinearMapping(num_shares, num_rep)
    invLinMap.port.i := inv.port.o

    port.o := invLinMap.port.o
}

class Sbox_AES_Canright_Gadgets_Test_Module(d: Int, n:Int, rand_per_gadget:Int, gadget:String) extends Component{
    val num_and = 36
    val port = new Bundle{
        val i_shares = in Vec(Vec(UInt(n bits), 8), d)
        val i = in Vec(UInt(n bits), 8)
        val r = in Vec(Bool(), num_and*rand_per_gadget)
        val o_shares = out Vec(Vec(UInt(n bits), 8), d)
        val o = out Vec(UInt(n bits), 8)
    }
    //Instantiate shared module
    val shared_sbox = new Sbox_AES_Canright_Gadgets(d, n, rand_per_gadget, gadget)
    shared_sbox.port.i := port.i_shares
    shared_sbox.port.r := port.r 
    port.o_shares:= shared_sbox.port.o

    //Instantiate reference module
    val sbox = new Sbox_AES_Canright(n)
    sbox.port.i := port.i
    port.o := sbox.port.o
}

object Sim_Sbox_AES_Canright_Gadgets {
    def main(args: Array[String]): Unit = {
        var number_runs = 1000
        val NUM_AND_Canright = 36

        val gadget = "CPC1"
        val num_and = NUM_AND_Canright

        var number_replications = 3
        var number_shares = 3
        val rand_per_gadget = number_shares*(number_shares-1)
        var number_rand = num_and*rand_per_gadget

        SimConfig.compile(new Sbox_AES_Canright_Gadgets_Test_Module(number_shares, number_replications, rand_per_gadget, gadget)).doSim{ dut =>
            dut.clockDomain.forkStimulus(period = 10)

            //Test for n random test cases
            for(idx <- 0 to number_runs){
                var input = 0
                for(j <- 0 to 7){
                    var v = 0
                    var bit = ((input >> j) & 1)
                    for(l <- 0 to number_replications-1){
                        v = v << 1
                        v = v | bit
                    }
                    dut.port.i(j) #= v
                }

                for(i <- 0 to number_shares-1){
                    var share_i = Random.nextInt(256)
                    
                    for(j <- 0 to 7){
                        var v = 0
                        var bit = ((share_i >> j) & 1)
                        for(l <- 0 to number_replications-1){
                            v = v << 1
                            v = v | bit
                        }
                        dut.port.i_shares(i)(j) #= v
                    }
                    input = input ^ share_i
                }
                for(j <- 0 to 7){
                    var v = 0
                    var bit = ((input >> j) & 1)
                    for(l <- 0 to number_replications-1){
                        v = v << 1
                        v = v | bit
                    }
                    dut.port.i(j) #= v
                }

                for(i <- 0 to number_rand-1){
                    var rand = Random.nextInt(2)
                    if(rand == 1)
                        dut.port.r(i) #= true
                    else
                        dut.port.r(i) #= false
                }


                dut.clockDomain.waitSampling(7)
                // sleep(1)

                var output : Array[Int] = new Array[Int](number_replications)
                val o_shared : Array[Array[Int]] = Array.ofDim[Int](number_shares, number_replications)
                for(l <- 0 to number_replications-1){
                    output(l) = 0
                    for(i <- 0 to number_shares-1){
                        o_shared(i)(l) = 0
                    }
                }
                for(j <- 0 to 7){
                    val w = dut.port.o(7-j).toInt
                    for(l <- 0 to number_replications-1){
                        output(l) = output(l) << 1
                        output(l) = output(l) | ((w >> l) & 1)

                    }
                    for(i <- 0 to number_shares-1){
                        val v = dut.port.o_shares(i)(7-j).toInt
                        for(l <- 0 to number_replications-1){
                            o_shared(i)(l) = o_shared(i)(l) << 1
                            o_shared(i)(l) = o_shared(i)(l) | ((v >> l) & 1)
                        }
                    }
                }
                // println("Output: " + output(0) + " = " + o_shared(0)(0) + " + " + o_shared(1)(0))

                var o_gadget = 0
                for(i <- 0 to number_shares-1){
                    o_gadget = o_gadget ^ o_shared(i)(0)
                }
                assert( output(0)  == o_gadget)
                for(i <- 0 to number_shares-1){
                    for(l <- 1 to number_replications-1){
                        assert(o_shared(i)(0) == o_shared(i)(l))
                    }
                }                  
            }
            println("Done!")

        }
    }
}