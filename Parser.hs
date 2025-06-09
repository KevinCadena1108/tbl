{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,397) ([37760,12321,4097,0,0,0,0,53184,40912,4,0,0,0,0,25824,19464,0,0,0,128,0,12912,9732,19968,49286,4,64,0,6456,4866,16128,32579,26,0,128,0,1024,0,0,61440,64563,295,2048,0,57280,40912,4,0,0,17191,608,25824,19464,39936,33036,32777,8595,304,12912,9732,19968,49286,49156,4297,152,8,0,0,0,0,0,0,0,64,0,3072,0,49153,1,32,60,0,1792,32768,63488,0,17191,608,0,16398,0,0,32768,8595,304,0,0,19968,49286,4,0,0,6648,38906,0,8,0,0,0,0,0,0,56,1,1792,32,34686,9470,51648,38928,0,0,64,0,1024,0,1,39936,33036,32777,8595,304,0,0,0,0,0,7168,128,0,0,0,112,2,57411,3,0,0,0,64,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","ExpList","TypeList","num","true","false","'+'","\"&&\"","if","then","else","var","'\\\\'","':'","\"->\"","Number","Boolean","'('","')'","'-'","'*'","\"||\"","'<'","\"==\"","'!'","let","in","'='","'{'","'}'","','","'.'","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (8) = happyShift action_2
action_0 (9) = happyShift action_4
action_0 (10) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (29) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (33) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_2
action_3 (9) = happyShift action_4
action_3 (10) = happyShift action_5
action_3 (11) = happyShift action_21
action_3 (12) = happyShift action_22
action_3 (13) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (24) = happyShift action_23
action_3 (25) = happyShift action_24
action_3 (26) = happyShift action_25
action_3 (27) = happyShift action_26
action_3 (28) = happyShift action_27
action_3 (29) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (33) = happyShift action_12
action_3 (36) = happyShift action_28
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (8) = happyShift action_2
action_6 (9) = happyShift action_4
action_6 (10) = happyShift action_5
action_6 (13) = happyShift action_6
action_6 (16) = happyShift action_7
action_6 (17) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (29) = happyShift action_10
action_6 (30) = happyShift action_11
action_6 (33) = happyShift action_12
action_6 (4) = happyGoto action_19
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_7

action_8 (16) = happyShift action_18
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_2
action_9 (9) = happyShift action_4
action_9 (10) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (22) = happyShift action_9
action_9 (29) = happyShift action_10
action_9 (30) = happyShift action_11
action_9 (33) = happyShift action_12
action_9 (4) = happyGoto action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_2
action_10 (9) = happyShift action_4
action_10 (10) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (16) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (29) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (33) = happyShift action_12
action_10 (4) = happyGoto action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (16) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_2
action_12 (9) = happyShift action_4
action_12 (10) = happyShift action_5
action_12 (13) = happyShift action_6
action_12 (16) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (29) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (33) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 (6) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_2
action_13 (9) = happyShift action_4
action_13 (10) = happyShift action_5
action_13 (11) = happyShift action_21
action_13 (12) = happyShift action_22
action_13 (13) = happyShift action_6
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_8
action_13 (22) = happyShift action_9
action_13 (24) = happyShift action_23
action_13 (25) = happyShift action_24
action_13 (26) = happyShift action_25
action_13 (27) = happyShift action_26
action_13 (28) = happyShift action_27
action_13 (29) = happyShift action_10
action_13 (30) = happyShift action_11
action_13 (33) = happyShift action_12
action_13 (35) = happyShift action_42
action_13 (36) = happyShift action_28
action_13 (4) = happyGoto action_20
action_13 _ = happyReduce_24

action_14 (34) = happyShift action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (32) = happyShift action_40
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_2
action_16 (9) = happyShift action_4
action_16 (10) = happyShift action_5
action_16 (11) = happyShift action_21
action_16 (12) = happyShift action_22
action_16 (13) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (17) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (24) = happyShift action_23
action_16 (25) = happyShift action_24
action_16 (26) = happyShift action_25
action_16 (27) = happyShift action_26
action_16 (28) = happyShift action_27
action_16 (29) = happyShift action_10
action_16 (30) = happyShift action_11
action_16 (33) = happyShift action_12
action_16 (36) = happyShift action_28
action_16 (4) = happyGoto action_20
action_16 _ = happyReduce_16

action_17 (8) = happyShift action_2
action_17 (9) = happyShift action_4
action_17 (10) = happyShift action_5
action_17 (11) = happyShift action_21
action_17 (12) = happyShift action_22
action_17 (13) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (17) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (23) = happyShift action_39
action_17 (24) = happyShift action_23
action_17 (25) = happyShift action_24
action_17 (26) = happyShift action_25
action_17 (27) = happyShift action_26
action_17 (28) = happyShift action_27
action_17 (29) = happyShift action_10
action_17 (30) = happyShift action_11
action_17 (33) = happyShift action_12
action_17 (36) = happyShift action_28
action_17 (4) = happyGoto action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (18) = happyShift action_38
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_2
action_19 (9) = happyShift action_4
action_19 (10) = happyShift action_5
action_19 (11) = happyShift action_21
action_19 (12) = happyShift action_22
action_19 (13) = happyShift action_6
action_19 (14) = happyShift action_37
action_19 (16) = happyShift action_7
action_19 (17) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (24) = happyShift action_23
action_19 (25) = happyShift action_24
action_19 (26) = happyShift action_25
action_19 (27) = happyShift action_26
action_19 (28) = happyShift action_27
action_19 (29) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (33) = happyShift action_12
action_19 (36) = happyShift action_28
action_19 (4) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_2
action_20 (9) = happyShift action_4
action_20 (10) = happyShift action_5
action_20 (11) = happyShift action_21
action_20 (12) = happyShift action_22
action_20 (13) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (24) = happyShift action_23
action_20 (25) = happyShift action_24
action_20 (26) = happyShift action_25
action_20 (27) = happyShift action_26
action_20 (28) = happyShift action_27
action_20 (29) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (33) = happyShift action_12
action_20 (36) = happyShift action_28
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_9

action_21 (8) = happyShift action_2
action_21 (9) = happyShift action_4
action_21 (10) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (29) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (33) = happyShift action_12
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_2
action_22 (9) = happyShift action_4
action_22 (10) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (29) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (33) = happyShift action_12
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_2
action_23 (9) = happyShift action_4
action_23 (10) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (16) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (29) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (33) = happyShift action_12
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_2
action_24 (9) = happyShift action_4
action_24 (10) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (16) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (29) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (33) = happyShift action_12
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_2
action_25 (9) = happyShift action_4
action_25 (10) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (16) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (29) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (33) = happyShift action_12
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_2
action_26 (9) = happyShift action_4
action_26 (10) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (29) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (33) = happyShift action_12
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_2
action_27 (9) = happyShift action_4
action_27 (10) = happyShift action_5
action_27 (13) = happyShift action_6
action_27 (16) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (29) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (33) = happyShift action_12
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (8) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_19

action_30 (8) = happyShift action_2
action_30 (9) = happyShift action_4
action_30 (10) = happyShift action_5
action_30 (16) = happyShift action_7
action_30 (22) = happyShift action_9
action_30 (29) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (33) = happyShift action_12
action_30 (36) = happyShift action_28
action_30 (4) = happyGoto action_20
action_30 _ = happyReduce_15

action_31 (8) = happyShift action_2
action_31 (9) = happyShift action_4
action_31 (10) = happyShift action_5
action_31 (16) = happyShift action_7
action_31 (22) = happyShift action_9
action_31 (28) = happyShift action_27
action_31 (29) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (33) = happyShift action_12
action_31 (36) = happyShift action_28
action_31 (4) = happyGoto action_20
action_31 _ = happyReduce_14

action_32 (8) = happyShift action_2
action_32 (9) = happyShift action_4
action_32 (10) = happyShift action_5
action_32 (16) = happyShift action_7
action_32 (22) = happyShift action_9
action_32 (27) = happyShift action_26
action_32 (28) = happyShift action_27
action_32 (29) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (33) = happyShift action_12
action_32 (36) = happyShift action_28
action_32 (4) = happyGoto action_20
action_32 _ = happyReduce_13

action_33 (8) = happyShift action_2
action_33 (9) = happyShift action_4
action_33 (10) = happyShift action_5
action_33 (12) = happyShift action_22
action_33 (16) = happyShift action_7
action_33 (22) = happyShift action_9
action_33 (26) = happyShift action_25
action_33 (27) = happyShift action_26
action_33 (28) = happyShift action_27
action_33 (29) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (33) = happyShift action_12
action_33 (36) = happyShift action_28
action_33 (4) = happyGoto action_20
action_33 _ = happyReduce_12

action_34 (8) = happyShift action_2
action_34 (9) = happyShift action_4
action_34 (10) = happyShift action_5
action_34 (12) = happyShift action_22
action_34 (16) = happyShift action_7
action_34 (22) = happyShift action_9
action_34 (25) = happyShift action_24
action_34 (26) = happyShift action_25
action_34 (27) = happyShift action_26
action_34 (28) = happyShift action_27
action_34 (29) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (33) = happyShift action_12
action_34 (36) = happyShift action_28
action_34 (4) = happyGoto action_20
action_34 _ = happyReduce_11

action_35 (8) = happyShift action_2
action_35 (9) = happyShift action_4
action_35 (10) = happyShift action_5
action_35 (16) = happyShift action_7
action_35 (22) = happyShift action_9
action_35 (26) = happyShift action_25
action_35 (27) = happyShift action_26
action_35 (28) = happyShift action_27
action_35 (29) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (33) = happyShift action_12
action_35 (36) = happyShift action_28
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_5

action_36 (8) = happyShift action_2
action_36 (9) = happyShift action_4
action_36 (10) = happyShift action_5
action_36 (12) = happyShift action_22
action_36 (16) = happyShift action_7
action_36 (22) = happyShift action_9
action_36 (24) = happyShift action_23
action_36 (25) = happyShift action_24
action_36 (26) = happyShift action_25
action_36 (27) = happyShift action_26
action_36 (28) = happyShift action_27
action_36 (29) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (33) = happyShift action_12
action_36 (36) = happyShift action_28
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_4

action_37 (8) = happyShift action_2
action_37 (9) = happyShift action_4
action_37 (10) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (29) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (33) = happyShift action_12
action_37 (4) = happyGoto action_50
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (20) = happyShift action_46
action_38 (21) = happyShift action_47
action_38 (22) = happyShift action_48
action_38 (33) = happyShift action_49
action_38 (5) = happyGoto action_45
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_10

action_40 (8) = happyShift action_2
action_40 (9) = happyShift action_4
action_40 (10) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (29) = happyShift action_10
action_40 (30) = happyShift action_11
action_40 (33) = happyShift action_12
action_40 (4) = happyGoto action_44
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_18

action_42 (8) = happyShift action_2
action_42 (9) = happyShift action_4
action_42 (10) = happyShift action_5
action_42 (13) = happyShift action_6
action_42 (16) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (29) = happyShift action_10
action_42 (30) = happyShift action_11
action_42 (33) = happyShift action_12
action_42 (4) = happyGoto action_13
action_42 (6) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_25

action_44 (8) = happyShift action_2
action_44 (9) = happyShift action_4
action_44 (10) = happyShift action_5
action_44 (11) = happyShift action_21
action_44 (12) = happyShift action_22
action_44 (13) = happyShift action_6
action_44 (16) = happyShift action_7
action_44 (17) = happyShift action_8
action_44 (22) = happyShift action_9
action_44 (24) = happyShift action_23
action_44 (25) = happyShift action_24
action_44 (26) = happyShift action_25
action_44 (27) = happyShift action_26
action_44 (28) = happyShift action_27
action_44 (29) = happyShift action_10
action_44 (30) = happyShift action_11
action_44 (31) = happyShift action_56
action_44 (33) = happyShift action_12
action_44 (36) = happyShift action_28
action_44 (4) = happyGoto action_20
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (19) = happyShift action_55
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_21

action_47 _ = happyReduce_20

action_48 (20) = happyShift action_46
action_48 (21) = happyShift action_47
action_48 (22) = happyShift action_48
action_48 (33) = happyShift action_49
action_48 (5) = happyGoto action_54
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (20) = happyShift action_46
action_49 (21) = happyShift action_47
action_49 (22) = happyShift action_48
action_49 (33) = happyShift action_49
action_49 (5) = happyGoto action_52
action_49 (7) = happyGoto action_53
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (8) = happyShift action_2
action_50 (9) = happyShift action_4
action_50 (10) = happyShift action_5
action_50 (11) = happyShift action_21
action_50 (12) = happyShift action_22
action_50 (13) = happyShift action_6
action_50 (15) = happyShift action_51
action_50 (16) = happyShift action_7
action_50 (17) = happyShift action_8
action_50 (22) = happyShift action_9
action_50 (24) = happyShift action_23
action_50 (25) = happyShift action_24
action_50 (26) = happyShift action_25
action_50 (27) = happyShift action_26
action_50 (28) = happyShift action_27
action_50 (29) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (33) = happyShift action_12
action_50 (36) = happyShift action_28
action_50 (4) = happyGoto action_20
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (8) = happyShift action_2
action_51 (9) = happyShift action_4
action_51 (10) = happyShift action_5
action_51 (13) = happyShift action_6
action_51 (16) = happyShift action_7
action_51 (17) = happyShift action_8
action_51 (22) = happyShift action_9
action_51 (29) = happyShift action_10
action_51 (30) = happyShift action_11
action_51 (33) = happyShift action_12
action_51 (4) = happyGoto action_62
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (35) = happyShift action_61
action_52 _ = happyReduce_26

action_53 (34) = happyShift action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (19) = happyShift action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (8) = happyShift action_2
action_55 (9) = happyShift action_4
action_55 (10) = happyShift action_5
action_55 (13) = happyShift action_6
action_55 (16) = happyShift action_7
action_55 (17) = happyShift action_8
action_55 (22) = happyShift action_9
action_55 (29) = happyShift action_10
action_55 (30) = happyShift action_11
action_55 (33) = happyShift action_12
action_55 (4) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (8) = happyShift action_2
action_56 (9) = happyShift action_4
action_56 (10) = happyShift action_5
action_56 (13) = happyShift action_6
action_56 (16) = happyShift action_7
action_56 (17) = happyShift action_8
action_56 (22) = happyShift action_9
action_56 (29) = happyShift action_10
action_56 (30) = happyShift action_11
action_56 (33) = happyShift action_12
action_56 (4) = happyGoto action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (8) = happyShift action_2
action_57 (9) = happyShift action_4
action_57 (10) = happyShift action_5
action_57 (11) = happyShift action_21
action_57 (12) = happyShift action_22
action_57 (13) = happyShift action_6
action_57 (16) = happyShift action_7
action_57 (17) = happyShift action_8
action_57 (22) = happyShift action_9
action_57 (24) = happyShift action_23
action_57 (25) = happyShift action_24
action_57 (26) = happyShift action_25
action_57 (27) = happyShift action_26
action_57 (28) = happyShift action_27
action_57 (29) = happyShift action_10
action_57 (30) = happyShift action_11
action_57 (33) = happyShift action_12
action_57 (36) = happyShift action_28
action_57 (4) = happyGoto action_20
action_57 _ = happyReduce_17

action_58 (8) = happyShift action_2
action_58 (9) = happyShift action_4
action_58 (10) = happyShift action_5
action_58 (11) = happyShift action_21
action_58 (12) = happyShift action_22
action_58 (13) = happyShift action_6
action_58 (16) = happyShift action_7
action_58 (17) = happyShift action_8
action_58 (22) = happyShift action_9
action_58 (24) = happyShift action_23
action_58 (25) = happyShift action_24
action_58 (26) = happyShift action_25
action_58 (27) = happyShift action_26
action_58 (28) = happyShift action_27
action_58 (29) = happyShift action_10
action_58 (30) = happyShift action_11
action_58 (33) = happyShift action_12
action_58 (36) = happyShift action_28
action_58 (4) = happyGoto action_20
action_58 _ = happyReduce_8

action_59 (20) = happyShift action_46
action_59 (21) = happyShift action_47
action_59 (22) = happyShift action_48
action_59 (33) = happyShift action_49
action_59 (5) = happyGoto action_64
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_23

action_61 (20) = happyShift action_46
action_61 (21) = happyShift action_47
action_61 (22) = happyShift action_48
action_61 (33) = happyShift action_49
action_61 (5) = happyGoto action_52
action_61 (7) = happyGoto action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (8) = happyShift action_2
action_62 (9) = happyShift action_4
action_62 (10) = happyShift action_5
action_62 (11) = happyShift action_21
action_62 (12) = happyShift action_22
action_62 (13) = happyFail []
action_62 (16) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (22) = happyShift action_9
action_62 (24) = happyShift action_23
action_62 (25) = happyShift action_24
action_62 (26) = happyShift action_25
action_62 (27) = happyShift action_26
action_62 (28) = happyShift action_27
action_62 (29) = happyShift action_10
action_62 (30) = happyShift action_11
action_62 (33) = happyShift action_12
action_62 (36) = happyShift action_28
action_62 (4) = happyGoto action_20
action_62 _ = happyReduce_6

action_63 _ = happyReduce_27

action_64 (23) = happyShift action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_22

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tuple happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyTerminal (TokenNum happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Proj happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_22 = happyReduce 5 5 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TTuple happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  6 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 : happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  7 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  7 happyReduction_27
happyReduction_27 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 8;
	TokenTrue -> cont 9;
	TokenFalse -> cont 10;
	TokenAdd -> cont 11;
	TokenAnd -> cont 12;
	TokenIf -> cont 13;
	TokenThen -> cont 14;
	TokenElse -> cont 15;
	TokenVar happy_dollar_dollar -> cont 16;
	TokenLam -> cont 17;
	TokenColon -> cont 18;
	TokenArrow -> cont 19;
	TokenTNum -> cont 20;
	TokenTBool -> cont 21;
	TokenLParen -> cont 22;
	TokenRParen -> cont 23;
	TokenSub -> cont 24;
	TokenMul -> cont 25;
	TokenOr -> cont 26;
	TokenLT -> cont 27;
	TokenEq -> cont 28;
	TokenNot -> cont 29;
	TokenLet -> cont 30;
	TokenIn -> cont 31;
	TokenEqDef -> cont 32;
	TokenEChave -> cont 33;
	TokenDChave -> cont 34;
	TokenVirgula -> cont 35;
	TokenPonto -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Erro sintático!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
