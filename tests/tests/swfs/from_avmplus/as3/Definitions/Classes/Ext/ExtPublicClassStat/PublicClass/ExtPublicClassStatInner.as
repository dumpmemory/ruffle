/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */



package PublicClass {

  import PublicClass.*;

  class ExtPublicClassStatInner extends PublicClass {

    // ************************************
    // access static method of parent
    // from default method of sub class
    // ************************************

    function subGetArray() : Array { return getStatArray(); }
    function subSetArray(a:Array) { setStatArray(a); }

    public function testSubArray(a:Array) : Array {
        this.subSetArray(a);
        return this.subGetArray();
    }


    // ************************************
    // access static method of parent
    // from public method of sub class
    // ************************************

    public function pubSubGetArray() : Array { return getStatArray(); }
    public function pubSubSetArray(a:Array) { setStatArray(a); }

    // ************************************
    // access static method of parent
    // from private method of sub class
    // ************************************

    private function privSubGetArray() : Array { return getStatArray(); }
    private function privSubSetArray(a:Array) { setStatArray(a); }

    // function to test above from test scripts
    public function testPrivSubArray(a:Array) : Array {
        this.privSubSetArray(a);
        return this.privSubGetArray();
    }

    // ***************************************
    // access static method of parent
    // from static method of sub class
    // ***************************************

    static function statSubGetArray() : Array { return getStatArray(); }
    static function statSubSetArray(a:Array) { setStatArray(a); }

    public static function testStatSubArray(a:Array) : Array {
        statSubSetArray(a);
        return statSubGetArray();
    }


    // ***************************************
    // access static method of parent
    // from public static method of sub class
    // ***************************************

    public static function pubStatSubGetArray() : Array { return getStatArray(); }
    public static function pubStatSubSetArray(a:Array) { setStatArray(a); }

    // ***************************************
    // access static method of parent
    // from private static method of sub class
    // ***************************************

    private static function privStatSubGetArray() : Array { return getStatArray(); }
    private static function privStatSubSetArray(a:Array) { setStatArray(a); }

    // public accessor to test asrt
    public function testPrivStatSubArray(a:Array) : Array {
        privStatSubSetArray(a);
        return privStatSubGetArray();
    }

    // ***************************************
    // access static method of parent
    // from final method of sub class
    // ***************************************

    final function finStatSubGetArray() : Array { return getStatArray(); }
    final function finStatSubSetArray(a:Array) { setStatArray(a); }

    public function testFinalSubArray(a:Array) : Array {
        finStatSubSetArray(a);
        return finStatSubGetArray();
    }


    // ***************************************
    // access static property from
    // default method of sub class
    // ***************************************

    function subGetDPArray() : Array { return statArray; }
    function subSetDPArray(a:Array) { statArray = a; }

    public function testSubDPArray(a:Array) : Array {
        subSetDPArray( a );
        return subGetDPArray();
    }


    // ***************************************
    // access static property from
    // public method of sub class
    // ***************************************

    public function pubSubGetDPArray() : Array { return statArray; }
    public function pubSubSetDPArray(a:Array) { statArray = a; }

    // ***************************************
    // access static property from
    // private method of sub class
    // ***************************************

    private function privSubGetDPArray() : Array { return statArray; }
    private function privSubSetDPArray(a:Array) { statArray = a; }

    public function testPrivSubDPArray(a:Array) : Array {
        privSubSetDPArray( a );
        return privSubGetDPArray();
    }


    // ***************************************
    // access static property from
    // static method of sub class
    // ***************************************

    static function statSubGetSPArray() : Array { return statArray; }
    static function statSubSetSPArray(a:Array) { statArray = a; }

    public static function testStatSubPArray(a:Array) : Array {
        statSubSetSPArray( a );
        return statSubGetSPArray();
    }


    // ***************************************
    // access static property from
    // public static method of sub class
    // ***************************************

    public static function pubStatSubGetSPArray() : Array { return statArray; }
    public static function pubStatSubSetSPArray(a:Array) { statArray = a; }

    // ***************************************
    // access static property from
    // private static method of sub class
    // ***************************************

    private static function privStatSubGetSPArray() : Array { return statArray; }
    private static function privStatSubSetSPArray(a:Array) { statArray = a; }

    // public accessor for asrt
    public function testPrivStatSubPArray(a:Array) : Array {
        privStatSubSetSPArray( a );
        return privStatSubGetSPArray();
    }

    // ***************************************
    // access static property from
    // final method of sub class
    // ***************************************

    final function finStatSubGetSPArray() : Array { return statArray; }
    final function finStatSubSetSPArray(a:Array) { statArray = a; }

    public function testStatSubPArray(a:Array) : Array {
        finStatSubSetSPArray( a );
        return finStatSubGetSPArray();
    }

  }

}
