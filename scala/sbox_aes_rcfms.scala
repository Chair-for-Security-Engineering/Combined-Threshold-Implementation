package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

// Design taken from Rezaei Shahmirzadi and Moradi, "Re-Consolidating Fist-Order Masking Schemes", https://tches.iacr.org/index.php/TCHES/article/view/8736

//Inverse in GF(2^4)
class GF_INV_4_rcfms(ca: Boolean) extends Component{
    val n = if(ca) 3 else 1 //Number of replications
    val n_shares = 2 //Number of shares
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 4), n_shares)
        val o = out Vec(Vec(UInt(n bits), 4), n_shares)
    }
    val a = 0
    val b = 1
    val c = 2
    val d = 3

    val f_0 = UInt(n bits)
    val f_0_reg = Reg(UInt(n bits))
    f_0 := port.i(0)(b) ^ 
            (port.i(0)(b) & port.i(0)(c)) ^
            (port.i(0)(b) & port.i(1)(d)) ^
            (port.i(0)(c) & port.i(1)(d)) ^
            (port.i(0)(c) & port.i(1)(a)) ^ 
            (port.i(0)(b) & port.i(0)(c) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_0
            maj.port.o <> f_0_reg(j)
        }
    }else{
        f_0_reg := f_0
    }
    val f_1 = UInt(n bits)
    val f_1_reg = Reg(UInt(n bits))
    f_1 := port.i(0)(d) ^ 
            (port.i(0)(b) & port.i(0)(d)) ^ 
            (port.i(0)(c) & port.i(0)(d)) ^
            (port.i(0)(b) & port.i(0)(c) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_1
            maj.port.o <> f_1_reg(j)
        }
    }else{
        f_1_reg := f_1
    }
    val f_2 = UInt(n bits)
    val f_2_reg = Reg(UInt(n bits))
    f_2 := port.i(1)(c) ^
            (port.i(1)(c) & port.i(0)(d)) ^
            (port.i(0)(b) & port.i(1)(c) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_2
            maj.port.o <> f_2_reg(j)
        }
    }else{
        f_2_reg := f_2
    }
    val f_3 = UInt(n bits)
    val f_3_reg = Reg(UInt(n bits))
    f_3 := (port.i(0)(b) & port.i(1)(c)) ^ 
            (port.i(1)(c) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(a)) ^ 
            (port.i(0)(b) & port.i(1)(c) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_3
            maj.port.o <> f_3_reg(j)
        }
    }else{
        f_3_reg := f_3
    }
    val f_4 = UInt(n bits)
    val f_4_reg = Reg(UInt(n bits))
    f_4 := (port.i(1)(b) & port.i(0)(c)) ^
            (port.i(1)(b) & port.i(0)(c) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_4
            maj.port.o <> f_4_reg(j)
        }
    }else{
        f_4_reg := f_4
    }
    val f_5 = UInt(n bits)
    val f_5_reg = Reg(UInt(n bits))
    f_5 := port.i(1)(a) ^
            (port.i(1)(b) & port.i(0)(d)) ^ 
            (port.i(0)(c) & port.i(1)(a)) ^ 
            (port.i(1)(b) & port.i(0)(c) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_5
            maj.port.o <> f_5_reg(j)
        }
    }else{
        f_5_reg := f_5
    }
    val f_6 = UInt(n bits)
    val f_6_reg = Reg(UInt(n bits))
    f_6 := port.i(1)(c) ^ 
            (port.i(1)(b) & port.i(1)(c)) ^
            (port.i(1)(c) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(1)(c) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_6
            maj.port.o <> f_6_reg(j)
        }
    }else{
        f_6_reg := f_6
    }
    val f_7 = UInt(n bits)
    val f_7_reg = Reg(UInt(n bits))
    f_7 := port.i(1)(b) ^ port.i(1)(d) ^ port.i(0)(a) ^
            (port.i(1)(b) & port.i(1)(d)) ^
            (port.i(1)(b) & port.i(1)(c) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_7
            maj.port.o <> f_7_reg(j)
        }
    }else{
        f_7_reg := f_7
    }

    //-----

    val g_0 = UInt(n bits)
    val g_0_reg = Reg(UInt(n bits))
    g_0 := port.i(1)(a) ^
            (port.i(0)(b) & port.i(1)(a)) ^ 
            (port.i(0)(c) & port.i(1)(a)) ^
            (port.i(0)(d) & port.i(1)(a)) ^
            (port.i(0)(b) & port.i(0)(d) & port.i(1)(a)) ^
            (port.i(0)(c) & port.i(0)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_0
            maj.port.o <> g_0_reg(j)
        }
    }else{
        g_0_reg := g_0
    }
    val g_1 = UInt(n bits)
    val g_1_reg = Reg(UInt(n bits))
    g_1 := (port.i(0)(b) & port.i(1)(d) & port.i(0)(a)) ^
            (port.i(0)(c) & port.i(1)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_1
            maj.port.o <> g_1_reg(j)
        }
    }else{
        g_1_reg := g_1
    }
    val g_2 = UInt(n bits)
    val g_2_reg = Reg(UInt(n bits))
    g_2 := (port.i(0)(b) & port.i(0)(d)) ^
            (port.i(1)(c) & port.i(0)(d)) ^
            (port.i(0)(b) & port.i(0)(d) & port.i(0)(a)) ^
            (port.i(1)(c) & port.i(0)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_2
            maj.port.o <> g_2_reg(j)
        }
    }else{
        g_2_reg := g_2
    }
    val g_3 = UInt(n bits)
    val g_3_reg = Reg(UInt(n bits))
    g_3 := port.i(0)(b) ^ port.i(1)(a) ^
            (port.i(0)(b) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(d)) ^
            (port.i(0)(b) & port.i(1)(a)) ^
            (port.i(1)(c) & port.i(1)(a)) ^
            (port.i(1)(d) & port.i(1)(a)) ^
            (port.i(0)(b) & port.i(1)(d) & port.i(1)(a)) ^
            (port.i(1)(c) & port.i(1)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_3
            maj.port.o <> g_3_reg(j)
        }
    }else{
        g_3_reg := g_3
    }
    val g_4 = UInt(n bits)
    val g_4_reg = Reg(UInt(n bits))
    g_4 := (port.i(1)(b) & port.i(0)(a)) ^
            (port.i(0)(c) & port.i(0)(a)) ^
            (port.i(1)(b) & port.i(0)(d) & port.i(0)(a)) ^
            (port.i(0)(c) & port.i(0)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_4
            maj.port.o <> g_4_reg(j)
        }
    }else{
        g_4_reg := g_4
    }
    val g_5 = UInt(n bits)
    val g_5_reg = Reg(UInt(n bits))
    g_5 := port.i(0)(c) ^ port.i(1)(d) ^
            (port.i(1)(d) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(1)(d) & port.i(1)(a)) ^
            (port.i(0)(c) & port.i(1)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_5
            maj.port.o <> g_5_reg(j)
        }
    }else{
        g_5_reg := g_5
    }
    val g_6 = UInt(n bits)
    val g_6_reg = Reg(UInt(n bits))
    g_6 := port.i(0)(d) ^ 
            (port.i(1)(b) & port.i(0)(d)) ^
            (port.i(1)(c) & port.i(0)(d)) ^
            (port.i(0)(d) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(0)(d) & port.i(1)(a)) ^
            (port.i(1)(c) & port.i(0)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_6
            maj.port.o <> g_6_reg(j)
        }
    }else{
        g_6_reg := g_6
    }
    val g_7 = UInt(n bits)
    val g_7_reg = Reg(UInt(n bits))
    g_7 := port.i(1)(b) ^ port.i(1)(c) ^
            (port.i(1)(b) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(d)) ^
            (port.i(1)(b) & port.i(0)(a)) ^
            (port.i(1)(c) & port.i(0)(a)) ^
            (port.i(1)(b) & port.i(1)(d) & port.i(0)(a)) ^
            (port.i(1)(c) & port.i(1)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_7
            maj.port.o <> g_7_reg(j)
        }
    }else{
        g_7_reg := g_7
    }

    //----

    val h_0 = UInt(n bits)
    val h_0_reg = Reg(UInt(n bits))
    h_0 := (port.i(0)(b) & port.i(0)(c)) ^
            (port.i(0)(c) & port.i(1)(a)) ^
            (port.i(0)(b) & port.i(0)(c) & port.i(0)(d)) ^
            (port.i(0)(c) & port.i(0)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_0
            maj.port.o <> h_0_reg(j)
        }
    }else{
        h_0_reg := h_0
    }
    val h_1 = UInt(n bits)
    val h_1_reg = Reg(UInt(n bits))
    h_1 := (port.i(0)(b) & port.i(1)(d)) ^
            (port.i(1)(d) & port.i(0)(a)) ^
            (port.i(0)(b) & port.i(0)(c) & port.i(1)(d)) ^
            (port.i(0)(c) & port.i(1)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_1
            maj.port.o <> h_1_reg(j)
        }
    }else{
        h_1_reg := h_1
    }
    val h_2 = UInt(n bits)
    val h_2_reg = Reg(UInt(n bits))
    h_2 := (port.i(1)(c) & port.i(0)(d)) ^
            (port.i(0)(b) & port.i(1)(c) & port.i(0)(d)) ^
            (port.i(1)(c) & port.i(0)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_2
            maj.port.o <> h_2_reg(j)
        }
    }else{
        h_2_reg := h_2
    }
    val h_3 = UInt(n bits)
    val h_3_reg = Reg(UInt(n bits))
    h_3 := port.i(1)(c) ^ port.i(1)(a) ^
            (port.i(0)(b) & port.i(1)(c)) ^
            (port.i(0)(b) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(a)) ^
            (port.i(1)(d) & port.i(1)(a)) ^
            (port.i(0)(b) & port.i(1)(c) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_3
            maj.port.o <> h_3_reg(j)
        }
    }else{
        h_3_reg := h_3
    }
    val h_4 = UInt(n bits)
    val h_4_reg = Reg(UInt(n bits))
    h_4 := port.i(1)(b) ^ port.i(0)(d) ^
            (port.i(0)(c) & port.i(0)(d)) ^
            (port.i(1)(b) & port.i(0)(c) & port.i(0)(d)) ^
            (port.i(0)(c) & port.i(0)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_4
            maj.port.o <> h_4_reg(j)
        }
    }else{
        h_4_reg := h_4
    }
    val h_5 = UInt(n bits)
    val h_5_reg = Reg(UInt(n bits))
    h_5 := port.i(1)(b) ^ port.i(0)(c) ^ port.i(1)(d) ^ port.i(1)(a) ^
            (port.i(1)(b) & port.i(0)(c)) ^
            (port.i(1)(b) & port.i(1)(d)) ^
            (port.i(0)(c) & port.i(1)(d)) ^
            (port.i(0)(c) & port.i(1)(a)) ^
            (port.i(1)(d) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(0)(c) & port.i(1)(d)) ^
            (port.i(0)(c) & port.i(1)(d) & port.i(1)(a))  
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_5
            maj.port.o <> h_5_reg(j)
        }
    }else{
        h_5_reg := h_5
    }
    val h_6 = UInt(n bits)
    val h_6_reg = Reg(UInt(n bits))
    h_6 := (port.i(1)(b) & port.i(1)(c)) ^
            (port.i(1)(c) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(1)(c) & port.i(0)(d)) ^
            (port.i(1)(c) & port.i(0)(d) & port.i(1)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_6
            maj.port.o <> h_6_reg(j)
        }
    }else{
        h_6_reg := h_6
    }
    val h_7 = UInt(n bits)
    val h_7_reg = Reg(UInt(n bits))
    h_7 := (port.i(1)(b) & port.i(1)(d)) ^
            (port.i(1)(d) & port.i(0)(a)) ^
            (port.i(1)(b) & port.i(1)(c) & port.i(1)(d)) ^
            (port.i(1)(c) & port.i(1)(d) & port.i(0)(a))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_7
            maj.port.o <> h_7_reg(j)
        }
    }else{
        h_7_reg := h_7
    }
    //----

    val k_0 = UInt(n bits)
    val k_0_reg = Reg(UInt(n bits))
    k_0 := port.i(1)(a) ^
            (port.i(0)(c) & port.i(0)(d)) ^
            (port.i(0)(b) & port.i(1)(a)) ^
            (port.i(0)(b) & port.i(0)(c) & port.i(0)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_0
            maj.port.o <> k_0_reg(j)
        }
    }else{
        k_0_reg := k_0
    }
    val k_1 = UInt(n bits)
    val k_1_reg = Reg(UInt(n bits))
    k_1 := port.i(1)(d) ^
            (port.i(0)(b) & port.i(1)(d)) ^
            (port.i(0)(b) & port.i(0)(a)) ^
            (port.i(0)(b) & port.i(0)(c) & port.i(1)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_1
            maj.port.o <> k_1_reg(j)
        }
    }else{
        k_1_reg := k_1
    }
    val k_2 = UInt(n bits)
    val k_2_reg = Reg(UInt(n bits))
    k_2 := port.i(1)(c) ^ port.i(0)(d) ^ port.i(0)(a) ^
            (port.i(0)(b) & port.i(1)(c)) ^
            (port.i(0)(b) & port.i(0)(d)) ^
            (port.i(1)(c) & port.i(0)(d)) ^
            (port.i(0)(b) & port.i(0)(a)) ^
            (port.i(0)(b) & port.i(1)(c) & port.i(0)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_2
            maj.port.o <> k_2_reg(j)
        }
    }else{
        k_2_reg := k_2
    }
    val k_3 = UInt(n bits)
    val k_3_reg = Reg(UInt(n bits))
    k_3 := (port.i(0)(b) & port.i(1)(c)) ^
            (port.i(0)(b) & port.i(1)(a)) ^ 
            (port.i(0)(b) & port.i(1)(c) & port.i(1)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_3
            maj.port.o <> k_3_reg(j)
        }
    }else{
        k_3_reg := k_3
    }
    val k_4 = UInt(n bits)
    val k_4_reg = Reg(UInt(n bits))
    k_4 := port.i(0)(c) ^ port.i(0)(a) ^
            (port.i(1)(b) & port.i(0)(c)) ^
            (port.i(1)(b) & port.i(0)(d)) ^
            (port.i(0)(c) & port.i(0)(d)) ^
            (port.i(0)(d) & port.i(0)(a)) ^
            (port.i(1)(b) & port.i(0)(c) & port.i(0)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_4
            maj.port.o <> k_4_reg(j)
        }
    }else{
        k_4_reg := k_4
    }
    val k_5 = UInt(n bits)
    val k_5_reg = Reg(UInt(n bits))
    k_5 := port.i(1)(b) ^ port.i(1)(a) ^
            (port.i(1)(b) & port.i(0)(c)) ^
            (port.i(1)(b) & port.i(1)(d)) ^
            (port.i(1)(d) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(0)(c) & port.i(1)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_5
            maj.port.o <> k_5_reg(j)
        }
    }else{
        k_5_reg := k_5
    }
    val k_6 = UInt(n bits)
    val k_6_reg = Reg(UInt(n bits))
    k_6 := port.i(1)(b) ^
            (port.i(1)(c) & port.i(0)(d)) ^
            (port.i(0)(d) & port.i(1)(a)) ^
            (port.i(1)(b) & port.i(1)(c) & port.i(0)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_6
            maj.port.o <> k_6_reg(j)
        }
    }else{
        k_6_reg := k_6
    }
    val k_7 = UInt(n bits)
    val k_7_reg = Reg(UInt(n bits))
    k_7 := (port.i(1)(d) & port.i(0)(a)) ^
            (port.i(1)(b) & port.i(1)(c) & port.i(1)(d))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_7
            maj.port.o <> k_7_reg(j)
        }
    }else{
        k_7_reg := k_7
    }
    
    port.o(0)(0) := f_0_reg ^ f_1_reg ^ f_2_reg ^ f_3_reg
    port.o(1)(0) := f_4_reg ^ f_5_reg ^ f_6_reg ^ f_7_reg
    port.o(0)(1) := g_0_reg ^ g_1_reg ^ g_2_reg ^ g_3_reg
    port.o(1)(1) := g_4_reg ^ g_5_reg ^ g_6_reg ^ g_7_reg
    port.o(0)(2) := h_0_reg ^ h_1_reg ^ h_2_reg ^ h_3_reg
    port.o(1)(2) := h_4_reg ^ h_5_reg ^ h_6_reg ^ h_7_reg
    port.o(0)(3) := k_0_reg ^ k_1_reg ^ k_2_reg ^ k_3_reg
    port.o(1)(3) := k_4_reg ^ k_5_reg ^ k_6_reg ^ k_7_reg
            
}

class GF_MUL_4_rcfms(ca: Boolean) extends Component{
    val n = if(ca) 3 else 1 //Number of replications
    val n_shares = 2 //Number of shares
    val port = new Bundle{
        val a = in Vec(Vec(UInt(n bits), 4), n_shares)
        val b = in Vec(Vec(UInt(n bits), 4), n_shares)
        val o = out Vec(Vec(UInt(n bits), 4), n_shares)
    }
    val a = 0
    val b = 1
    val c = 2
    val d = 3

    val e = 0
    val f = 1
    val g = 2
    val h = 3

    val f_0 = UInt(n bits)
    val f_0_reg = Reg(UInt(n bits))
    f_0 := port.a(0)(d) ^
            (port.a(0)(a) & port.b(0)(e)) ^
            (port.a(0)(c) & port.b(0)(e)) ^
            (port.a(0)(a) & port.b(0)(f)) ^
            (port.a(0)(b) & port.b(0)(f)) ^
            (port.a(0)(c) & port.b(0)(f)) ^
            (port.a(0)(d) & port.b(0)(f)) ^
            (port.a(0)(c) & port.b(0)(g)) ^
            (port.a(0)(a) & port.b(0)(h)) ^
            (port.a(0)(b) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_0
            maj.port.o <> f_0_reg(j)
        }
    }else{
        f_0_reg := f_0
    }
    val f_1 = UInt(n bits)
    val f_1_reg = Reg(UInt(n bits))
    f_1 := port.a(0)(b) ^ port.b(1)(e) ^
            (port.a(0)(a) & port.b(1)(e)) ^
            (port.a(0)(c) & port.b(1)(e)) ^
            (port.a(0)(a) & port.b(1)(f)) ^
            (port.a(0)(b) & port.b(1)(f)) ^
            (port.a(0)(c) & port.b(1)(f)) ^
            (port.a(0)(d) & port.b(1)(f)) ^
            (port.a(0)(c) & port.b(1)(g)) ^
            (port.a(0)(a) & port.b(1)(h)) ^
            (port.a(0)(b) & port.b(1)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_1
            maj.port.o <> f_1_reg(j)
        }
    }else{
        f_1_reg := f_1
    }
    val f_2 = UInt(n bits)
    val f_2_reg = Reg(UInt(n bits))
    f_2 := port.a(1)(d) ^
            (port.a(1)(a) & port.b(0)(e)) ^
            (port.a(1)(c) & port.b(0)(e)) ^
            (port.a(1)(a) & port.b(0)(f)) ^
            (port.a(1)(b) & port.b(0)(f)) ^
            (port.a(1)(c) & port.b(0)(f)) ^
            (port.a(1)(d) & port.b(0)(f)) ^
            (port.a(1)(c) & port.b(0)(g)) ^
            (port.a(1)(a) & port.b(0)(h)) ^
            (port.a(1)(b) & port.b(0)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_2
            maj.port.o <> f_2_reg(j)
        }
    }else{
        f_2_reg := f_2
    }
    val f_3 = UInt(n bits)
    val f_3_reg = Reg(UInt(n bits))
    f_3 := port.a(1)(b) ^ port.b(1)(e) ^
            (port.a(1)(a) & port.b(1)(e)) ^
            (port.a(1)(c) & port.b(1)(e)) ^
            (port.a(1)(a) & port.b(1)(f)) ^
            (port.a(1)(b) & port.b(1)(f)) ^
            (port.a(1)(c) & port.b(1)(f)) ^
            (port.a(1)(d) & port.b(1)(f)) ^
            (port.a(1)(c) & port.b(1)(g)) ^
            (port.a(1)(a) & port.b(1)(h)) ^
            (port.a(1)(b) & port.b(1)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_3
            maj.port.o <> f_3_reg(j)
        }
    }else{
        f_3_reg := f_3
    }
    //----

    val g_0 = UInt(n bits)
    val g_0_reg = Reg(UInt(n bits))
    g_0 := port.a(0)(a) ^ port.a(0)(b) ^
            (port.a(0)(b) & port.b(0)(e)) ^
            (port.a(0)(d) & port.b(0)(e)) ^
            (port.a(0)(a) & port.b(0)(f)) ^
            (port.a(0)(c) & port.b(0)(f)) ^
            (port.a(0)(d) & port.b(0)(g)) ^
            (port.a(0)(a) & port.b(0)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_0
            maj.port.o <> g_0_reg(j)
        }
    }else{
        g_0_reg := g_0
    }
    val g_1 = UInt(n bits)
    val g_1_reg = Reg(UInt(n bits))
    g_1 := port.a(0)(c) ^ port.a(0)(d) ^ port.b(1)(f) ^
            (port.a(0)(b) & port.b(1)(e)) ^
            (port.a(0)(d) & port.b(1)(e)) ^
            (port.a(0)(a) & port.b(1)(f)) ^
            (port.a(0)(c) & port.b(1)(f)) ^
            (port.a(0)(d) & port.b(1)(g)) ^
            (port.a(0)(a) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_1
            maj.port.o <> g_1_reg(j)
        }
    }else{
        g_1_reg := g_1
    }
    val g_2 = UInt(n bits)
    val g_2_reg = Reg(UInt(n bits))
    g_2 := port.a(1)(b) ^ port.a(1)(c) ^ port.a(1)(d) ^
            (port.a(1)(b) & port.b(0)(e)) ^
            (port.a(1)(d) & port.b(0)(e)) ^
            (port.a(1)(a) & port.b(0)(f)) ^
            (port.a(1)(c) & port.b(0)(f)) ^
            (port.a(1)(d) & port.b(0)(g)) ^
            (port.a(1)(a) & port.b(0)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_2
            maj.port.o <> g_2_reg(j)
        }
    }else{
        g_2_reg := g_2
    }
    val g_3 = UInt(n bits)
    val g_3_reg = Reg(UInt(n bits))
    g_3 := port.a(1)(a) ^ port.b(1)(f) ^
            (port.a(1)(b) & port.b(1)(e)) ^
            (port.a(1)(d) & port.b(1)(e)) ^
            (port.a(1)(a) & port.b(1)(f)) ^
            (port.a(1)(c) & port.b(1)(f)) ^
            (port.a(1)(d) & port.b(1)(g)) ^
            (port.a(1)(a) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_3
            maj.port.o <> g_3_reg(j)
        }
    }else{
        g_3_reg := g_3
    }

    //----

    val h_0 = UInt(n bits)
    val h_0_reg = Reg(UInt(n bits))
    h_0 := port.a(0)(b) ^ 
            (port.a(0)(a) & port.b(0)(e)) ^
            (port.a(0)(c) & port.b(0)(e)) ^
            (port.a(0)(d) & port.b(0)(e)) ^
            (port.a(0)(a) & port.b(0)(f)) ^
            (port.a(0)(b) & port.b(0)(f)) ^
            (port.a(0)(d) & port.b(0)(f)) ^
            (port.a(0)(a) & port.b(0)(g)) ^
            (port.a(0)(d) & port.b(0)(g)) ^
            (port.a(0)(c) & port.b(0)(h)) ^
            (port.a(0)(d) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_0
            maj.port.o <> h_0_reg(j)
        }
    }else{
        h_0_reg := h_0
    }
    val h_1 = UInt(n bits)
    val h_1_reg = Reg(UInt(n bits))
    h_1 := port.a(0)(c) ^ port.b(1)(g) ^ 
            (port.a(0)(a) & port.b(1)(e)) ^
            (port.a(0)(c) & port.b(1)(e)) ^
            (port.a(0)(d) & port.b(1)(e)) ^
            (port.a(0)(a) & port.b(1)(f)) ^
            (port.a(0)(b) & port.b(1)(f)) ^
            (port.a(0)(d) & port.b(1)(f)) ^
            (port.a(0)(a) & port.b(1)(g)) ^
            (port.a(0)(d) & port.b(1)(g)) ^
            (port.a(0)(c) & port.b(1)(h)) ^
            (port.a(0)(d) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_1
            maj.port.o <> h_1_reg(j)
        }
    }else{
        h_1_reg := h_1
    }
    val h_2 = UInt(n bits)
    val h_2_reg = Reg(UInt(n bits))
    h_2 := port.a(1)(b) ^ 
            (port.a(1)(a) & port.b(0)(e)) ^
            (port.a(1)(c) & port.b(0)(e)) ^
            (port.a(1)(d) & port.b(0)(e)) ^
            (port.a(1)(a) & port.b(0)(f)) ^
            (port.a(1)(b) & port.b(0)(f)) ^
            (port.a(1)(d) & port.b(0)(f)) ^
            (port.a(1)(a) & port.b(0)(g)) ^
            (port.a(1)(d) & port.b(0)(g)) ^
            (port.a(1)(c) & port.b(0)(h)) ^
            (port.a(1)(d) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_2
            maj.port.o <> h_2_reg(j)
        }
    }else{
        h_2_reg := h_2
    }
    val h_3 = UInt(n bits)
    val h_3_reg = Reg(UInt(n bits))
    h_3 := port.a(1)(c) ^ port.b(1)(g) ^ 
            (port.a(1)(a) & port.b(1)(e)) ^
            (port.a(1)(c) & port.b(1)(e)) ^
            (port.a(1)(d) & port.b(1)(e)) ^
            (port.a(1)(a) & port.b(1)(f)) ^
            (port.a(1)(b) & port.b(1)(f)) ^
            (port.a(1)(d) & port.b(1)(f)) ^
            (port.a(1)(a) & port.b(1)(g)) ^
            (port.a(1)(d) & port.b(1)(g)) ^
            (port.a(1)(c) & port.b(1)(h)) ^
            (port.a(1)(d) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_3
            maj.port.o <> h_3_reg(j)
        }
    }else{
        h_3_reg := h_3
    }

    //----

    val k_0 = UInt(n bits)
    val k_0_reg = Reg(UInt(n bits))
    k_0 := port.a(0)(a) ^
            (port.a(0)(b) & port.b(0)(e)) ^
            (port.a(0)(c) & port.b(0)(e)) ^
            (port.a(0)(a) & port.b(0)(f)) ^
            (port.a(0)(c) & port.b(0)(f)) ^
            (port.a(0)(d) & port.b(0)(f)) ^
            (port.a(0)(b) & port.b(0)(g)) ^
            (port.a(0)(c) & port.b(0)(g)) ^
            (port.a(0)(d) & port.b(0)(g)) ^
            (port.a(0)(c) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_0
            maj.port.o <> k_0_reg(j)
        }
    }else{
        k_0_reg := k_0
    }
    val k_1 = UInt(n bits)
    val k_1_reg = Reg(UInt(n bits))
    k_1 := port.a(0)(b) ^ port.a(0)(d) ^ port.b(1)(h) ^
            (port.a(0)(b) & port.b(1)(e)) ^
            (port.a(0)(c) & port.b(1)(e)) ^
            (port.a(0)(a) & port.b(1)(f)) ^
            (port.a(0)(c) & port.b(1)(f)) ^
            (port.a(0)(d) & port.b(1)(f)) ^
            (port.a(0)(b) & port.b(1)(g)) ^
            (port.a(0)(c) & port.b(1)(g)) ^
            (port.a(0)(d) & port.b(1)(g)) ^
            (port.a(0)(c) & port.b(1)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_1
            maj.port.o <> k_1_reg(j)
        }
    }else{
        k_1_reg := k_1
    }
    val k_2 = UInt(n bits)
    val k_2_reg = Reg(UInt(n bits))
    k_2 := port.a(1)(a) ^ port.a(1)(c) ^ port.a(1)(d) ^
            (port.a(1)(b) & port.b(0)(e)) ^
            (port.a(1)(c) & port.b(0)(e)) ^
            (port.a(1)(a) & port.b(0)(f)) ^
            (port.a(1)(c) & port.b(0)(f)) ^
            (port.a(1)(d) & port.b(0)(f)) ^
            (port.a(1)(b) & port.b(0)(g)) ^
            (port.a(1)(c) & port.b(0)(g)) ^
            (port.a(1)(d) & port.b(0)(g)) ^
            (port.a(1)(c) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_2
            maj.port.o <> k_2_reg(j)
        }
    }else{
        k_2_reg := k_2
    }
    val k_3 = UInt(n bits)
    val k_3_reg = Reg(UInt(n bits))
    k_3 := port.a(1)(b) ^ port.a(1)(c) ^ port.b(1)(h) ^
            (port.a(1)(b) & port.b(1)(e)) ^
            (port.a(1)(c) & port.b(1)(e)) ^
            (port.a(1)(a) & port.b(1)(f)) ^
            (port.a(1)(c) & port.b(1)(f)) ^
            (port.a(1)(d) & port.b(1)(f)) ^
            (port.a(1)(b) & port.b(1)(g)) ^
            (port.a(1)(c) & port.b(1)(g)) ^
            (port.a(1)(d) & port.b(1)(g)) ^
            (port.a(1)(c) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_3
            maj.port.o <> k_3_reg(j)
        }
    }else{
        k_3_reg := k_3
    }
    port.o(0)(0) := f_0_reg ^ f_1_reg 
    port.o(1)(0) := f_2_reg ^ f_3_reg 
    port.o(0)(1) := g_0_reg ^ g_1_reg 
    port.o(1)(1) := g_2_reg ^ g_3_reg 
    port.o(0)(2) := h_0_reg ^ h_1_reg 
    port.o(1)(2) := h_2_reg ^ h_3_reg 
    port.o(0)(3) := k_0_reg ^ k_1_reg 
    port.o(1)(3) := k_2_reg ^ k_3_reg
}   

class GF_SQ_SCl_MUL_4_rcfms(ca: Boolean) extends Component{
    val n = if(ca) 3 else 1 //Number of replications
    val n_shares = 2 //Number of shares
    val num_rand = if(ca) 2 else 1
    val port = new Bundle{
        val a = in Vec(Vec(UInt(n bits), 4), n_shares)
        val b = in Vec(Vec(UInt(n bits), 4), n_shares)
        val r = in Vec(Bool(), num_rand)
        val o = out Vec(Vec(UInt(n bits), 4), n_shares)
    }
    val a = 0
    val b = 1
    val c = 2
    val d = 3

    val e = 0
    val f = 1
    val g = 2
    val h = 3

    port.simPublic()

    val r = Vec(UInt(n bits), num_rand)
    for(i <- 0 to n-1){
        r(0)(i) := port.r(0)
        if(ca) r(1)(i) := port.r(1)

    }

    val f_0 = UInt(n bits)
    val f_0_reg = Reg(UInt(n bits))
    f_0 := port.a(0)(b) ^ port.a(0)(c) ^ port.a(0)(d) ^ port.b(0)(f) ^
            (port.a(0)(a) & port.b(0)(e)) ^
            (port.a(0)(b) & port.b(0)(e)) ^
            (port.a(0)(c) & port.b(0)(e)) ^
            (port.a(0)(a) & port.b(0)(f)) ^
            (port.a(0)(d) & port.b(0)(f)) ^
            (port.a(0)(a) & port.b(0)(g)) ^
            (port.a(0)(c) & port.b(0)(g)) ^
            (port.a(0)(b) & port.b(0)(h)) ^
            (port.a(0)(d) & port.b(0)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_0
            maj.port.o <> f_0_reg(j)
        }
    }else{
        f_0_reg := f_0
    }
    val f_1 = UInt(n bits)
    val f_1_reg = Reg(UInt(n bits))
    f_1 := port.a(0)(b) ^ port.a(1)(d) ^ port.b(0)(f) ^ port.b(1)(g) ^
            (port.a(1)(a) & port.b(1)(e)) ^ 
            (port.a(0)(b) & port.b(1)(e)) ^
            (port.a(1)(c) & port.b(1)(e)) ^
            (port.a(1)(a) & port.b(0)(f)) ^
            (port.a(1)(d) & port.b(0)(f)) ^
            (port.a(1)(a) & port.b(1)(g)) ^
            (port.a(1)(c) & port.b(1)(g)) ^
            (port.a(0)(b) & port.b(1)(h)) ^
            (port.a(1)(d) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_1
            maj.port.o <> f_1_reg(j)
        }
    }else{
        f_1_reg := f_1
    }
    val f_2 = UInt(n bits)
    val f_2_reg = Reg(UInt(n bits))
    f_2 := port.a(0)(a) ^ port.a(0)(c) ^ port.a(0)(d) ^ 
            port.b(1)(e) ^ port.b(1)(f) ^ port.b(1)(g) ^
            (port.a(0)(a) & port.b(1)(e)) ^ 
            (port.a(1)(b) & port.b(1)(e)) ^
            (port.a(0)(c) & port.b(1)(e)) ^
            (port.a(0)(a) & port.b(1)(f)) ^
            (port.a(0)(d) & port.b(1)(f)) ^
            (port.a(0)(a) & port.b(1)(g)) ^
            (port.a(0)(c) & port.b(1)(g)) ^
            (port.a(1)(b) & port.b(1)(h)) ^
            (port.a(0)(d) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_2
            maj.port.o <> f_2_reg(j)
        }
    }else{
        f_2_reg := f_2
    }
    val f_3 = UInt(n bits)
    val f_3_reg = Reg(UInt(n bits))
    f_3 := port.a(1)(a) ^ port.a(1)(d) ^ 
            port.b(0)(e) ^ port.b(1)(f) ^
            (port.a(1)(a) & port.b(0)(e)) ^ 
            (port.a(1)(b) & port.b(0)(e)) ^
            (port.a(1)(c) & port.b(0)(e)) ^
            (port.a(1)(a) & port.b(1)(f)) ^
            (port.a(1)(d) & port.b(1)(f)) ^
            (port.a(1)(a) & port.b(0)(g)) ^
            (port.a(1)(c) & port.b(0)(g)) ^
            (port.a(1)(b) & port.b(0)(h)) ^
            (port.a(1)(d) & port.b(0)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> f_3
            maj.port.o <> f_3_reg(j)
        }
    }else{
        f_3_reg := f_3
    }

    val g_0 = UInt(n bits)
    val g_0_reg = Reg(UInt(n bits))
    g_0 := ~(port.a(0)(b) ^
            (port.a(0)(a) & port.b(0)(e)) ^ 
            (port.a(0)(b) & port.b(0)(e)) ^ 
            (port.a(0)(d) & port.b(0)(e)) ^ 
            (port.a(0)(a) & port.b(0)(f)) ^ 
            (port.a(0)(c) & port.b(0)(f)) ^ 
            (port.a(0)(d) & port.b(0)(f)) ^ 
            (port.a(0)(b) & port.b(0)(g)) ^ 
            (port.a(0)(a) & port.b(0)(h)) ^ 
            (port.a(0)(b) & port.b(0)(h)))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_0
            maj.port.o <> g_0_reg(j)
        }
    }else{
        g_0_reg := g_0
    }
    val g_1 = UInt(n bits)
    val g_1_reg = Reg(UInt(n bits))
    g_1 := port.a(0)(b) ^ port.a(1)(c) ^ port.a(1)(d) ^
            port.b(1)(e) ^ port.b(1)(g) ^
            (port.a(1)(a) & port.b(1)(e)) ^ 
            (port.a(0)(b) & port.b(1)(e)) ^ 
            (port.a(1)(d) & port.b(1)(e)) ^ 
            (port.a(1)(a) & port.b(0)(f)) ^ 
            (port.a(1)(c) & port.b(0)(f)) ^ 
            (port.a(1)(d) & port.b(0)(f)) ^ 
            (port.a(0)(b) & port.b(1)(g)) ^ 
            (port.a(1)(a) & port.b(1)(h)) ^ 
            (port.a(0)(b) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_1
            maj.port.o <> g_1_reg(j)
        }
    }else{
        g_1_reg := g_1
    }
    val g_2 = UInt(n bits)
    val g_2_reg = Reg(UInt(n bits))
    g_2 := port.a(0)(d) ^ 
            port.b(1)(e) ^ port.b(1)(g) ^ port.b(1)(h) ^
            (port.a(0)(a) & port.b(1)(e)) ^ 
            (port.a(1)(b) & port.b(1)(e)) ^ 
            (port.a(0)(d) & port.b(1)(e)) ^ 
            (port.a(0)(a) & port.b(1)(f)) ^ 
            (port.a(0)(c) & port.b(1)(f)) ^ 
            (port.a(0)(d) & port.b(1)(f)) ^ 
            (port.a(1)(b) & port.b(1)(g)) ^ 
            (port.a(0)(a) & port.b(1)(h)) ^ 
            (port.a(1)(b) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_2
            maj.port.o <> g_2_reg(j)
        }
    }else{
        g_2_reg := g_2
    }
    val g_3 = UInt(n bits)
    val g_3_reg = Reg(UInt(n bits))
    g_3 := port.a(1)(c) ^ 
            port.b(0)(h) ^
            (port.a(1)(a) & port.b(0)(e)) ^ 
            (port.a(1)(b) & port.b(0)(e)) ^ 
            (port.a(1)(d) & port.b(0)(e)) ^ 
            (port.a(1)(a) & port.b(1)(f)) ^ 
            (port.a(1)(c) & port.b(1)(f)) ^ 
            (port.a(1)(d) & port.b(1)(f)) ^ 
            (port.a(1)(b) & port.b(0)(g)) ^ 
            (port.a(1)(a) & port.b(0)(h)) ^ 
            (port.a(1)(b) & port.b(0)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> g_3
            maj.port.o <> g_3_reg(j)
        }
    }else{
        g_3_reg := g_3
    }

    val h_0 = UInt(n bits)
    val h_0_reg = Reg(UInt(n bits))
    h_0 := (port.a(0)(a) & port.b(0)(e)) ^ 
            (port.a(0)(b) & port.b(0)(e)) ^ 
            (port.a(0)(c) & port.b(0)(e)) ^ 
            (port.a(0)(d) & port.b(0)(e)) ^ 
            (port.a(0)(a) & port.b(0)(f)) ^ 
            (port.a(0)(c) & port.b(0)(f)) ^ 
            (port.a(0)(a) & port.b(0)(g)) ^ 
            (port.a(0)(b) & port.b(0)(g)) ^ 
            (port.a(0)(d) & port.b(0)(g)) ^ 
            (port.a(0)(a) & port.b(0)(h)) ^
            (port.a(0)(c) & port.b(0)(h)) ^  
            (port.a(0)(d) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_0
            maj.port.o <> h_0_reg(j)
        }
    }else{
        h_0_reg := h_0
    }
    val h_1 = UInt(n bits)
    val h_1_reg = Reg(UInt(n bits))
    h_1 := port.a(0)(b) ^ port.a(1)(c) ^ port.a(1)(d) ^
            port.b(1)(e) ^ port.b(0)(f) ^ port.b(1)(g) ^
            (port.a(1)(a) & port.b(1)(e)) ^ 
            (port.a(0)(b) & port.b(1)(e)) ^ 
            (port.a(1)(c) & port.b(1)(e)) ^ 
            (port.a(1)(d) & port.b(1)(e)) ^ 
            (port.a(1)(a) & port.b(0)(f)) ^ 
            (port.a(1)(c) & port.b(0)(f)) ^ 
            (port.a(1)(a) & port.b(1)(g)) ^ 
            (port.a(0)(b) & port.b(1)(g)) ^ 
            (port.a(1)(d) & port.b(1)(g)) ^ 
            (port.a(1)(a) & port.b(1)(h)) ^
            (port.a(1)(c) & port.b(1)(h)) ^  
            (port.a(1)(d) & port.b(1)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_1
            maj.port.o <> h_1_reg(j)
        }
    }else{
        h_1_reg := h_1
    }
    val h_2 = UInt(n bits)
    val h_2_reg = Reg(UInt(n bits))
    h_2 := port.a(0)(a) ^ port.a(1)(b) ^ port.a(0)(c) ^ port.a(0)(d) ^
            port.b(1)(f) ^ port.b(1)(h) ^ 
            (port.a(0)(a) & port.b(1)(e)) ^ 
            (port.a(1)(b) & port.b(1)(e)) ^ 
            (port.a(0)(c) & port.b(1)(e)) ^ 
            (port.a(0)(d) & port.b(1)(e)) ^ 
            (port.a(0)(a) & port.b(1)(f)) ^ 
            (port.a(0)(c) & port.b(1)(f)) ^ 
            (port.a(0)(a) & port.b(1)(g)) ^ 
            (port.a(1)(b) & port.b(1)(g)) ^ 
            (port.a(0)(d) & port.b(1)(g)) ^ 
            (port.a(0)(a) & port.b(1)(h)) ^
            (port.a(0)(c) & port.b(1)(h)) ^  
            (port.a(0)(d) & port.b(1)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_2
            maj.port.o <> h_2_reg(j)
        }
    }else{
        h_2_reg := h_2
    }
    val h_3 = UInt(n bits)
    val h_3_reg = Reg(UInt(n bits))
    h_3 := port.a(1)(a) ^ 
            port.b(0)(e) ^ port.b(0)(h) ^ port.b(0)(g) ^
            (port.a(1)(a) & port.b(0)(e)) ^ 
            (port.a(1)(b) & port.b(0)(e)) ^ 
            (port.a(1)(c) & port.b(0)(e)) ^ 
            (port.a(1)(d) & port.b(0)(e)) ^ 
            (port.a(1)(a) & port.b(1)(f)) ^ 
            (port.a(1)(c) & port.b(1)(f)) ^ 
            (port.a(1)(a) & port.b(0)(g)) ^ 
            (port.a(1)(b) & port.b(0)(g)) ^ 
            (port.a(1)(d) & port.b(0)(g)) ^ 
            (port.a(1)(a) & port.b(0)(h)) ^
            (port.a(1)(c) & port.b(0)(h)) ^  
            (port.a(1)(d) & port.b(0)(h)) 
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> h_3
            maj.port.o <> h_3_reg(j)
        }
    }else{
        h_3_reg := h_3
    }

    val k_0 = UInt(n bits)
    val k_0_reg = Reg(UInt(n bits))
    k_0 := (port.a(0)(a) & port.b(0)(e)) ^ 
            (port.a(0)(c) & port.b(0)(e)) ^ 
            (port.a(0)(b) & port.b(0)(f)) ^ 
            (port.a(0)(d) & port.b(0)(f)) ^ 
            (port.a(0)(a) & port.b(0)(g)) ^ 
            (port.a(0)(c) & port.b(0)(g)) ^ 
            (port.a(0)(d) & port.b(0)(g)) ^ 
            (port.a(0)(b) & port.b(0)(h)) ^ 
            (port.a(0)(c) & port.b(0)(h)) ^ r(0)
    if(ca){
        //Additional randomness
        val t = UInt(n bits)
        t := k_0 ^ r(1)
        //Correction
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> t
            maj.port.o <> k_0_reg(j)
        }
    }else{
        k_0_reg := k_0
    }
    val k_1 = UInt(n bits)
    val k_1_reg = Reg(UInt(n bits))
    k_1 := port.a(0)(b) ^ 
            port.b(1)(e) ^ port.b(1)(h) ^
            (port.a(1)(a) & port.b(1)(e)) ^ 
            (port.a(1)(c) & port.b(1)(e)) ^ 
            (port.a(0)(b) & port.b(1)(f)) ^ 
            (port.a(1)(d) & port.b(1)(f)) ^ 
            (port.a(1)(a) & port.b(0)(g)) ^ 
            (port.a(1)(c) & port.b(0)(g)) ^ 
            (port.a(1)(d) & port.b(0)(g)) ^ 
            (port.a(0)(b) & port.b(1)(h)) ^ 
            (port.a(1)(c) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_1
            maj.port.o <> k_1_reg(j)
        }
    }else{
        k_1_reg := k_1
    }
    val k_2 = UInt(n bits)
    val k_2_reg = Reg(UInt(n bits))
    k_2 := port.a(0)(d) ^ 
            port.b(1)(e) ^ port.b(1)(f) ^
            (port.a(0)(a) & port.b(1)(e)) ^ 
            (port.a(0)(c) & port.b(1)(e)) ^ 
            (port.a(1)(b) & port.b(1)(f)) ^ 
            (port.a(0)(d) & port.b(1)(f)) ^ 
            (port.a(0)(a) & port.b(1)(g)) ^ 
            (port.a(0)(c) & port.b(1)(g)) ^ 
            (port.a(0)(d) & port.b(1)(g)) ^ 
            (port.a(1)(b) & port.b(1)(h)) ^ 
            (port.a(0)(c) & port.b(1)(h))
    if(ca){
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> k_2
            maj.port.o <> k_2_reg(j)
        }
    }else{
        k_2_reg := k_2
    }
    val k_3 = UInt(n bits)
    val k_3_reg = Reg(UInt(n bits))
    k_3 := port.a(1)(b) ^ port.a(1)(d) ^
            port.b(0)(f) ^ port.b(0)(h) ^
            (port.a(1)(a) & port.b(0)(e)) ^ 
            (port.a(1)(c) & port.b(0)(e)) ^ 
            (port.a(1)(b) & port.b(0)(f)) ^ 
            (port.a(1)(d) & port.b(0)(f)) ^ 
            (port.a(1)(a) & port.b(1)(g)) ^ 
            (port.a(1)(c) & port.b(1)(g)) ^ 
            (port.a(1)(d) & port.b(1)(g)) ^ 
            (port.a(1)(b) & port.b(0)(h)) ^ 
            (port.a(1)(c) & port.b(0)(h)) ^ r(0)
    if(ca){
        //Additional randomness
        val t = UInt(n bits)
        t := k_3 ^ r(1)
        //Correction
        for(j <- 0 to n-1){
            val maj = new Majority(1)
            maj.port.i <> t
            maj.port.o <> k_3_reg(j)
        }
    }else{
        k_3_reg := k_3
    }

    port.o(0)(0) := f_0_reg ^ f_1_reg 
    port.o(1)(0) := f_2_reg ^ f_3_reg
    port.o(0)(1) := g_0_reg ^ g_1_reg
    port.o(1)(1) := g_2_reg ^ g_3_reg 
    port.o(0)(2) := h_0_reg ^ h_1_reg
    port.o(1)(2) := h_2_reg ^ h_3_reg
    port.o(0)(3) := k_0_reg ^ k_1_reg
    port.o(1)(3) := k_2_reg ^ k_3_reg
}

class LinearMapping_RCFMS(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }
    // val outReg = Reg(Vec(Vec(UInt(n bits), 8), d))
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
    port.o := outVal
}

class LinearInverseMapping_RCFMS(ca: Boolean) extends Component{
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

class GF_INV_8_RCFMS_2shares(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val num_rand =  if(ca) 2 else 1
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val r = in Vec(Bool(), num_rand)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }
    val ax = Vec(Vec(UInt(n bits), 4), 2)
    val bx = Vec(Vec(UInt(n bits), 4), 2)
    //Separation into lower and upper part
    for(i <- 0 to 1){
        for(j <- 0 to 3){
            ax(i)(j) := port.i(i)(j)
            bx(i)(j) := port.i(i)(4+j)
        }
    }

    val sqMul = new GF_SQ_SCl_MUL_4_rcfms(ca)
    sqMul.port.a := ax 
    sqMul.port.b := bx 
    sqMul.port.r := port.r 

    val reg0 = Vec(Vec(UInt(n bits), 4), 2)
    if(ca){
        for(i <- 0 to d-1){
            for(l <- 0 to 3){
                for(j <- 0 to n-1){
                    val maj = new Majority(1)
                    maj.port.i <> sqMul.port.o(i)(l) 
                    maj.port.o <> reg0(i)(l)(j)
                }
            }
        }
    }else{
        reg0 := sqMul.port.o 
    }

    val inv = new GF_INV_4_rcfms(ca)
    inv.port.i := reg0

    val reg1 = Vec(Vec(UInt(n bits), 4), 2)
    if(ca){
        for(i <- 0 to d-1){
            for(l <- 0 to 3){
                for(j <- 0 to n-1){
                    val maj = new Majority(1)
                    maj.port.i <> inv.port.o(i)(l) 
                    maj.port.o <> reg1(i)(l)(j)
                }
            }
        }
    }else{
        reg1 := inv.port.o
    }
    
    //Pipelining registers
    val reg_a0 = Vec(Vec(UInt(n bits), 4), 2)
    reg_a0 := ax
    val reg_a1 = Vec(Vec(UInt(n bits), 4), 2)
    reg_a1 := reg_a0
    val reg_a2 = Vec(Vec(UInt(n bits), 4), 2)
    reg_a2 := reg_a1
    val reg_a3 = Vec(Vec(UInt(n bits), 4), 2)
    val reg_b0 = Vec(Vec(UInt(n bits), 4), 2)
    reg_b0 := bx
    val reg_b1 = Vec(Vec(UInt(n bits), 4), 2)
    reg_b1 := reg_b0
    val reg_b2 = Vec(Vec(UInt(n bits), 4), 2)
    reg_b2 := reg_b1
    val reg_b3 = Vec(Vec(UInt(n bits), 4), 2)
    reg_a3 := reg_a2
    reg_b3 := reg_b2

    val mul0 = new GF_MUL_4_rcfms(ca)
    mul0.port.a := reg_a3
    mul0.port.b := reg1

    val mul1 = new GF_MUL_4_rcfms(ca)
    mul1.port.a := reg_b3 
    mul1.port.b := reg1
    
    val t1 = Vec(Vec(UInt(n bits), 8), 2)
    for(i <- 0 to 1){
        for(j <- 0 to 3){
            t1(i)(j) := mul1.port.o(i)(j)
            t1(i)(j+4) := mul0.port.o(i)(j)
        }
    }
    port.o := t1
}

class Sbox_AES_Canright_RCFMS_2shares(ca: Boolean) extends Component{
    val d = 2 //Number of shares
    val n = if(ca) 3 else 1 //Number of replications
    val num_rand = if(ca) 2 else 1
    val port = new Bundle{
        val i = in Vec(Vec(UInt(n bits), 8), d)
        val r = in Vec(Bool(), num_rand)
        val o = out Vec(Vec(UInt(n bits), 8), d)
    }

    val linMap = new LinearMapping_RCFMS(ca)
    linMap.port.i := port.i 
    
    val ax = Vec(Vec(UInt(n bits), 4), 2)
    val bx = Vec(Vec(UInt(n bits), 4), 2)
    //Separation into lower and upper part
    for(i <- 0 to 1){
        for(j <- 0 to 3){
            ax(i)(j) := linMap.port.o(i)(j)
            bx(i)(j) := linMap.port.o(i)(4+j)
        }
    }

    val sqMul = new GF_SQ_SCl_MUL_4_rcfms(ca)
    sqMul.port.a := ax 
    sqMul.port.b := bx 
    sqMul.port.r := port.r 

    val inv = new GF_INV_4_rcfms(ca)
    inv.port.i := sqMul.port.o 

    val mul0 = new GF_MUL_4_rcfms(ca)
    mul0.port.a := ax 
    mul0.port.b := inv.port.o 

    val mul1 = new GF_MUL_4_rcfms(ca)
    mul1.port.a := bx 
    mul1.port.b := inv.port.o
    
    val t1 = Vec(Vec(UInt(n bits), 8), 2)
    for(i <- 0 to 1){
        for(j <- 0 to 3){
            t1(i)(j) := mul1.port.o(i)(j)
            t1(i)(j+4) := mul0.port.o(i)(j)
        }
    }
    val invLinMap = new LinearInverseMapping_RCFMS(ca)
    invLinMap.port.i := t1 

    port.o := invLinMap.port.o 
}