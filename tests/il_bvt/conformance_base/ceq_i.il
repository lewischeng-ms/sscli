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
.class public _ceq {
.field public static int32 PTR
.method public static	int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack		10
.locals	(int32*,int32*)
	ldsflda		int32 _ceq::PTR
	stloc	0
	ldsflda		int32 _ceq::PTR
	ldc.i4		0x2
	add
	stloc	1
	ldloc	0
	ldloc	1
	ceq
	brtrue		FAIL
	ldloc	1
	ldloc	0
	ceq
	brtrue		FAIL
	ldloc	0
	ldloc	0
	ceq
	brfalse		FAIL
PASS:
	ldc.i4	0x0000
	ret
FAIL:
	ldc.i4	0x0001
	ret
}
}
.assembly ceq_iexe{}
