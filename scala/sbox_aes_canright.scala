package aes

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow




class LinearMapping(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 8)
        val o = out Vec(UInt(n bits), 8)
    }
    val rx1 = port.i(7) ^ port.i(5)
    val rx2 = ~(port.i(7) ^ port.i(4))
    val rx3 = port.i(6) ^ port.i(0)
    val rx4 = ~(port.i(5) ^ rx3)
    val rx5 = port.i(4) ^ rx4
    val rx6 = port.i(3) ^ port.i(0)
    val rx7 = port.i(2) ^ rx1
    val rx8 = port.i(1) ^ rx3
    val rx9 = port.i(3) ^ rx8 

    port.o(7) := rx7 ^ rx8
    port.o(6) := ~rx5 
    port.o(5) := ~(port.i(1) ^ rx4)
    port.o(4) := rx1 ^ rx3 
    port.o(3) := ~(port.i(1) ^ rx2 ^ rx6)
    port.o(2) := port.i(0)
    port.o(1) := ~rx4 
    port.o(0) := port.i(2) ^ rx9 
}

class LinearInverseMapping(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 8)
        val o = out Vec(UInt(n bits), 8)
    }

    val tx1 = port.i(7) ^ port.i(3)
    val tx2 = port.i(6) ^ port.i(4)
    val tx3 = port.i(6) ^ port.i(0)
    val tx4 = ~(port.i(5) ^ port.i(3))
    val tx5 = ~(port.i(5) ^ tx1)
    val tx6 = ~(port.i(5) ^ port.i(1))
    val tx7 = ~(port.i(4) ^ tx6)
    val tx8 = port.i(2) ^ tx4
    val tx9 = port.i(1) ^ tx2 
    val tx10 = tx3 ^ tx5

    port.o(7) := ~tx4
    port.o(6) := ~tx1
    port.o(5) := ~tx3 
    port.o(4) := ~tx5 
    port.o(3) := ~(tx2 ^ tx5)
    port.o(2) := ~(tx3 ^ tx8)
    port.o(1) := ~tx7 
    port.o(0) := ~tx9
}

//Squaring in GF(2^2)
class GF_SQ_2(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 2)
        val o = out Vec(UInt(n bits), 2)
    }
    port.o(0) := port.i(1)
    port.o(1) := port.i(0)
}
//Scale by w in GF(2^2)
class GF_SCLW_2(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 2)
        val o = out Vec(UInt(n bits), 2)
    }
    port.o(0) := port.i(1)
    port.o(1) := port.i(0) ^ port.i(1)
}
//Scale by w^2 in GF(2^2)
class GF_SCLW2_2(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 2)
        val o = out Vec(UInt(n bits), 2)
    }
    port.o(0) := port.i(1) ^ port.i(0)
    port.o(1) := port.i(0)
}
//Multiply in GF(2^2)
class GF_MULS_2(n: Int) extends Component{
    val port = new Bundle{
        val a = in Vec(UInt(n bits), 2)
        val ab = in UInt(n bits)
        val b = in Vec(UInt(n bits), 2)
        val cd = in UInt(n bits)
        val o = out Vec(UInt(n bits), 2)
    }
    val t = ~(port.ab & port.cd)
    port.o(0) := (~(port.a(0) & port.b(0))) ^ t
    port.o(1) := (~(port.a(1) & port.b(1))) ^ t
}
//Multiply and scale by N in GF(2^2)
class GF_MULS_SCL_2(n: Int) extends Component{
    val port = new Bundle{
        val a = in Vec(UInt(n bits), 2)
        val ab = in UInt(n bits)
        val b = in Vec(UInt(n bits), 2)
        val cd = in UInt(n bits)
        val o = out Vec(UInt(n bits), 2)
    }
    val t = ~(port.a(0) & port.b(0))
    port.o(0) := (~(port.a(1) & port.b(1))) ^ t
    port.o(1) := (~(port.ab & port.cd)) ^ t
}
//Inverse in GF(2^4)
class GF_INV_4(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 4)
        val o = out Vec(UInt(n bits), 4)
    }
    val ax = Vec(UInt(n bits), 2)
    val bx = Vec(UInt(n bits), 2)
    val sax = UInt(n bits)
    val sbx = UInt(n bits)
    val cx = Vec(UInt(n bits), 2)
    val dx = Vec(UInt(n bits), 2)
    val sdx = UInt(n bits)
    val px = Vec(UInt(n bits), 2)
    val qx = Vec(UInt(n bits), 2)

    ax(0) := port.i(2)
    ax(1) := port.i(3)
    bx(0) := port.i(0)
    bx(1) := port.i(1)
    sax := ax(1) ^ ax(0)
    sbx := bx(1) ^ bx(0)

    //---
    val mul2 = new GF_MULS_2(n)
    mul2.port.a := ax 
    mul2.port.b := bx
    mul2.port.ab := sax
    mul2.port.cd := sbx

    val sq = new GF_SQ_2(n)
    sq.port.i := ax ^ bx 
    val sc = new GF_SCLW2_2(n)
    sc.port.i := sq.port.o

    cx := mul2.port.o ^ sc.port.o
    val dx_inv = new GF_SQ_2(n)
    dx_inv.port.i := cx
    dx := dx_inv.port.o 

    sdx := dx(0) ^ dx(1)

    val px_mul = new GF_MULS_2(n)
    px_mul.port.a := dx
    px_mul.port.b := bx
    px_mul.port.ab := sdx
    px_mul.port.cd := sbx
    px := px_mul.port.o

    val qx_mul = new GF_MULS_2(n)
    qx_mul.port.a := dx
    qx_mul.port.b := ax
    qx_mul.port.ab := sdx
    qx_mul.port.cd := sax
    qx := qx_mul.port.o

    port.o(0) := qx(0)
    port.o(1) := qx(1)
    port.o(2) := px(0)
    port.o(3) := px(1)
}
//Square and scale by nu in GF(2^4)/GF/2^2
class GF_SQ_SCL_4(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 4)
        val o = out Vec(UInt(n bits), 4)
    }
    val ax = Vec(UInt(n bits), 2)
    val bx = Vec(UInt(n bits), 2)
    val abx = Vec(UInt(n bits), 2)
    val ab2x = Vec(UInt(n bits), 2)
    val b2x = Vec(UInt(n bits), 2)
    val b2N2 = Vec(UInt(n bits), 2)

    ax(0) := port.i(2)
    ax(1) := port.i(3)
    bx(0) := port.i(0)
    bx(1) := port.i(1)
    abx(0) := ax(0) ^ bx(0)
    abx(1) := ax(1) ^ bx(1)

    val ab_sq = new GF_SQ_2(n)
    ab_sq.port.i := abx 
    ab2x := ab_sq.port.o

    val b_sq = new GF_SQ_2(n)
    b_sq.port.i := bx 
    b2x := b_sq.port.o

    val b_mulN2 = new GF_SCLW_2(n)
    b_mulN2.port.i := b2x
    b2N2 := b_mulN2.port.o

    port.o(0) := b2N2(0)
    port.o(1) := b2N2(1)
    port.o(2) := ab2x(0)
    port.o(3) := ab2x(1)
}
//Multiply in GF(2^4)/GF(2^2)
class GF_MULS_4(n: Int) extends Component{
    val port = new Bundle{
        val A = in Vec(UInt(n bits), 4)
        val a = in Vec(UInt(n bits), 2)
        val Al = in UInt(n bits)
        val Ah = in UInt(n bits)
        val aa = in UInt(n bits)
        val B = in Vec(UInt(n bits), 4)
        val b = in Vec(UInt(n bits), 2)
        val Bl = in UInt(n bits)
        val Bh = in UInt(n bits)
        val bb = in UInt(n bits)

        val o = out Vec(UInt(n bits), 4)
    }

    val ph = Vec(UInt(n bits), 2)
    val hi_mul = new GF_MULS_2(n)
    hi_mul.port.a(0) := port.A(2) 
    hi_mul.port.a(1) := port.A(3) 
    hi_mul.port.ab := port.Ah 
    hi_mul.port.b(0) := port.B(2) 
    hi_mul.port.b(1) := port.B(3)
    hi_mul.port.cd := port.Bh
    ph := hi_mul.port.o

    val pl = Vec(UInt(n bits), 2)
    val lo_mul = new GF_MULS_2(n)
    lo_mul.port.a(0) := port.A(0) 
    lo_mul.port.a(1) := port.A(1) 
    lo_mul.port.ab := port.Al
    lo_mul.port.b(0) := port.B(0) 
    lo_mul.port.b(1) := port.B(1)
    lo_mul.port.cd := port.Bl
    pl := lo_mul.port.o

    val p = Vec(UInt(n bits), 2)
    val sum_mul = new GF_MULS_SCL_2(n)
    sum_mul.port.a(0) := port.a(0)
    sum_mul.port.a(1) := port.a(1) 
    sum_mul.port.ab := port.aa
    sum_mul.port.b(0) := port.b(0) 
    sum_mul.port.b(1) := port.b(1)
    sum_mul.port.cd := port.bb
    p := sum_mul.port.o

    port.o(0) := pl(0) ^ p(0)
    port.o(1) := pl(1) ^ p(1)
    port.o(2) := ph(0) ^ p(0)
    port.o(3) := ph(1) ^ p(1)
}

//Inverse in GF(2^8)/GF(2^4)
class GF_INV_8(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 8)
        val o = out Vec(UInt(n bits), 8)
    }
    
    val ax = Vec(UInt(n bits), 4)
    ax(0) := port.i(4)
    ax(1) := port.i(5)
    ax(2) := port.i(6)
    ax(3) := port.i(7)
    val bx = Vec(UInt(n bits), 4)
    bx(0) := port.i(0)
    bx(1) := port.i(1)
    bx(2) := port.i(2)
    bx(3) := port.i(3)

    val sax = Vec(UInt(n bits), 2)
    sax(0) := ax(2) ^ ax(0)
    sax(1) := ax(3) ^ ax(1)
    val sbx = Vec(UInt(n bits), 2)
    sbx(0) := bx(2) ^ bx(0)
    sbx(1) := bx(3) ^ bx(1)
    val al = ax(1) ^ ax(0)
    val ah = ax(3) ^ ax(2)
    val aa = sax(1) ^ sax(0)
    val bl = bx(1) ^ bx(0)
    val bh = bx(3) ^ bx(2)
    val bb = sbx(1) ^ sbx(0)
    val cx = Vec(UInt(n bits), 4)

    val sq = new GF_SQ_SCL_4(n)
    sq.port.i := ax ^ bx

    val mul4 = new GF_MULS_4(n)
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
    cx := mul4.port.o ^ sq.port.o

    val dx = Vec(UInt(n bits), 4)
    val dx_inv = new GF_INV_4(n)
    dx_inv.port.i := cx 
    dx := dx_inv.port.o

    val sdx = Vec(UInt(n bits), 2)
    sdx(0) := dx(2) ^ dx(0)
    sdx(1) := dx(3) ^ dx(1)
    val dl = dx(1) ^ dx(0)
    val dh = dx(3) ^ dx(2)
    val dd = sdx(1) ^ sdx(0)

    val px = Vec(UInt(n bits), 4)
    val px_mul = new GF_MULS_4(n)
    px_mul.port.A := dx 
    px_mul.port.a := sdx
    px_mul.port.Al := dl
    px_mul.port.Ah := dh
    px_mul.port.aa := dd 
    px_mul.port.B := bx
    px_mul.port.b := sbx 
    px_mul.port.Bl := bl
    px_mul.port.Bh := bh 
    px_mul.port.bb := bb 
    px := px_mul.port.o

    val qx = Vec(UInt(n bits), 4)
    val qx_mul = new GF_MULS_4(n)
    qx_mul.port.A := dx
    qx_mul.port.a := sdx
    qx_mul.port.Al := dl
    qx_mul.port.Ah := dh
    qx_mul.port.aa := dd 
    qx_mul.port.B := ax
    qx_mul.port.b := sax 
    qx_mul.port.Bl := al
    qx_mul.port.Bh := ah 
    qx_mul.port.bb := aa 
    qx := qx_mul.port.o

    port.o(0) := qx(0)
    port.o(1) := qx(1)
    port.o(2) := qx(2)
    port.o(3) := qx(3)
    port.o(4) := px(0)
    port.o(5) := px(1)
    port.o(6) := px(2)
    port.o(7) := px(3)

}

class Sbox_AES_Canright(n: Int) extends Component{
    val port = new Bundle{
        val i = in Vec(UInt(n bits), 8)
        val o = out Vec(UInt(n bits), 8)
    }

    val linMap = new LinearMapping(n)
    linMap.port.i := port.i 

    val inv = new GF_INV_8(n)
    inv.port.i := linMap.port.o

    val invLinMap = new LinearInverseMapping(n)
    invLinMap.port.i := inv.port.o

    port.o := invLinMap.port.o
}