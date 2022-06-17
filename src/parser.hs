{-# OPTIONS_GHC -w #-}
module Parser (Expr (..), Patern (..), Lit (..), Name) where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,239) ([59904,36897,16384,0,0,512,0,0,48128,7,0,0,17364,288,0,0,0,0,0,0,4,16384,0,43008,16519,2,4341,72,7840,2306,0,0,0,0,0,0,31688,59904,36901,16384,1085,18,64,15840,62720,18448,40960,542,9,17364,288,31360,9224,20480,33039,4,8682,144,15680,4612,43008,16519,2,0,2,7840,2306,0,0,6,0,704,0,6144,0,0,3,0,480,0,15360,0,45056,7,0,246,16576,0,0,0,20480,49423,127,1024,0,32768,0,0,4096,0,1024,0,7840,2306,0,61568,32798,2170,36,0,0,32768,0,0,256,0,0,0,0,0,40960,542,9,0,4,6144,8,0,1024,0,4,3960,15680,4612,43008,16519,2,0,0,0,8,0,0,32768,2170,36,32768,31680,0,0,0,0,0,16384,15840,62720,18448,0,32768,247,0,7920,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","Exprs","Paterns","Patern","FuncVars","Lit","let","in","case","of","int","bool","var","func","'('","')'","'{'","'}'","'['","']'","':'","','","'_'","'='","'+'","'-'","'*'","'/'","'!'","'&'","'|'","'%'","'^'","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (10) = happyShift action_2
action_0 (12) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 (9) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (10) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_27
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (28) = happyShift action_19
action_3 (29) = happyShift action_20
action_3 (30) = happyShift action_21
action_3 (31) = happyShift action_22
action_3 (33) = happyShift action_23
action_3 (34) = happyShift action_24
action_3 (35) = happyShift action_25
action_3 (36) = happyShift action_26
action_3 (37) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_19

action_5 (10) = happyShift action_2
action_5 (12) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (15) = happyShift action_7
action_5 (16) = happyShift action_8
action_5 (17) = happyShift action_9
action_5 (22) = happyShift action_10
action_5 (29) = happyShift action_11
action_5 (32) = happyShift action_12
action_5 (4) = happyGoto action_18
action_5 (9) = happyGoto action_4
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_27

action_7 _ = happyReduce_28

action_8 (27) = happyShift action_17
action_8 _ = happyReduce_18

action_9 (18) = happyShift action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_2
action_10 (12) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (17) = happyShift action_9
action_10 (22) = happyShift action_10
action_10 (29) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (4) = happyGoto action_15
action_10 (9) = happyGoto action_4
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (10) = happyShift action_2
action_11 (12) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_7
action_11 (16) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (22) = happyShift action_10
action_11 (29) = happyShift action_11
action_11 (32) = happyShift action_12
action_11 (4) = happyGoto action_14
action_11 (9) = happyGoto action_4
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (10) = happyShift action_2
action_12 (12) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_7
action_12 (16) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (22) = happyShift action_10
action_12 (29) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 (9) = happyGoto action_4
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_14

action_14 _ = happyReduce_7

action_15 (25) = happyShift action_44
action_15 (28) = happyShift action_19
action_15 (29) = happyShift action_20
action_15 (30) = happyShift action_21
action_15 (31) = happyShift action_22
action_15 (33) = happyShift action_23
action_15 (34) = happyShift action_24
action_15 (35) = happyShift action_25
action_15 (36) = happyShift action_26
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (10) = happyShift action_2
action_16 (12) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (15) = happyShift action_7
action_16 (16) = happyShift action_42
action_16 (17) = happyShift action_9
action_16 (19) = happyShift action_43
action_16 (22) = happyShift action_10
action_16 (29) = happyShift action_11
action_16 (32) = happyShift action_12
action_16 (4) = happyGoto action_39
action_16 (5) = happyGoto action_40
action_16 (8) = happyGoto action_41
action_16 (9) = happyGoto action_4
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (10) = happyShift action_2
action_17 (12) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (15) = happyShift action_7
action_17 (16) = happyShift action_8
action_17 (17) = happyShift action_9
action_17 (22) = happyShift action_10
action_17 (29) = happyShift action_11
action_17 (32) = happyShift action_12
action_17 (4) = happyGoto action_38
action_17 (9) = happyGoto action_4
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_37
action_18 (28) = happyShift action_19
action_18 (29) = happyShift action_20
action_18 (30) = happyShift action_21
action_18 (31) = happyShift action_22
action_18 (33) = happyShift action_23
action_18 (34) = happyShift action_24
action_18 (35) = happyShift action_25
action_18 (36) = happyShift action_26
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (10) = happyShift action_2
action_19 (12) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_7
action_19 (16) = happyShift action_8
action_19 (17) = happyShift action_9
action_19 (22) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (4) = happyGoto action_36
action_19 (9) = happyGoto action_4
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (10) = happyShift action_2
action_20 (12) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (17) = happyShift action_9
action_20 (22) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (4) = happyGoto action_35
action_20 (9) = happyGoto action_4
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (10) = happyShift action_2
action_21 (12) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (15) = happyShift action_7
action_21 (16) = happyShift action_8
action_21 (17) = happyShift action_9
action_21 (22) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (4) = happyGoto action_34
action_21 (9) = happyGoto action_4
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (10) = happyShift action_2
action_22 (12) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (15) = happyShift action_7
action_22 (16) = happyShift action_8
action_22 (17) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (4) = happyGoto action_33
action_22 (9) = happyGoto action_4
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (10) = happyShift action_2
action_23 (12) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (15) = happyShift action_7
action_23 (16) = happyShift action_8
action_23 (17) = happyShift action_9
action_23 (22) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (4) = happyGoto action_32
action_23 (9) = happyGoto action_4
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_2
action_24 (12) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (17) = happyShift action_9
action_24 (22) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (4) = happyGoto action_31
action_24 (9) = happyGoto action_4
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_2
action_25 (12) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (17) = happyShift action_9
action_25 (22) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (4) = happyGoto action_30
action_25 (9) = happyGoto action_4
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_2
action_26 (12) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (15) = happyShift action_7
action_26 (16) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (4) = happyGoto action_29
action_26 (9) = happyGoto action_4
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (27) = happyShift action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_2
action_28 (12) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (15) = happyShift action_7
action_28 (16) = happyShift action_8
action_28 (17) = happyShift action_9
action_28 (22) = happyShift action_10
action_28 (29) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (4) = happyGoto action_56
action_28 (9) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (33) = happyShift action_23
action_29 (34) = happyShift action_24
action_29 _ = happyReduce_13

action_30 (33) = happyShift action_23
action_30 (34) = happyShift action_24
action_30 (36) = happyShift action_26
action_30 _ = happyReduce_12

action_31 (33) = happyShift action_23
action_31 (34) = happyShift action_24
action_31 _ = happyReduce_16

action_32 (33) = happyShift action_23
action_32 (34) = happyShift action_24
action_32 _ = happyReduce_15

action_33 (33) = happyShift action_23
action_33 (34) = happyShift action_24
action_33 (35) = happyShift action_25
action_33 (36) = happyShift action_26
action_33 _ = happyReduce_11

action_34 (33) = happyShift action_23
action_34 (34) = happyShift action_24
action_34 (35) = happyShift action_25
action_34 (36) = happyShift action_26
action_34 _ = happyReduce_10

action_35 (30) = happyShift action_21
action_35 (31) = happyShift action_22
action_35 (33) = happyShift action_23
action_35 (34) = happyShift action_24
action_35 (35) = happyShift action_25
action_35 (36) = happyShift action_26
action_35 _ = happyReduce_9

action_36 (30) = happyShift action_21
action_36 (31) = happyShift action_22
action_36 (33) = happyShift action_23
action_36 (34) = happyShift action_24
action_36 (35) = happyShift action_25
action_36 (36) = happyShift action_26
action_36 _ = happyReduce_8

action_37 (14) = happyShift action_6
action_37 (15) = happyShift action_7
action_37 (22) = happyShift action_10
action_37 (6) = happyGoto action_53
action_37 (7) = happyGoto action_54
action_37 (9) = happyGoto action_55
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (28) = happyShift action_19
action_38 (29) = happyShift action_20
action_38 (30) = happyShift action_21
action_38 (31) = happyShift action_22
action_38 (33) = happyShift action_23
action_38 (34) = happyShift action_24
action_38 (35) = happyShift action_25
action_38 (36) = happyShift action_26
action_38 _ = happyReduce_17

action_39 (10) = happyShift action_2
action_39 (12) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (15) = happyShift action_7
action_39 (16) = happyShift action_8
action_39 (17) = happyShift action_9
action_39 (22) = happyShift action_10
action_39 (28) = happyShift action_19
action_39 (29) = happyShift action_52
action_39 (30) = happyShift action_21
action_39 (31) = happyShift action_22
action_39 (32) = happyShift action_12
action_39 (33) = happyShift action_23
action_39 (34) = happyShift action_24
action_39 (35) = happyShift action_25
action_39 (36) = happyShift action_26
action_39 (4) = happyGoto action_39
action_39 (5) = happyGoto action_51
action_39 (9) = happyGoto action_4
action_39 _ = happyReduce_21

action_40 (19) = happyShift action_50
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (19) = happyShift action_49
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_48
action_42 (19) = happyReduce_26
action_42 (27) = happyShift action_17
action_42 (8) = happyGoto action_47
action_42 _ = happyReduce_18

action_43 (20) = happyShift action_46
action_43 _ = happyReduce_4

action_44 (10) = happyShift action_2
action_44 (12) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (15) = happyShift action_7
action_44 (16) = happyShift action_8
action_44 (17) = happyShift action_9
action_44 (22) = happyShift action_10
action_44 (29) = happyShift action_11
action_44 (32) = happyShift action_12
action_44 (4) = happyGoto action_45
action_44 (9) = happyGoto action_4
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (23) = happyShift action_64
action_45 (28) = happyShift action_19
action_45 (29) = happyShift action_20
action_45 (30) = happyShift action_21
action_45 (31) = happyShift action_22
action_45 (33) = happyShift action_23
action_45 (34) = happyShift action_24
action_45 (35) = happyShift action_25
action_45 (36) = happyShift action_26
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (10) = happyShift action_2
action_46 (12) = happyShift action_5
action_46 (14) = happyShift action_6
action_46 (15) = happyShift action_7
action_46 (16) = happyShift action_8
action_46 (17) = happyShift action_9
action_46 (22) = happyShift action_10
action_46 (29) = happyShift action_11
action_46 (32) = happyShift action_12
action_46 (4) = happyGoto action_63
action_46 (9) = happyGoto action_4
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_25

action_48 (16) = happyShift action_48
action_48 (8) = happyGoto action_47
action_48 _ = happyReduce_26

action_49 (20) = happyShift action_62
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_3

action_51 _ = happyReduce_20

action_52 (10) = happyShift action_2
action_52 (12) = happyShift action_5
action_52 (14) = happyShift action_6
action_52 (15) = happyShift action_7
action_52 (16) = happyShift action_8
action_52 (17) = happyShift action_9
action_52 (22) = happyShift action_10
action_52 (29) = happyShift action_11
action_52 (32) = happyShift action_12
action_52 (4) = happyGoto action_61
action_52 (9) = happyGoto action_4
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (26) = happyShift action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_6
action_54 (15) = happyShift action_7
action_54 (22) = happyShift action_10
action_54 (6) = happyGoto action_59
action_54 (7) = happyGoto action_54
action_54 (9) = happyGoto action_55
action_54 _ = happyReduce_23

action_55 (24) = happyShift action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (11) = happyShift action_57
action_56 (28) = happyShift action_19
action_56 (29) = happyShift action_20
action_56 (30) = happyShift action_21
action_56 (31) = happyShift action_22
action_56 (33) = happyShift action_23
action_56 (34) = happyShift action_24
action_56 (35) = happyShift action_25
action_56 (36) = happyShift action_26
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (10) = happyShift action_2
action_57 (12) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (15) = happyShift action_7
action_57 (16) = happyShift action_8
action_57 (17) = happyShift action_9
action_57 (22) = happyShift action_10
action_57 (29) = happyShift action_11
action_57 (32) = happyShift action_12
action_57 (4) = happyGoto action_69
action_57 (9) = happyGoto action_4
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (10) = happyShift action_2
action_58 (12) = happyShift action_5
action_58 (14) = happyShift action_6
action_58 (15) = happyShift action_7
action_58 (16) = happyShift action_8
action_58 (17) = happyShift action_9
action_58 (22) = happyShift action_10
action_58 (29) = happyShift action_11
action_58 (32) = happyShift action_12
action_58 (4) = happyGoto action_68
action_58 (9) = happyGoto action_4
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_22

action_60 (24) = happyShift action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (10) = happyReduce_7
action_61 (12) = happyReduce_7
action_61 (14) = happyReduce_7
action_61 (15) = happyReduce_7
action_61 (16) = happyReduce_7
action_61 (17) = happyReduce_7
action_61 (19) = happyReduce_7
action_61 (22) = happyReduce_7
action_61 (28) = happyReduce_7
action_61 (29) = happyReduce_7
action_61 (32) = happyReduce_7
action_61 _ = happyReduce_7

action_62 (10) = happyShift action_2
action_62 (12) = happyShift action_5
action_62 (14) = happyShift action_6
action_62 (15) = happyShift action_7
action_62 (16) = happyShift action_8
action_62 (17) = happyShift action_9
action_62 (22) = happyShift action_10
action_62 (29) = happyShift action_11
action_62 (32) = happyShift action_12
action_62 (4) = happyGoto action_66
action_62 (9) = happyGoto action_4
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (21) = happyShift action_65
action_63 (28) = happyShift action_19
action_63 (29) = happyShift action_20
action_63 (30) = happyShift action_21
action_63 (31) = happyShift action_22
action_63 (33) = happyShift action_23
action_63 (34) = happyShift action_24
action_63 (35) = happyShift action_25
action_63 (36) = happyShift action_26
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_29

action_65 _ = happyReduce_6

action_66 (21) = happyShift action_71
action_66 (28) = happyShift action_19
action_66 (29) = happyShift action_20
action_66 (30) = happyShift action_21
action_66 (31) = happyShift action_22
action_66 (33) = happyShift action_23
action_66 (34) = happyShift action_24
action_66 (35) = happyShift action_25
action_66 (36) = happyShift action_26
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (10) = happyShift action_2
action_67 (12) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (15) = happyShift action_7
action_67 (16) = happyShift action_8
action_67 (17) = happyShift action_9
action_67 (22) = happyShift action_10
action_67 (29) = happyShift action_11
action_67 (32) = happyShift action_12
action_67 (4) = happyGoto action_70
action_67 (9) = happyGoto action_4
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (28) = happyShift action_19
action_68 (29) = happyShift action_20
action_68 (30) = happyShift action_21
action_68 (31) = happyShift action_22
action_68 (33) = happyShift action_23
action_68 (34) = happyShift action_24
action_68 (35) = happyShift action_25
action_68 (36) = happyShift action_26
action_68 _ = happyReduce_24

action_69 (28) = happyShift action_19
action_69 (29) = happyShift action_20
action_69 (30) = happyShift action_21
action_69 (31) = happyShift action_22
action_69 (33) = happyShift action_23
action_69 (34) = happyShift action_24
action_69 (35) = happyShift action_25
action_69 (36) = happyShift action_26
action_69 _ = happyReduce_1

action_70 (28) = happyShift action_19
action_70 (29) = happyShift action_20
action_70 (30) = happyShift action_21
action_70 (31) = happyShift action_22
action_70 (33) = happyShift action_23
action_70 (34) = happyShift action_24
action_70 (35) = happyShift action_25
action_70 (36) = happyShift action_26
action_70 _ = happyReduce_2

action_71 _ = happyReduce_5

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 7 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Case happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 4 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 _
	_
	(HappyTerminal (TFunc happy_var_1))
	 =  HappyAbsSyn4
		 (FuncCall happy_var_1 _
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 7 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclar happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclar happy_var_1 _ happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Un '-' happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '+' happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '-' happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '*' happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '/' happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '%' happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '^' happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Un '!' happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '&' happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '|' happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn4
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 : happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  7 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  8 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_2)
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_2 : happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  8 happyReduction_26
happyReduction_26 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  9 happyReduction_27
happyReduction_27 (HappyTerminal (TInt  happy_var_1))
	 =  HappyAbsSyn9
		 (Cst happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  9 happyReduction_28
happyReduction_28 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn9
		 (LBool happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happyReduce 5 9 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (LTuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLet -> cont 10;
	TIn -> cont 11;
	TCase -> cont 12;
	TOf -> cont 13;
	TInt  happy_dollar_dollar -> cont 14;
	TBool happy_dollar_dollar -> cont 15;
	TVar  happy_dollar_dollar -> cont 16;
	TFunc happy_dollar_dollar -> cont 17;
	TLParen -> cont 18;
	TRParen -> cont 19;
	TLBrace -> cont 20;
	TRBrace -> cont 21;
	TLBracket -> cont 22;
	TRBracket -> cont 23;
	TColon -> cont 24;
	TComma -> cont 25;
	TSym  '_' -> cont 26;
	TSym  '=' -> cont 27;
	TSym  '+' -> cont 28;
	TSym  '-' -> cont 29;
	TSym  '*' -> cont 30;
	TSym  '/' -> cont 31;
	TSym  '!' -> cont 32;
	TSym  '&' -> cont 33;
	TSym  '|' -> cont 34;
	TSym  '%' -> cont 35;
	TSym  '^' -> cont 36;
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
parseError _ = error "Parse error"

data Expr = Let String Expr Expr
    | Case Expr [Patern]
    | FuncCall String [Expr]
    | FuncDeclar String [String] [Expr]
    | Un Char Expr
    | Bin Char Expr Expr
    | Assign String Expr
    | Var String
    | Lit Lit
    deriving (Show, Eq)

data Patern = Patern Lit Expr
    deriving (Show, Eq)

data Lit = Cst Int
    | LBool Bool
    | LTuple Expr Expr
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
