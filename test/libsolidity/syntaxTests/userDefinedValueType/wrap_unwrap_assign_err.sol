type MyInt is int;
function test() pure {
    function (MyInt) returns (int) f = MyInt.unwrap;
    function (int) returns (MyInt) g = MyInt.wrap;
}
// ----
// TypeError 9574: (46-93): Type function (user defined type MyInt) pure returns (int256) is not implicitly convertible to expected type function (user defined type MyInt) returns (int256). Special functions can not be converted to function types.
// TypeError 9574: (99-144): Type function (int256) pure returns (user defined type MyInt) is not implicitly convertible to expected type function (int256) returns (user defined type MyInt). Special functions can not be converted to function types.
