(* autogenerated from unittest *)
From Perennial.go_lang Require Import prelude.

(* disk FFI *)
From Perennial.go_lang Require Import ffi.disk_prelude.

(* comments.go *)

Module importantStruct.
  (* This struct is very important.

     This is despite it being empty. *)
  Definition S := struct.decl [
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End importantStruct.

(* doSubtleThings does a number of subtle things:

   (actually, it does nothing) *)
Definition doSubtleThings: val :=
  λ: <>,
    #().

(* const.go *)

Definition GlobalConstant : expr := #(str"foo").

(* an untyped string *)
Definition UntypedStringConstant : expr := #(str"bar").

Definition TypedInt : expr := #32.

Definition ConstWithArith : expr := #4 + #3 * TypedInt.

Definition TypedInt32 : expr := #(U32 3).

(* control_flow.go *)

Definition conditionalReturn: val :=
  λ: "x",
    (if: "x"
    then #0
    else #1).

Definition alwaysReturn: val :=
  λ: "x",
    (if: "x"
    then #0
    else #1).

Definition earlyReturn: val :=
  λ: "x",
    (if: "x"
    then #()
    else #()).

Definition conditionalAssign: val :=
  λ: "x",
    let: "y" := ref (zero_val uint64T) in
    (if: "x"
    then "y" <- #1
    else "y" <- #2);;
    "y" <- !"y" + #1;;
    !"y".

(* conversions.go *)

Definition stringWrapper: ty := stringT.

Definition typedLiteral: val :=
  λ: <>,
    #3.

Definition literalCast: val :=
  λ: <>,
    let: "x" := #2 in
    "x" + #2.

Definition castInt: val :=
  λ: "p",
    slice.len "p".

Definition stringToByteSlice: val :=
  λ: "s",
    let: "p" := Data.stringToBytes "s" in
    "p".

Definition byteSliceToString: val :=
  λ: "p",
    let: "s" := Data.bytesToString "p" in
    "s".

Definition stringWrapperToString: val :=
  λ: "s",
    "s".

(* data_structures.go *)

Definition atomicCreateStub: val :=
  λ: "dir" "fname" "data",
    #().

Definition useSlice: val :=
  λ: <>,
    let: "s" := NewSlice byteT #1 in
    let: "s1" := SliceAppendSlice "s" "s" in
    atomicCreateStub #(str"dir") #(str"file") "s1".

Definition useSliceIndexing: val :=
  λ: <>,
    let: "s" := NewSlice uint64T #2 in
    SliceSet "s" #1 #2;;
    let: "x" := SliceGet "s" #0 in
    "x".

Definition useMap: val :=
  λ: <>,
    let: "m" := NewMap (slice.T byteT) in
    MapInsert "m" #1 slice.nil;;
    let: ("x", "ok") := MapGet "m" #2 in
    (if: "ok"
    then #()
    else MapInsert "m" #3 "x").

Definition usePtr: val :=
  λ: <>,
    let: "p" := ref (zero_val uint64T) in
    "p" <- #1;;
    let: "x" := !"p" in
    "p" <- "x".

Definition iterMapKeysAndValues: val :=
  λ: "m",
    let: "sumPtr" := ref (zero_val uint64T) in
    MapIter "m" (λ: "k" "v",
      let: "sum" := !"sumPtr" in
      "sumPtr" <- "sum" + "k" + "v");;
    let: "sum" := !"sumPtr" in
    "sum".

Definition iterMapKeys: val :=
  λ: "m",
    let: "keysSlice" := NewSlice uint64T #0 in
    let: "keysRef" := ref (zero_val (slice.T uint64T)) in
    "keysRef" <- "keysSlice";;
    MapIter "m" (λ: "k" <>,
      let: "keys" := !"keysRef" in
      let: "newKeys" := SliceAppend "keys" "k" in
      "keysRef" <- "newKeys");;
    let: "keys" := !"keysRef" in
    "keys".

Definition getRandom: val :=
  λ: <>,
    let: "r" := Data.randomUint64 #() in
    "r".

(* empty_functions.go *)

Definition empty: val :=
  λ: <>,
    #().

Definition emptyReturn: val :=
  λ: <>,
    #().

(* encoding.go *)

Module Enc.
  Definition S := struct.decl [
    "p" :: slice.T byteT
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End Enc.

Definition Enc__consume: val :=
  λ: "e" "n",
    let: "b" := SliceTake (struct.loadF Enc.S "p" "e") "n" in
    struct.storeF Enc.S "p" "e" (SliceSkip (struct.loadF Enc.S "p" "e") "n");;
    "b".

Definition Enc__UInt64: val :=
  λ: "e" "x",
    UInt64Put (Enc__consume "e" #8) "x".

Definition Enc__UInt32: val :=
  λ: "e" "x",
    UInt32Put (Enc__consume "e" #4) "x".

Module Dec.
  Definition S := struct.decl [
    "p" :: slice.T byteT
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End Dec.

Definition Dec__consume: val :=
  λ: "d" "n",
    let: "b" := SliceTake (struct.loadF Dec.S "p" "d") "n" in
    struct.storeF Dec.S "p" "d" (SliceSkip (struct.loadF Dec.S "p" "d") "n");;
    "b".

Definition Dec__UInt64: val :=
  λ: "d",
    UInt64Get (Dec__consume "d" #8).

Definition Dec__UInt32: val :=
  λ: "d",
    UInt32Get (Dec__consume "d" #4).

Definition EncDec32: val :=
  λ: "x",
    let: "r" := NewSlice byteT #4 in
    let: "e" := struct.new Enc.S [
      "p" ::= "r"
    ] in
    let: "d" := struct.new Dec.S [
      "p" ::= "r"
    ] in
    Enc__UInt32 "e" "x";;
    ("x" = Dec__UInt32 "d").

Definition EncDec64: val :=
  λ: "x",
    let: "r" := NewSlice byteT #8 in
    let: "e" := struct.new Enc.S [
      "p" ::= "r"
    ] in
    let: "d" := struct.new Dec.S [
      "p" ::= "r"
    ] in
    Enc__UInt64 "e" "x";;
    ("x" = Dec__UInt64 "d").

(* ints.go *)

Definition useInts: val :=
  λ: "x" "y",
    let: "z" := ref (zero_val uint64T) in
    "z" <- to_u64 "y";;
    "z" <- !"z" + #1;;
    let: "y2" := ref (zero_val uint32T) in
    "y2" <- "y" + #(U32 3);;
    (!"z", !"y2").

Definition u32: ty := uint32T.

Definition also_u32: ty := u32.

Definition ConstWithAbbrevType : expr := #(U32 3).

(* literals.go *)

Module allTheLiterals.
  Definition S := struct.decl [
    "int" :: uint64T;
    "s" :: stringT;
    "b" :: boolT
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End allTheLiterals.

Definition normalLiterals: val :=
  λ: <>,
    struct.mk allTheLiterals.S [
      "int" ::= #0;
      "s" ::= #(str"foo");
      "b" ::= #true
    ].

Definition specialLiterals: val :=
  λ: <>,
    struct.mk allTheLiterals.S [
      "int" ::= #4096;
      "s" ::= #(str"");
      "b" ::= #false
    ].

Definition oddLiterals: val :=
  λ: <>,
    struct.mk allTheLiterals.S [
      "int" ::= #5;
      "s" ::= #(str"backquote string");
      "b" ::= #false
    ].

(* locks.go *)

Definition useLocks: val :=
  λ: <>,
    let: "m" := lock.new #() in
    lock.acquire "m";;
    lock.release "m".

Definition useCondVar: val :=
  λ: <>,
    let: "m" := lock.new #() in
    let: "c" := lock.newCond "m" in
    lock.acquire "m";;
    lock.condSignal "c";;
    lock.condWait "c";;
    lock.release "m".

Module hasCondVar.
  Definition S := struct.decl [
    "cond" :: condvarRefT
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End hasCondVar.

(* log_debugging.go *)

Definition ToBeDebugged: val :=
  λ: "x",
    (* log.Println("starting function") *)
    (* log.Printf("called with %d", x) *)
    (* log.Println("ending function") *)
    "x".

Definition DoNothing: val :=
  λ: <>,
    (* log.Println("doing nothing") *)
    #().

(* loops.go *)

(* DoSomething is an impure function *)
Definition DoSomething: val :=
  λ: "s",
    #().

Definition standardForLoop: val :=
  λ: "s",
    let: "sumPtr" := ref (zero_val uint64T) in
    let: "i" := ref #0 in
    (for: (#true); (Skip) :=
      (if: !"i" < slice.len "s"
      then
        let: "sum" := !"sumPtr" in
        let: "x" := SliceGet "s" !"i" in
        "sumPtr" <- "sum" + "x";;
        "i" <- !"i" + #1;;
        Continue
      else Break));;
    let: "sum" := !"sumPtr" in
    "sum".

Definition conditionalInLoop: val :=
  λ: <>,
    let: "i" := ref #0 in
    (for: (#true); (Skip) :=
      (if: !"i" < #3
      then
        DoSomething (#(str"i is small"));;
        #()
      else #());;
      (if: !"i" > #5
      then Break
      else
        "i" <- !"i" + #1;;
        Continue)).

Definition ImplicitLoopContinue: val :=
  λ: <>,
    let: "i" := ref #0 in
    (for: (#true); (Skip) :=
      (if: !"i" < #4
      then "i" <- #0
      else #());;
      Continue).

Definition nestedLoops: val :=
  λ: <>,
    let: "i" := ref #0 in
    (for: (#true); (Skip) :=
      let: "j" := ref #0 in
      (for: (#true); (Skip) :=
        (if: #true
        then Break
        else
          "j" <- !"j" + #1;;
          Continue));;
      "i" <- !"i" + #1;;
      Continue).

Definition nestedGoStyleLoops: val :=
  λ: <>,
    let: "i" := ref #0 in
    (for: (!"i" < #10); ("i" <- !"i" + #1) :=
      let: "j" := ref #0 in
      (for: (!"j" < !"i"); ("j" <- !"j" + #1) :=
        (if: #true
        then Break
        else Continue));;
      Continue).

(* maps.go *)

Definition clearMap: val :=
  λ: "m",
    MapClear "m".

Definition IterateMapKeys: val :=
  λ: "m" "sum",
    MapIter "m" (λ: "k" <>,
      let: "oldSum" := !"sum" in
      "sum" <- "oldSum" + "k").

Definition MapSize: val :=
  λ: "m",
    MapLen "m".

(* multiple.go *)

Definition returnTwo: val :=
  λ: "p",
    (#0, #0).

Definition returnTwoWrapper: val :=
  λ: "data",
    let: ("a", "b") := returnTwo "data" in
    ("a", "b").

Definition multipleVar: val :=
  λ: "x" "y",
    #().

(* operators.go *)

Definition LogicalOperators: val :=
  λ: "b1" "b2",
    "b1" && "b2" ∥ "b1" && ~ #false.

Definition LogicalAndEqualityOperators: val :=
  λ: "b1" "x",
    ("x" = #3) && ("b1" = #true).

Definition ArithmeticShifts: val :=
  λ: "x" "y",
    to_u64 ("x" ≪ #3) + "y" ≪ to_u64 "x" + "y" ≪ #1.

Definition BitwiseOps: val :=
  λ: "x" "y",
    to_u64 "x" ∥ to_u64 (to_u32 "y") && #43.

Definition Comparison: val :=
  λ: "x" "y",
    (if: "x" < "y"
    then #true
    else
      (if: ("x" = "y")
      then #true
      else
        (if: "x" ≠ "y"
        then #true
        else
          (if: "x" > "y"
          then #true
          else
            (if: "x" + #1 > "y" - #2
            then #true
            else #false))))).

Definition AssignOps: val :=
  λ: <>,
    let: "x" := ref (zero_val uint64T) in
    "x" <- !"x" + #3;;
    "x" <- !"x" - #3;;
    "x" <- !"x" + #1;;
    "x" <- !"x" - #1.

(* panic.go *)

Definition PanicAtTheDisco: val :=
  λ: <>,
    Panic "disco".

(* reassign.go *)

Module composite.
  Definition S := struct.decl [
    "a" :: uint64T;
    "b" :: uint64T
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End composite.

Definition ReassignVars: val :=
  λ: <>,
    let: "x" := ref (zero_val uint64T) in
    let: "y" := #0 in
    "x" <- #3;;
    let: "z" := ref (struct.mk composite.S [
      "a" ::= !"x";
      "b" ::= "y"
    ]) in
    "z" <- struct.mk composite.S [
      "a" ::= "y";
      "b" ::= !"x"
    ];;
    "x" <- composite.get "a" !"z".

(* replicated_disk.go *)

Module Block.
  Definition S := struct.decl [
    "Value" :: uint64T
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End Block.

Definition Disk1 : expr := #0.

Definition Disk2 : expr := #0.

Definition DiskSize : expr := #1000.

(* TwoDiskWrite is a dummy function to represent the base layer's disk write *)
Definition TwoDiskWrite: val :=
  λ: "diskId" "a" "v",
    #true.

(* TwoDiskRead is a dummy function to represent the base layer's disk read *)
Definition TwoDiskRead: val :=
  λ: "diskId" "a",
    (struct.mk Block.S [
       "Value" ::= #0
     ], #true).

(* TwoDiskLock is a dummy function to represent locking an address in the
   base layer *)
Definition TwoDiskLock: val :=
  λ: "a",
    #().

(* TwoDiskUnlock is a dummy function to represent unlocking an address in the
   base layer *)
Definition TwoDiskUnlock: val :=
  λ: "a",
    #().

Definition ReplicatedDiskRead: val :=
  λ: "a",
    TwoDiskLock "a";;
    let: ("v", "ok") := TwoDiskRead Disk1 "a" in
    (if: "ok"
    then
      TwoDiskUnlock "a";;
      "v"
    else
      let: ("v2", <>) := TwoDiskRead Disk2 "a" in
      TwoDiskUnlock "a";;
      "v2").

Definition ReplicatedDiskWrite: val :=
  λ: "a" "v",
    TwoDiskLock "a";;
    TwoDiskWrite Disk1 "a" "v";;
    TwoDiskWrite Disk2 "a" "v";;
    TwoDiskUnlock "a".

Definition ReplicatedDiskRecover: val :=
  λ: <>,
    let: "a" := ref #0 in
    (for: (#true); (Skip) :=
      (if: !"a" > DiskSize
      then Break
      else
        let: ("v", "ok") := TwoDiskRead Disk1 !"a" in
        (if: "ok"
        then
          TwoDiskWrite Disk2 !"a" "v";;
          #()
        else #());;
        "a" <- !"a" + #1;;
        Continue)).

(* slices.go *)

Definition SliceAlias: ty := slice.T boolT.

Definition sliceOps: val :=
  λ: <>,
    let: "x" := NewSlice uint64T #10 in
    let: "v1" := SliceGet "x" #2 in
    let: "v2" := SliceSubslice "x" #2 #3 in
    let: "v3" := SliceTake "x" #3 in
    let: "v4" := SliceRef "x" #2 in
    "v1" + SliceGet "v2" #0 + SliceGet "v3" #1 + !"v4".

Definition makeSingletonSlice: val :=
  λ: "x",
    SliceSingleton "x".

Module thing.
  Definition S := struct.decl [
    "x" :: uint64T
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End thing.

Module sliceOfThings.
  Definition S := struct.decl [
    "things" :: slice.T thing.T
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End sliceOfThings.

Definition sliceOfThings__getThingRef: val :=
  λ: "ts" "i",
    SliceRef (sliceOfThings.get "things" "ts") "i".

Definition makeAlias: val :=
  λ: <>,
    NewSlice boolT #10.

(* spawn.go *)

(* Skip is a placeholder for some impure code *)
Definition Skip: val :=
  λ: <>,
    #().

Definition simpleSpawn: val :=
  λ: <>,
    let: "l" := lock.new #() in
    let: "v" := ref (zero_val uint64T) in
    Fork (lock.acquire "l";;
          let: "x" := !"v" in
          (if: "x" > #0
          then
            Skip #();;
            #()
          else #());;
          lock.release "l");;
    lock.acquire "l";;
    "v" <- #1;;
    lock.release "l".

Definition threadCode: val :=
  λ: "tid",
    #().

Definition loopSpawn: val :=
  λ: <>,
    let: "i" := ref #0 in
    (for: (!"i" < #10); ("i" <- !"i" + #1) :=
      let: "i" := !"i" in
      Fork (threadCode "i");;
      Continue);;
    let: "dummy" := ref #true in
    (for: (#true); (Skip) :=
      "dummy" <- ~ !"dummy";;
      Continue).

(* strings.go *)

Definition stringAppend: val :=
  λ: "s" "x",
    #(str"prefix ") + "s" + #(str" ") + uint64_to_string "x".

Definition stringLength: val :=
  λ: "s",
    strLen "s".

(* struct_method.go *)

Module C.
  Definition S := struct.decl [
    "x" :: uint64T;
    "y" :: uint64T
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End C.

Definition C__Add: val :=
  λ: "c" "z",
    C.get "x" "c" + C.get "y" "c" + "z".

Definition C__GetField: val :=
  λ: "c",
    let: "x" := C.get "x" "c" in
    let: "y" := C.get "y" "c" in
    "x" + "y".

Definition UseAdd: val :=
  λ: <>,
    let: "c" := struct.mk C.S [
      "x" ::= #2;
      "y" ::= #3
    ] in
    let: "r" := C__Add "c" #4 in
    "r".

Definition UseAddWithLiteral: val :=
  λ: <>,
    let: "r" := C__Add (struct.mk C.S [
      "x" ::= #2;
      "y" ::= #3
    ]) #4 in
    "r".

(* struct_pointers.go *)

Module TwoInts.
  Definition S := struct.decl [
    "x" :: uint64T;
    "y" :: uint64T
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End TwoInts.

Module S.
  Definition S := struct.decl [
    "a" :: uint64T;
    "b" :: TwoInts.T;
    "c" :: boolT
  ].
  Definition T: ty := struct.t S.
  Definition Ptr: ty := struct.ptrT S.
  Section fields.
    Context `{ext_ty: ext_types}.
    Definition get := struct.get S.
  End fields.
End S.

Definition NewS: val :=
  λ: <>,
    struct.new S.S [
      "a" ::= #2;
      "b" ::= struct.mk TwoInts.S [
        "x" ::= #1;
        "y" ::= #2
      ];
      "c" ::= #true
    ].

Definition S__readA: val :=
  λ: "s",
    struct.loadF S.S "a" "s".

Definition S__readB: val :=
  λ: "s",
    struct.loadF S.S "b" "s".

Definition S__readBVal: val :=
  λ: "s",
    S.get "b" "s".

Definition S__writeB: val :=
  λ: "s" "two",
    struct.storeF S.S "b" "s" "two".

Definition S__negateC: val :=
  λ: "s",
    struct.storeF S.S "c" "s" (~ (struct.loadF S.S "c" "s")).

Definition S__refC: val :=
  λ: "s",
    struct.fieldRef S.S "c" "s".

Definition localSRef: val :=
  λ: <>,
    let: "s" := ref (zero_val S.T) in
    struct.fieldRef S.S "b" "s".

Definition setField: val :=
  λ: <>,
    let: "s" := ref (zero_val S.T) in
    struct.storeF S.S "a" "s" #0;;
    struct.storeF S.S "c" "s" #true;;
    !"s".

(* synchronization.go *)

(* DoSomeLocking uses the entire lock API *)
Definition DoSomeLocking: val :=
  λ: "l",
    lock.acquire "l";;
    lock.release "l".

Definition makeLock: val :=
  λ: <>,
    let: "l" := lock.new #() in
    DoSomeLocking "l".

(* type_alias.go *)

Definition u64: ty := uint64T.

Definition Timestamp: ty := uint64T.

Definition UseTypeAbbrev: ty := u64.

Definition UseNamedType: ty := Timestamp.
