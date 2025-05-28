{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,318) ([25824,3080,16,0,0,0,3324,509,0,0,0,32768,8595,48,0,0,32,28672,1074,14342,537,3,4,0,0,2,0,40832,16353,0,1,28640,4072,0,0,6456,770,3228,385,34382,192,17191,32864,8595,49200,4297,57368,2148,12,0,0,32768,0,24576,8192,14336,4096,7680,0,3584,1024,1984,25824,3080,0,7,0,0,3228,385,34430,510,2048,0,0,0,0,0,3584,61440,62523,14343,537,3,32,19968,49286,9984,24643,0,0,0,0,0,14,8576,496,0,4,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","true","false","'+'","\"&&\"","if","then","else","var","'\\\\'","':'","\"->\"","Number","Boolean","'('","')'","'-'","'*'","\"||\"","'<'","\"==\"","'!'","let","in","'='","%eof"]
        bit_start = st Prelude.* 31
        bit_end = (st Prelude.+ 1) Prelude.* 31
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..30]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (15) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_5
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_6
action_3 (14) = happyShift action_7
action_3 (15) = happyShift action_8
action_3 (20) = happyShift action_9
action_3 (22) = happyShift action_20
action_3 (23) = happyShift action_21
action_3 (24) = happyShift action_22
action_3 (25) = happyShift action_23
action_3 (26) = happyShift action_24
action_3 (27) = happyShift action_10
action_3 (28) = happyShift action_11
action_3 (31) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (11) = happyShift action_6
action_6 (14) = happyShift action_7
action_6 (15) = happyShift action_8
action_6 (20) = happyShift action_9
action_6 (27) = happyShift action_10
action_6 (28) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_7

action_8 (14) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (11) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (15) = happyShift action_8
action_9 (20) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (28) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (11) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (15) = happyShift action_8
action_10 (20) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (28) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (14) = happyShift action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (30) = happyShift action_35
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_18
action_13 (10) = happyShift action_19
action_13 (11) = happyShift action_6
action_13 (14) = happyShift action_7
action_13 (15) = happyShift action_8
action_13 (20) = happyShift action_9
action_13 (22) = happyShift action_20
action_13 (23) = happyShift action_21
action_13 (24) = happyShift action_22
action_13 (25) = happyShift action_23
action_13 (26) = happyShift action_24
action_13 (27) = happyShift action_10
action_13 (28) = happyShift action_11
action_13 (4) = happyGoto action_17
action_13 _ = happyReduce_16

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_18
action_14 (10) = happyShift action_19
action_14 (11) = happyShift action_6
action_14 (14) = happyShift action_7
action_14 (15) = happyShift action_8
action_14 (20) = happyShift action_9
action_14 (21) = happyShift action_34
action_14 (22) = happyShift action_20
action_14 (23) = happyShift action_21
action_14 (24) = happyShift action_22
action_14 (25) = happyShift action_23
action_14 (26) = happyShift action_24
action_14 (27) = happyShift action_10
action_14 (28) = happyShift action_11
action_14 (4) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (16) = happyShift action_33
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_18
action_16 (10) = happyShift action_19
action_16 (11) = happyShift action_6
action_16 (12) = happyShift action_32
action_16 (14) = happyShift action_7
action_16 (15) = happyShift action_8
action_16 (20) = happyShift action_9
action_16 (22) = happyShift action_20
action_16 (23) = happyShift action_21
action_16 (24) = happyShift action_22
action_16 (25) = happyShift action_23
action_16 (26) = happyShift action_24
action_16 (27) = happyShift action_10
action_16 (28) = happyShift action_11
action_16 (4) = happyGoto action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (9) = happyShift action_18
action_17 (10) = happyShift action_19
action_17 (11) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (15) = happyShift action_8
action_17 (20) = happyShift action_9
action_17 (22) = happyShift action_20
action_17 (23) = happyShift action_21
action_17 (24) = happyShift action_22
action_17 (25) = happyShift action_23
action_17 (26) = happyShift action_24
action_17 (27) = happyShift action_10
action_17 (28) = happyShift action_11
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_9

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (11) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (15) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (28) = happyShift action_11
action_18 (4) = happyGoto action_31
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (11) = happyShift action_6
action_19 (14) = happyShift action_7
action_19 (15) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (28) = happyShift action_11
action_19 (4) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (11) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (15) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (28) = happyShift action_11
action_20 (4) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (11) = happyShift action_6
action_21 (14) = happyShift action_7
action_21 (15) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (28) = happyShift action_11
action_21 (4) = happyGoto action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (11) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (15) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (28) = happyShift action_11
action_22 (4) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (11) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (15) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (28) = happyShift action_11
action_23 (4) = happyGoto action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (11) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (15) = happyShift action_8
action_24 (20) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (28) = happyShift action_11
action_24 (4) = happyGoto action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (14) = happyShift action_7
action_25 (20) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (28) = happyShift action_11
action_25 (4) = happyGoto action_17
action_25 _ = happyReduce_15

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (14) = happyShift action_7
action_26 (20) = happyShift action_9
action_26 (26) = happyShift action_24
action_26 (27) = happyShift action_10
action_26 (28) = happyShift action_11
action_26 (4) = happyGoto action_17
action_26 _ = happyReduce_14

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (14) = happyShift action_7
action_27 (20) = happyShift action_9
action_27 (25) = happyShift action_23
action_27 (26) = happyShift action_24
action_27 (27) = happyShift action_10
action_27 (28) = happyShift action_11
action_27 (4) = happyGoto action_17
action_27 _ = happyReduce_13

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (10) = happyShift action_19
action_28 (14) = happyShift action_7
action_28 (20) = happyShift action_9
action_28 (24) = happyShift action_22
action_28 (25) = happyShift action_23
action_28 (26) = happyShift action_24
action_28 (27) = happyShift action_10
action_28 (28) = happyShift action_11
action_28 (4) = happyGoto action_17
action_28 _ = happyReduce_12

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (10) = happyShift action_19
action_29 (14) = happyShift action_7
action_29 (20) = happyShift action_9
action_29 (23) = happyShift action_21
action_29 (24) = happyShift action_22
action_29 (25) = happyShift action_23
action_29 (26) = happyShift action_24
action_29 (27) = happyShift action_10
action_29 (28) = happyShift action_11
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_11

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (14) = happyShift action_7
action_30 (20) = happyShift action_9
action_30 (24) = happyShift action_22
action_30 (25) = happyShift action_23
action_30 (26) = happyShift action_24
action_30 (27) = happyShift action_10
action_30 (28) = happyShift action_11
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_5

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (10) = happyShift action_19
action_31 (14) = happyShift action_7
action_31 (20) = happyShift action_9
action_31 (22) = happyShift action_20
action_31 (23) = happyShift action_21
action_31 (24) = happyShift action_22
action_31 (25) = happyShift action_23
action_31 (26) = happyShift action_24
action_31 (27) = happyShift action_10
action_31 (28) = happyShift action_11
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_4

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (11) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (15) = happyShift action_8
action_32 (20) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (28) = happyShift action_11
action_32 (4) = happyGoto action_41
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (18) = happyShift action_38
action_33 (19) = happyShift action_39
action_33 (20) = happyShift action_40
action_33 (5) = happyGoto action_37
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_10

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (11) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (15) = happyShift action_8
action_35 (20) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (28) = happyShift action_11
action_35 (4) = happyGoto action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (11) = happyShift action_6
action_36 (14) = happyShift action_7
action_36 (15) = happyShift action_8
action_36 (20) = happyShift action_9
action_36 (22) = happyShift action_20
action_36 (23) = happyShift action_21
action_36 (24) = happyShift action_22
action_36 (25) = happyShift action_23
action_36 (26) = happyShift action_24
action_36 (27) = happyShift action_10
action_36 (28) = happyShift action_11
action_36 (29) = happyShift action_45
action_36 (4) = happyGoto action_17
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (17) = happyShift action_44
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_19

action_39 _ = happyReduce_18

action_40 (18) = happyShift action_38
action_40 (19) = happyShift action_39
action_40 (20) = happyShift action_40
action_40 (5) = happyGoto action_43
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_5
action_41 (9) = happyShift action_18
action_41 (10) = happyShift action_19
action_41 (11) = happyShift action_6
action_41 (13) = happyShift action_42
action_41 (14) = happyShift action_7
action_41 (15) = happyShift action_8
action_41 (20) = happyShift action_9
action_41 (22) = happyShift action_20
action_41 (23) = happyShift action_21
action_41 (24) = happyShift action_22
action_41 (25) = happyShift action_23
action_41 (26) = happyShift action_24
action_41 (27) = happyShift action_10
action_41 (28) = happyShift action_11
action_41 (4) = happyGoto action_17
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (11) = happyShift action_6
action_42 (14) = happyShift action_7
action_42 (15) = happyShift action_8
action_42 (20) = happyShift action_9
action_42 (27) = happyShift action_10
action_42 (28) = happyShift action_11
action_42 (4) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_4
action_44 (8) = happyShift action_5
action_44 (11) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (15) = happyShift action_8
action_44 (20) = happyShift action_9
action_44 (27) = happyShift action_10
action_44 (28) = happyShift action_11
action_44 (4) = happyGoto action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_4
action_45 (8) = happyShift action_5
action_45 (11) = happyShift action_6
action_45 (14) = happyShift action_7
action_45 (15) = happyShift action_8
action_45 (20) = happyShift action_9
action_45 (27) = happyShift action_10
action_45 (28) = happyShift action_11
action_45 (4) = happyGoto action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_4
action_46 (8) = happyShift action_5
action_46 (9) = happyShift action_18
action_46 (10) = happyShift action_19
action_46 (11) = happyShift action_6
action_46 (14) = happyShift action_7
action_46 (15) = happyShift action_8
action_46 (20) = happyShift action_9
action_46 (22) = happyShift action_20
action_46 (23) = happyShift action_21
action_46 (24) = happyShift action_22
action_46 (25) = happyShift action_23
action_46 (26) = happyShift action_24
action_46 (27) = happyShift action_10
action_46 (28) = happyShift action_11
action_46 (4) = happyGoto action_17
action_46 _ = happyReduce_17

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_5
action_47 (9) = happyShift action_18
action_47 (10) = happyShift action_19
action_47 (11) = happyShift action_6
action_47 (14) = happyShift action_7
action_47 (15) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (22) = happyShift action_20
action_47 (23) = happyShift action_21
action_47 (24) = happyShift action_22
action_47 (25) = happyShift action_23
action_47 (26) = happyShift action_24
action_47 (27) = happyShift action_10
action_47 (28) = happyShift action_11
action_47 (4) = happyGoto action_17
action_47 _ = happyReduce_8

action_48 (18) = happyShift action_38
action_48 (19) = happyShift action_39
action_48 (20) = happyShift action_40
action_48 (5) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_4
action_49 (8) = happyShift action_5
action_49 (9) = happyShift action_18
action_49 (10) = happyShift action_19
action_49 (11) = happyFail []
action_49 (14) = happyShift action_7
action_49 (15) = happyShift action_8
action_49 (20) = happyShift action_9
action_49 (22) = happyShift action_20
action_49 (23) = happyShift action_21
action_49 (24) = happyShift action_22
action_49 (25) = happyShift action_23
action_49 (26) = happyShift action_24
action_49 (27) = happyShift action_10
action_49 (28) = happyShift action_11
action_49 (4) = happyGoto action_17
action_49 _ = happyReduce_6

action_50 (21) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_20

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

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_20 = happyReduce 5 5 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 31 31 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenTrue -> cont 7;
	TokenFalse -> cont 8;
	TokenAdd -> cont 9;
	TokenAnd -> cont 10;
	TokenIf -> cont 11;
	TokenThen -> cont 12;
	TokenElse -> cont 13;
	TokenVar happy_dollar_dollar -> cont 14;
	TokenLam -> cont 15;
	TokenColon -> cont 16;
	TokenArrow -> cont 17;
	TokenTNum -> cont 18;
	TokenTBool -> cont 19;
	TokenLParen -> cont 20;
	TokenRParen -> cont 21;
	TokenSub -> cont 22;
	TokenMul -> cont 23;
	TokenOr -> cont 24;
	TokenLT -> cont 25;
	TokenEq -> cont 26;
	TokenNot -> cont 27;
	TokenLet -> cont 28;
	TokenIn -> cont 29;
	TokenEqDef -> cont 30;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 31 tk tks = happyError' (tks, explist)
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
