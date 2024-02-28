package sbox

/* import SpinalHDL */
import scala.collection.mutable.Map
import spinal.core._
import spinal.lib._
import spinal.core.sim._

import scala.util.Random
import scala.math.pow

// C_1^4 direct sharing -> uniform
class Sbox_0123456789ABCDFE_4shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 4)
                 val x1 = in Vec(Bool, 4)
                 val x2 = in Vec(Bool, 4)
                 val x3 = in Vec(Bool, 4)
                 val y0 = out Vec(Bool, 4)
                 val y1 = out Vec(Bool, 4)
                 val y2 = out Vec(Bool, 4)
                 val y3 = out Vec(Bool, 4)
        }
        val y0 = Reg(Vec(Bool, 4))
        y0(0) :=(port.x0(1)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(2))
        y0(1) :=(port.x0(2)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(0))
        y0(2) :=(port.x0(3)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(3))
        y0(3) :=(port.x0(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(1))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 4))
        y1(0) :=(port.x1(1))
        y1(1) :=(port.x1(2))
        y1(2) :=(port.x1(3))
        y1(3) :=(port.x1(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 4))
        y2(0) :=(port.x2(1))
        y2(1) :=(port.x2(2))
        y2(2) :=(port.x2(3))
        y2(3) :=(port.x2(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 4))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(3))
        y3(3) :=(port.x3(0))
        port.y3 := y3
}

// C_3^4 direct sharing -> uniform
class Sbox_0123456789ABDEFC_4shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 4)
                 val x1 = in Vec(Bool, 4)
                 val x2 = in Vec(Bool, 4)
                 val x3 = in Vec(Bool, 4)
                 val y0 = out Vec(Bool, 4)
                 val y1 = out Vec(Bool, 4)
                 val y2 = out Vec(Bool, 4)
                 val y3 = out Vec(Bool, 4)
        }
        val y0 = Reg(Vec(Bool, 4))
        y0(0) :=(port.x0(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(1) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(1)) ^ 
                (port.x2(2) & port.x3(3)) ^ 
                (port.x2(3) & port.x3(1)) ^ 
                (port.x2(3) & port.x3(2))
        y0(1) :=(port.x0(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2)) ^ 
                (port.x2(3) & port.x3(0))
        y0(2) :=(port.x0(3)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0)) ^ 
                (port.x2(3) & port.x3(3))
        y0(3) :=(port.x0(0)) ^ 
                (port.x2(0) & port.x3(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 4))
        y1(0) :=(port.x1(1)) ^ 
                (port.x0(1) & port.x2(1) & port.x3(1)) ^ 
                (port.x0(1) & port.x2(2) & port.x3(3)) ^ 
                (port.x0(1) & port.x2(3) & port.x3(2)) ^ 
                (port.x0(1) & port.x2(3) & port.x3(3)) ^ 
                (port.x0(2) & port.x2(1) & port.x3(3)) ^ 
                (port.x0(2) & port.x2(2) & port.x3(3)) ^ 
                (port.x0(2) & port.x2(3) & port.x3(1)) ^ 
                (port.x0(2) & port.x2(3) & port.x3(2)) ^ 
                (port.x0(2) & port.x2(3) & port.x3(3)) ^ 
                (port.x0(3) & port.x2(1) & port.x3(2)) ^ 
                (port.x0(3) & port.x2(1) & port.x3(3)) ^ 
                (port.x0(3) & port.x2(2) & port.x3(1)) ^ 
                (port.x0(3) & port.x2(2) & port.x3(2)) ^ 
                (port.x0(3) & port.x2(2) & port.x3(3)) ^ 
                (port.x0(3) & port.x2(3) & port.x3(1)) ^ 
                (port.x0(3) & port.x2(3) & port.x3(2))
        y1(1) :=(port.x1(2)) ^ 
                (port.x0(0) & port.x2(0) & port.x3(3)) ^ 
                (port.x0(0) & port.x2(2) & port.x3(2)) ^ 
                (port.x0(0) & port.x2(2) & port.x3(3)) ^ 
                (port.x0(0) & port.x2(3) & port.x3(0)) ^ 
                (port.x0(0) & port.x2(3) & port.x3(2)) ^ 
                (port.x0(0) & port.x2(3) & port.x3(3)) ^ 
                (port.x0(2) & port.x2(0) & port.x3(2)) ^ 
                (port.x0(2) & port.x2(0) & port.x3(3)) ^ 
                (port.x0(2) & port.x2(2) & port.x3(0)) ^ 
                (port.x0(2) & port.x2(2) & port.x3(2)) ^ 
                (port.x0(2) & port.x2(3) & port.x3(0)) ^ 
                (port.x0(3) & port.x2(0) & port.x3(0)) ^ 
                (port.x0(3) & port.x2(0) & port.x3(2)) ^ 
                (port.x0(3) & port.x2(0) & port.x3(3)) ^ 
                (port.x0(3) & port.x2(2) & port.x3(0)) ^ 
                (port.x0(3) & port.x2(3) & port.x3(0))
        y1(2) :=(port.x1(3)) ^ 
                (port.x0(0) & port.x2(0) & port.x3(1)) ^ 
                (port.x0(0) & port.x2(1) & port.x3(0)) ^ 
                (port.x0(0) & port.x2(1) & port.x3(1)) ^ 
                (port.x0(0) & port.x2(1) & port.x3(3)) ^ 
                (port.x0(0) & port.x2(3) & port.x3(1)) ^ 
                (port.x0(1) & port.x2(0) & port.x3(0)) ^ 
                (port.x0(1) & port.x2(0) & port.x3(1)) ^ 
                (port.x0(1) & port.x2(0) & port.x3(3)) ^ 
                (port.x0(1) & port.x2(1) & port.x3(0)) ^ 
                (port.x0(1) & port.x2(1) & port.x3(3)) ^ 
                (port.x0(1) & port.x2(3) & port.x3(0)) ^ 
                (port.x0(1) & port.x2(3) & port.x3(1)) ^ 
                (port.x0(3) & port.x2(0) & port.x3(1)) ^ 
                (port.x0(3) & port.x2(1) & port.x3(0)) ^ 
                (port.x0(3) & port.x2(1) & port.x3(1)) ^ 
                (port.x0(3) & port.x2(3) & port.x3(3))
        y1(3) :=(port.x1(0)) ^ 
                (port.x0(0) & port.x2(0) & port.x3(0)) ^ 
                (port.x0(0) & port.x2(0) & port.x3(2)) ^ 
                (port.x0(0) & port.x2(1) & port.x3(2)) ^ 
                (port.x0(0) & port.x2(2) & port.x3(0)) ^ 
                (port.x0(0) & port.x2(2) & port.x3(1)) ^ 
                (port.x0(1) & port.x2(0) & port.x3(2)) ^ 
                (port.x0(1) & port.x2(1) & port.x3(2)) ^ 
                (port.x0(1) & port.x2(2) & port.x3(0)) ^ 
                (port.x0(1) & port.x2(2) & port.x3(1)) ^ 
                (port.x0(1) & port.x2(2) & port.x3(2)) ^ 
                (port.x0(2) & port.x2(0) & port.x3(0)) ^ 
                (port.x0(2) & port.x2(0) & port.x3(1)) ^ 
                (port.x0(2) & port.x2(1) & port.x3(0)) ^ 
                (port.x0(2) & port.x2(1) & port.x3(1)) ^ 
                (port.x0(2) & port.x2(1) & port.x3(2)) ^ 
                (port.x0(2) & port.x2(2) & port.x3(1))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 4))
        y2(0) :=(port.x2(1))
        y2(1) :=(port.x2(2))
        y2(2) :=(port.x2(3))
        y2(3) :=(port.x2(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 4))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(3))
        y3(3) :=(port.x3(0))
        port.y3 := y3
}

// Q_4^4 direct sharing -> uniform
class Sbox_0123456789ABDCFE_3shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 3)
                 val x1 = in Vec(Bool, 3)
                 val x2 = in Vec(Bool, 3)
                 val x3 = in Vec(Bool, 3)
                 val y0 = out Vec(Bool, 3)
                 val y1 = out Vec(Bool, 3)
                 val y2 = out Vec(Bool, 3)
                 val y3 = out Vec(Bool, 3)
        }
        val y0 = Reg(Vec(Bool, 3))
        y0(0) :=(port.x0(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y0(1) :=(port.x0(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y0(2) :=(port.x0(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 3))
        y1(0) :=(port.x1(1))
        y1(1) :=(port.x1(2))
        y1(2) :=(port.x1(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 3))
        y2(0) :=(port.x2(1))
        y2(1) :=(port.x2(2))
        y2(2) :=(port.x2(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 3))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(0))
        port.y3 := y3
}

// Q_12^4 direct sharing -> uniform
class Sbox_0123456789CDEFAB_3shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 3)
                 val x1 = in Vec(Bool, 3)
                 val x2 = in Vec(Bool, 3)
                 val x3 = in Vec(Bool, 3)
                 val y0 = out Vec(Bool, 3)
                 val y1 = out Vec(Bool, 3)
                 val y2 = out Vec(Bool, 3)
                 val y3 = out Vec(Bool, 3)
        }
        val y0 = Reg(Vec(Bool, 3))
        y0(0) :=(port.x0(1))
        y0(1) :=(port.x0(2))
        y0(2) :=(port.x0(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 3))
        y1(0) :=(port.x1(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y1(1) :=(port.x1(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y1(2) :=(port.x1(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 3))
        y2(0) :=(port.x2(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1))
        y2(1) :=(port.x2(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2))
        y2(2) :=(port.x2(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 3))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(0))
        port.y3 := y3
}‚

//C_13^4 direct sharing -> uniform
class Sbox_0123456789CDEFBA_4shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 4)
                 val x1 = in Vec(Bool, 4)
                 val x2 = in Vec(Bool, 4)
                 val x3 = in Vec(Bool, 4)
                 val y0 = out Vec(Bool, 4)
                 val y1 = out Vec(Bool, 4)
                 val y2 = out Vec(Bool, 4)
                 val y3 = out Vec(Bool, 4)
        }
        val y0 = Reg(Vec(Bool, 4))
        y0(0) :=(port.x0(1)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(2))
        y0(1) :=(port.x0(2)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(0))
        y0(2) :=(port.x0(3)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(3))
        y0(3) :=(port.x0(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(1))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 4))
        y1(0) :=(port.x1(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x1(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x3(2)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(1) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(1)) ^ 
                (port.x2(2) & port.x3(3)) ^ 
                (port.x2(3) & port.x3(1)) ^ 
                (port.x2(3) & port.x3(2))
        y1(1) :=(port.x1(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2)) ^ 
                (port.x2(3) & port.x3(0))
        y1(2) :=(port.x1(3)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x3(3)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0)) ^ 
                (port.x2(3) & port.x3(3))
        y1(3) :=(port.x1(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 4))
        y2(0) :=(port.x2(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x1(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x3(2))
        y2(1) :=(port.x2(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x3(0))
        y2(2) :=(port.x2(3)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x3(3))
        y2(3) :=(port.x2(0)) ^ 
                (port.x1(0) & port.x3(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 4))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(3))
        y3(3) :=(port.x3(0))
        port.y3 := y3
}

//Q_293^4 direct sharing -> uniform
class Sbox_0123457689CDEFBA_3shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 3)
                 val x1 = in Vec(Bool, 3)
                 val x2 = in Vec(Bool, 3)
                 val x3 = in Vec(Bool, 3)
                 val y0 = out Vec(Bool, 3)
                 val y1 = out Vec(Bool, 3)
                 val y2 = out Vec(Bool, 3)
                 val y3 = out Vec(Bool, 3)
        }
        val y0 = Reg(Vec(Bool, 3))
        y0(0) :=(port.x0(1)) ^ 
                (port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(2) & port.x2(1))
        y0(1) :=(port.x0(2)) ^ 
                (port.x1(0) & port.x2(2)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2))
        y0(2) :=(port.x0(0)) ^ 
                (port.x1(0) & port.x2(0)) ^ 
                (port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 3))
        y1(0) :=(port.x1(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y1(1) :=(port.x1(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y1(2) :=(port.x1(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 3))
        y2(0) :=(port.x2(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1))
        y2(1) :=(port.x2(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2))
        y2(2) :=(port.x2(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 3))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(0))
        port.y3 := y3
}

//Q_294^4 direct sharing -> uniform
class Sbox_0123456789BAEFDC_3shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 3)
                 val x1 = in Vec(Bool, 3)
                 val x2 = in Vec(Bool, 3)
                 val x3 = in Vec(Bool, 3)
                 val y0 = out Vec(Bool, 3)
                 val y1 = out Vec(Bool, 3)
                 val y2 = out Vec(Bool, 3)
                 val y3 = out Vec(Bool, 3)
        }
        val y0 = Reg(Vec(Bool, 3))
        y0(0) :=(port.x0(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1))
        y0(1) :=(port.x0(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2))
        y0(2) :=(port.x0(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 3))
        y1(0) :=(port.x1(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y1(1) :=(port.x1(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y1(2) :=(port.x1(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 3))
        y2(0) :=(port.x2(1))
        y2(1) :=(port.x2(2))
        y2(2) :=(port.x2(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 3))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(0))
        port.y3 := y3
}

//Q_299^4 direct sharing -> uniform
class Sbox_012345678ACEB9FD_3shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 3)
                 val x1 = in Vec(Bool, 3)
                 val x2 = in Vec(Bool, 3)
                 val x3 = in Vec(Bool, 3)
                 val y0 = out Vec(Bool, 3)
                 val y1 = out Vec(Bool, 3)
                 val y2 = out Vec(Bool, 3)
                 val y3 = out Vec(Bool, 3)
        }
        val y0 = Reg(Vec(Bool, 3))
        y0(0) :=(port.x0(1)) ^ 
                (port.x0(1) & port.x3(1)) ^ 
                (port.x0(1) & port.x3(2)) ^ 
                (port.x0(2) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y0(1) :=(port.x0(2)) ^ 
                (port.x0(0) & port.x3(2)) ^ 
                (port.x0(2) & port.x3(0)) ^ 
                (port.x0(2) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y0(2) :=(port.x0(0)) ^ 
                (port.x0(0) & port.x3(0)) ^ 
                (port.x0(0) & port.x3(1)) ^ 
                (port.x0(1) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 3))
        y1(0) :=(port.x1(1)) ^ 
                (port.x0(1) & port.x3(1)) ^ 
                (port.x0(1) & port.x3(2)) ^ 
                (port.x0(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y1(1) :=(port.x1(2)) ^ 
                (port.x0(0) & port.x3(2)) ^ 
                (port.x0(2) & port.x3(0)) ^ 
                (port.x0(2) & port.x3(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y1(2) :=(port.x1(0)) ^ 
                (port.x0(0) & port.x3(0)) ^ 
                (port.x0(0) & port.x3(1)) ^ 
                (port.x0(1) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 3))
        y2(0) :=(port.x2(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(1))
        y2(1) :=(port.x2(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2))
        y2(2) :=(port.x2(0)) ^ 
                (port.x1(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 3))
        y3(0) :=(port.x3(1))
        y3(1) :=(port.x3(2))
        y3(2) :=(port.x3(0))
        port.y3 := y3
}

//Q_300^4 direct sharing (different than first representative for efficient sharing) -> uniform
class Sbox_01234589DC76BAFE_4shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 4)
                 val x1 = in Vec(Bool, 4)
                 val x2 = in Vec(Bool, 4)
                 val x3 = in Vec(Bool, 4)
                 val y0 = out Vec(Bool, 4)
                 val y1 = out Vec(Bool, 4)
                 val y2 = out Vec(Bool, 4)
                 val y3 = out Vec(Bool, 4)
        }
        val y0 = Reg(Vec(Bool, 4))
        y0(0) :=(port.x0(1)) ^ 
                (port.x3(1))
        y0(1) :=(port.x0(2)) ^ 
                (port.x3(2))
        y0(2) :=(port.x0(3)) ^ 
                (port.x3(3))
        y0(3) :=(port.x0(0)) ^ 
                (port.x3(0))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 4))
        y1(0) :=(port.x1(1)) ^ 
                (port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(1) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(1)) ^ 
                (port.x1(2) & port.x2(3)) ^ 
                (port.x1(3) & port.x2(1)) ^ 
                (port.x1(3) & port.x2(2)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(1) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(1)) ^ 
                (port.x2(2) & port.x3(3)) ^ 
                (port.x2(3) & port.x3(1)) ^ 
                (port.x2(3) & port.x3(2))
        y1(1) :=(port.x1(2)) ^ 
                (port.x1(0) & port.x2(2)) ^ 
                (port.x1(0) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2)) ^ 
                (port.x1(3) & port.x2(0)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2)) ^ 
                (port.x2(3) & port.x3(0))
        y1(2) :=(port.x1(3)) ^ 
                (port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0)) ^ 
                (port.x1(3) & port.x2(3)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0)) ^ 
                (port.x2(3) & port.x3(3))
        y1(3) :=(port.x1(0)) ^ 
                (port.x1(0) & port.x2(0)) ^ 
                (port.x2(0) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 4))
        y2(0) :=(port.x2(1)) ^ 
                (port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(1) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(1)) ^ 
                (port.x1(2) & port.x2(3)) ^ 
                (port.x1(3) & port.x2(1)) ^ 
                (port.x1(3) & port.x2(2)) ^ 
                (port.x3(1))
        y2(1) :=(port.x2(2)) ^ 
                (port.x1(0) & port.x2(2)) ^ 
                (port.x1(0) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2)) ^ 
                (port.x1(3) & port.x2(0)) ^ 
                (port.x3(2))
        y2(2) :=(port.x2(3)) ^ 
                (port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0)) ^ 
                (port.x1(3) & port.x2(3)) ^ 
                (port.x3(3))
        y2(3) :=(port.x2(0)) ^ 
                (port.x1(0) & port.x2(0)) ^ 
                (port.x3(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 4))
        y3(0) :=(port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(1) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(1)) ^ 
                (port.x1(2) & port.x2(3)) ^ 
                (port.x1(3) & port.x2(1)) ^ 
                (port.x1(3) & port.x2(2)) ^ 
                (port.x3(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x1(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x3(2))
        y3(1) :=(port.x1(0) & port.x2(2)) ^ 
                (port.x1(0) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2)) ^ 
                (port.x1(3) & port.x2(0)) ^ 
                (port.x3(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x3(0))
        y3(2) :=(port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0)) ^ 
                (port.x1(3) & port.x2(3)) ^ 
                (port.x3(3)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x3(3))
        y3(3) :=(port.x1(0) & port.x2(0)) ^ 
                (port.x3(0)) ^ 
                (port.x1(0) & port.x3(0))
        port.y3 := y3
}

//Q_301^4 direct sharing (different than first representative for efficient sharing) -> uniform
class Sbox_01234589DC76ABFE_4shares extends Component{
        val port = new Bundle{
                 val x0 = in Vec(Bool, 4)
                 val x1 = in Vec(Bool, 4)
                 val x2 = in Vec(Bool, 4)
                 val x3 = in Vec(Bool, 4)
                 val y0 = out Vec(Bool, 4)
                 val y1 = out Vec(Bool, 4)
                 val y2 = out Vec(Bool, 4)
                 val y3 = out Vec(Bool, 4)
        }
        val y0 = Reg(Vec(Bool, 4))
        y0(0) :=(port.x0(1)) ^ 
                (port.x3(1)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(1) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(1)) ^ 
                (port.x2(2) & port.x3(3)) ^ 
                (port.x2(3) & port.x3(1)) ^ 
                (port.x2(3) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(2))
        y0(1) :=(port.x0(2)) ^ 
                (port.x3(2)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2)) ^ 
                (port.x2(3) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(3) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(0))
        y0(2) :=(port.x0(3)) ^ 
                (port.x3(3)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0)) ^ 
                (port.x2(3) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(0) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(3)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(3) & port.x2(3) & port.x3(3))
        y0(3) :=(port.x0(0)) ^ 
                (port.x3(0)) ^ 
                (port.x2(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(0) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(0) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(0)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(1)) ^ 
                (port.x1(1) & port.x2(2) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(0) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(0)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(1)) ^ 
                (port.x1(2) & port.x2(1) & port.x3(2)) ^ 
                (port.x1(2) & port.x2(2) & port.x3(1))
        port.y0 := y0
        val y1 = Reg(Vec(Bool, 4))
        y1(0) :=(port.x1(1)) ^ 
                (port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(1) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(1)) ^ 
                (port.x1(2) & port.x2(3)) ^ 
                (port.x1(3) & port.x2(1)) ^ 
                (port.x1(3) & port.x2(2)) ^ 
                (port.x2(1) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(2)) ^ 
                (port.x2(1) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(1)) ^ 
                (port.x2(2) & port.x3(3)) ^ 
                (port.x2(3) & port.x3(1)) ^ 
                (port.x2(3) & port.x3(2))
        y1(1) :=(port.x1(2)) ^ 
                (port.x1(0) & port.x2(2)) ^ 
                (port.x1(0) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2)) ^ 
                (port.x1(3) & port.x2(0)) ^ 
                (port.x2(0) & port.x3(2)) ^ 
                (port.x2(0) & port.x3(3)) ^ 
                (port.x2(2) & port.x3(0)) ^ 
                (port.x2(2) & port.x3(2)) ^ 
                (port.x2(3) & port.x3(0))
        y1(2) :=(port.x1(3)) ^ 
                (port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0)) ^ 
                (port.x1(3) & port.x2(3)) ^ 
                (port.x2(0) & port.x3(1)) ^ 
                (port.x2(1) & port.x3(0)) ^ 
                (port.x2(3) & port.x3(3))
        y1(3) :=(port.x1(0)) ^ 
                (port.x1(0) & port.x2(0)) ^ 
                (port.x2(0) & port.x3(0))
        port.y1 := y1
        val y2 = Reg(Vec(Bool, 4))
        y2(0) :=(port.x2(1)) ^ 
                (port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(1) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(1)) ^ 
                (port.x1(2) & port.x2(3)) ^ 
                (port.x1(3) & port.x2(1)) ^ 
                (port.x1(3) & port.x2(2)) ^ 
                (port.x3(1))
        y2(1) :=(port.x2(2)) ^ 
                (port.x1(0) & port.x2(2)) ^ 
                (port.x1(0) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2)) ^ 
                (port.x1(3) & port.x2(0)) ^ 
                (port.x3(2))
        y2(2) :=(port.x2(3)) ^ 
                (port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0)) ^ 
                (port.x1(3) & port.x2(3)) ^ 
                (port.x3(3))
        y2(3) :=(port.x2(0)) ^ 
                (port.x1(0) & port.x2(0)) ^ 
                (port.x3(0))
        port.y2 := y2
        val y3 = Reg(Vec(Bool, 4))
        y3(0) :=(port.x1(1) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(2)) ^ 
                (port.x1(1) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(1)) ^ 
                (port.x1(2) & port.x2(3)) ^ 
                (port.x1(3) & port.x2(1)) ^ 
                (port.x1(3) & port.x2(2)) ^ 
                (port.x3(1)) ^ 
                (port.x1(1) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(2)) ^ 
                (port.x1(1) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(1)) ^ 
                (port.x1(2) & port.x3(3)) ^ 
                (port.x1(3) & port.x3(1)) ^ 
                (port.x1(3) & port.x3(2))
        y3(1) :=(port.x1(0) & port.x2(2)) ^ 
                (port.x1(0) & port.x2(3)) ^ 
                (port.x1(2) & port.x2(0)) ^ 
                (port.x1(2) & port.x2(2)) ^ 
                (port.x1(3) & port.x2(0)) ^ 
                (port.x3(2)) ^ 
                (port.x1(0) & port.x3(2)) ^ 
                (port.x1(0) & port.x3(3)) ^ 
                (port.x1(2) & port.x3(0)) ^ 
                (port.x1(2) & port.x3(2)) ^ 
                (port.x1(3) & port.x3(0))
        y3(2) :=(port.x1(0) & port.x2(1)) ^ 
                (port.x1(1) & port.x2(0)) ^ 
                (port.x1(3) & port.x2(3)) ^ 
                (port.x3(3)) ^ 
                (port.x1(0) & port.x3(1)) ^ 
                (port.x1(1) & port.x3(0)) ^ 
                (port.x1(3) & port.x3(3))
        y3(3) :=(port.x1(0) & port.x2(0)) ^ 
                (port.x3(0)) ^ 
                (port.x1(0) & port.x3(0))
        port.y3 := y3
}

object Sbox_Main extends App {
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789ABCDFE_4shares.v").generate(new Sbox_0123456789ABCDFE_4shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789ABDEFC_4shares.v").generate(new Sbox_0123456789ABDEFC_4shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789ABDCFE_3shares.v").generate(new Sbox_0123456789ABDCFE_3shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789CDEFAB_3shares.v").generate(new Sbox_0123456789CDEFAB_3shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789CDEFBA_4shares.v").generate(new Sbox_0123456789CDEFBA_4shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123457689CDEFBA_3shares.v").generate(new Sbox_0123457689CDEFBA_3shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_0123456789BAEFDC_3shares.v").generate(new Sbox_0123456789BAEFDC_3shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_012345678ACEB9FD_3shares.v").generate(new Sbox_012345678ACEB9FD_3shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_01234589DC76BAFE_4shares.v").generate(new Sbox_01234589DC76BAFE_4shares)
        SpinalConfig(mode = Verilog, targetDirectory="designs", netlistFileName=s"Sbox_01234589DC76ABFE_4shares.v").generate(new Sbox_01234589DC76ABFE_4shares)

}