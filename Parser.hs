{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,110) ([112,2056,0,0,61440,255,0,0,49152,8193,65280,28719,2048,56,7172,512,14,1793,32896,16387,448,57376,4096,112,14344,1024,28,3586,256,0,0,0,0,0,0,440,0,0,0,0,32768,27,3520,63488,7,1020,112,49160,5119,28,61442,63,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","num","true","false","'+'","'-'","'*'","'/'","\"&&\"","\"^^\"","'|'","'%'","'!'","\"==\"","'>'","'<'","if","then","else","%eof"]
        bit_start = st Prelude.* 23
        bit_end = (st Prelude.+ 1) Prelude.* 23
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..22]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_8
action_3 (9) = happyShift action_9
action_3 (10) = happyShift action_10
action_3 (11) = happyShift action_11
action_3 (12) = happyShift action_12
action_3 (13) = happyShift action_13
action_3 (14) = happyShift action_14
action_3 (15) = happyShift action_15
action_3 (16) = happyShift action_16
action_3 (17) = happyShift action_17
action_3 (18) = happyShift action_18
action_3 (19) = happyShift action_19
action_3 (23) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (5) = happyShift action_2
action_6 (6) = happyShift action_4
action_6 (7) = happyShift action_5
action_6 (20) = happyShift action_6
action_6 (4) = happyGoto action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_8
action_7 (9) = happyShift action_9
action_7 (10) = happyShift action_10
action_7 (11) = happyShift action_11
action_7 (12) = happyShift action_12
action_7 (13) = happyShift action_13
action_7 (14) = happyShift action_14
action_7 (15) = happyShift action_15
action_7 (16) = happyShift action_16
action_7 (17) = happyShift action_17
action_7 (18) = happyShift action_18
action_7 (19) = happyShift action_19
action_7 (21) = happyShift action_32
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (5) = happyShift action_2
action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (20) = happyShift action_6
action_8 (4) = happyGoto action_31
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_2
action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (20) = happyShift action_6
action_9 (4) = happyGoto action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (20) = happyShift action_6
action_10 (4) = happyGoto action_29
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_2
action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (20) = happyShift action_6
action_11 (4) = happyGoto action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_2
action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (20) = happyShift action_6
action_12 (4) = happyGoto action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_2
action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (20) = happyShift action_6
action_13 (4) = happyGoto action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_2
action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (20) = happyShift action_6
action_14 (4) = happyGoto action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (20) = happyShift action_6
action_15 (4) = happyGoto action_24
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (20) = happyShift action_6
action_16 (4) = happyGoto action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (20) = happyShift action_6
action_17 (4) = happyGoto action_22
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (20) = happyShift action_6
action_18 (4) = happyGoto action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (20) = happyShift action_6
action_19 (4) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_8
action_20 (9) = happyShift action_9
action_20 (10) = happyShift action_10
action_20 (11) = happyShift action_11
action_20 (12) = happyShift action_12
action_20 (13) = happyShift action_13
action_20 (14) = happyShift action_14
action_20 (15) = happyShift action_15
action_20 (16) = happyShift action_16
action_20 (17) = happyShift action_17
action_20 (18) = happyShift action_18
action_20 (19) = happyShift action_19
action_20 _ = happyReduce_9

action_21 (8) = happyShift action_8
action_21 (9) = happyShift action_9
action_21 (10) = happyShift action_10
action_21 (11) = happyShift action_11
action_21 (12) = happyShift action_12
action_21 (13) = happyShift action_13
action_21 (14) = happyShift action_14
action_21 (15) = happyShift action_15
action_21 (16) = happyShift action_16
action_21 (17) = happyShift action_17
action_21 (18) = happyShift action_18
action_21 (19) = happyShift action_19
action_21 _ = happyReduce_10

action_22 (18) = happyShift action_18
action_22 (19) = happyShift action_19
action_22 _ = happyReduce_14

action_23 (18) = happyShift action_18
action_23 (19) = happyShift action_19
action_23 _ = happyReduce_11

action_24 (12) = happyShift action_12
action_24 (13) = happyShift action_13
action_24 (14) = happyShift action_14
action_24 (16) = happyShift action_16
action_24 (17) = happyShift action_17
action_24 (18) = happyShift action_18
action_24 (19) = happyShift action_19
action_24 _ = happyReduce_8

action_25 (18) = happyShift action_18
action_25 (19) = happyShift action_19
action_25 _ = happyReduce_12

action_26 (18) = happyShift action_18
action_26 (19) = happyShift action_19
action_26 _ = happyReduce_13

action_27 (18) = happyShift action_18
action_27 (19) = happyShift action_19
action_27 _ = happyReduce_15

action_28 (12) = happyShift action_12
action_28 (13) = happyShift action_13
action_28 (14) = happyShift action_14
action_28 (16) = happyShift action_16
action_28 (17) = happyShift action_17
action_28 (18) = happyShift action_18
action_28 (19) = happyShift action_19
action_28 _ = happyReduce_7

action_29 (12) = happyShift action_12
action_29 (13) = happyShift action_13
action_29 (14) = happyShift action_14
action_29 (16) = happyShift action_16
action_29 (17) = happyShift action_17
action_29 (18) = happyShift action_18
action_29 (19) = happyShift action_19
action_29 _ = happyReduce_6

action_30 (10) = happyShift action_10
action_30 (11) = happyShift action_11
action_30 (12) = happyShift action_12
action_30 (13) = happyShift action_13
action_30 (14) = happyShift action_14
action_30 (15) = happyShift action_15
action_30 (16) = happyShift action_16
action_30 (17) = happyShift action_17
action_30 (18) = happyShift action_18
action_30 (19) = happyShift action_19
action_30 _ = happyReduce_5

action_31 (10) = happyShift action_10
action_31 (11) = happyShift action_11
action_31 (12) = happyShift action_12
action_31 (13) = happyShift action_13
action_31 (14) = happyShift action_14
action_31 (15) = happyShift action_15
action_31 (16) = happyShift action_16
action_31 (17) = happyShift action_17
action_31 (18) = happyShift action_18
action_31 (19) = happyShift action_19
action_31 _ = happyReduce_4

action_32 (5) = happyShift action_2
action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (4) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (8) = happyShift action_8
action_33 (9) = happyShift action_9
action_33 (10) = happyShift action_10
action_33 (11) = happyShift action_11
action_33 (12) = happyShift action_12
action_33 (13) = happyShift action_13
action_33 (14) = happyShift action_14
action_33 (15) = happyShift action_15
action_33 (16) = happyShift action_16
action_33 (17) = happyShift action_17
action_33 (18) = happyShift action_18
action_33 (19) = happyShift action_19
action_33 (22) = happyShift action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (5) = happyShift action_2
action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (20) = happyShift action_6
action_34 (4) = happyGoto action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (8) = happyShift action_8
action_35 (9) = happyShift action_9
action_35 (10) = happyShift action_10
action_35 (11) = happyShift action_11
action_35 (12) = happyShift action_12
action_35 (13) = happyShift action_13
action_35 (14) = happyShift action_14
action_35 (15) = happyShift action_15
action_35 (16) = happyShift action_16
action_35 (17) = happyShift action_17
action_35 (18) = happyShift action_18
action_35 (19) = happyShift action_19
action_35 _ = happyReduce_16

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
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GThan happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LThan happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Not happy_var_1
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Xor happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 23 23 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 5;
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenAdd -> cont 8;
	TokenSub -> cont 9;
	TokenMult -> cont 10;
	TokenDiv -> cont 11;
	TokenAnd -> cont 12;
	TokenXor -> cont 13;
	TokenOr -> cont 14;
	TokenMod -> cont 15;
	TokenNot -> cont 16;
	TokenEqual -> cont 17;
	TokenGThan -> cont 18;
	TokenLThan -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 23 tk tks = happyError' (tks, explist)
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
parseError _ = error "Erro sintático"
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
