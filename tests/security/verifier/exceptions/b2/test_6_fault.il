// ==++==
//
//   
//    Copyright (c) 2006 Microsoft Corporation.  All rights reserved.
//   
//    The use and distribution terms for this software are contained in the file
//    named license.txt, which can be found in the root of this distribution.
//    By using this software in any fashion, you are agreeing to be bound by the
//    terms of this license.
//   
//    You must not remove this notice, or any other, from this software.
//   
//
// ==--==
.assembly test_6_fault {}
.class TestClass{
.method public static void test_6_fault(){
.locals init(int32 locInt1)
  ldc.i4.1
  stloc locInt1
  ldstr      "Test is running"
  call       void [mscorlib]System.Console::WriteLine(class System.String)  
lbl_6_startTry:
  leave lbl_6_exitSEH
lbl_6_endTry:
lbl_6_startFault:
   ldc.i4.1
   pop
   leave lbl_6_exitSEH
lbl_6_endFault:
.try  lbl_6_startTry to lbl_6_endTry fault  handler lbl_6_startFault to lbl_6_endFault
lbl_6_exitSEH:
  ret
}
.method public static void Main(class ['mscorlib']System.String[] arg)
{
    call void TestClass::test_6_fault()
    .entrypoint
    ret
}
  .method public specialname rtspecialname instance void .ctor() il managed
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
    IL_0006:  ret
  } 
}
