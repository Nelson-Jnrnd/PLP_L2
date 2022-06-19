{-# OPTIONS_GHC -w #-}
module Parser (Expr (..), Pat (..), Program(..), Statement(..)) where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,232) ([54272,8259,1,4341,72,0,61184,1,4,0,17364,288,0,0,0,0,0,0,0,0,4,0,4341,72,15680,4612,20480,33039,4,0,0,0,0,0,32768,0,4096,0,54272,8267,1,4341,72,0,0,0,0,0,0,7922,62720,18450,0,2,495,0,32,54272,8259,1,4341,72,15680,4612,20480,33039,4,17364,288,62720,18448,16384,1085,18,3920,1153,0,0,6,0,1408,0,24576,0,0,24,0,7680,0,32768,7,0,492,0,31488,54272,8259,1,4341,72,15680,65284,1,32,0,0,0,62720,18448,0,0,495,8192,0,0,0,0,1024,0,15680,4612,0,0,0,256,0,0,4,0,2048,495,0,0,0,0,0,4341,72,0,61200,1,4096,0,17364,288,512,48128,16391,1085,18,0,0,0,256,0,4341,72,0,0,0,0,0,17364,288,0,48136,7,0,0,32768,31680,0,53248,30,4341,72,0,61184,1,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Program","Statement","Expr","Exprs","Paterns","Patern","FuncVars","let","in","case","of","int","bool","var","func","\"(\"","\")\"","\"{\"","\"}\"","\"[\"","\"]\"","\":\"","\",\"","\"_\"","\"=\"","\"+\"","\"-\"","\"*\"","\"/\"","\"!\"","\"&\"","\"|\"","\"%\"","\"^\"","%eof"]
        bit_start = st Prelude.* 38
        bit_end = (st Prelude.+ 1) Prelude.* 38
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..37]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_3
action_0 (13) = happyShift action_4
action_0 (15) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (23) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (33) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_13
action_0 (6) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_3
action_1 (13) = happyShift action_4
action_1 (15) = happyShift action_5
action_1 (16) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (18) = happyShift action_8
action_1 (23) = happyShift action_9
action_1 (30) = happyShift action_10
action_1 (33) = happyShift action_11
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (29) = happyShift action_24
action_2 (30) = happyShift action_25
action_2 (31) = happyShift action_26
action_2 (32) = happyShift action_27
action_2 (34) = happyShift action_28
action_2 (35) = happyShift action_29
action_2 (36) = happyShift action_30
action_2 (37) = happyShift action_31
action_2 _ = happyReduce_1

action_3 (17) = happyShift action_23
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (11) = happyShift action_3
action_4 (13) = happyShift action_4
action_4 (15) = happyShift action_5
action_4 (16) = happyShift action_6
action_4 (17) = happyShift action_7
action_4 (18) = happyShift action_8
action_4 (23) = happyShift action_9
action_4 (30) = happyShift action_10
action_4 (33) = happyShift action_11
action_4 (6) = happyGoto action_22
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_21

action_6 _ = happyReduce_22

action_7 _ = happyReduce_20

action_8 (19) = happyShift action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_3
action_9 (13) = happyShift action_4
action_9 (15) = happyShift action_5
action_9 (16) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (18) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (30) = happyShift action_10
action_9 (33) = happyShift action_11
action_9 (6) = happyGoto action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_3
action_10 (13) = happyShift action_4
action_10 (15) = happyShift action_5
action_10 (16) = happyShift action_6
action_10 (17) = happyShift action_7
action_10 (18) = happyShift action_8
action_10 (23) = happyShift action_9
action_10 (30) = happyShift action_10
action_10 (33) = happyShift action_11
action_10 (6) = happyGoto action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (11) = happyShift action_3
action_11 (13) = happyShift action_4
action_11 (15) = happyShift action_5
action_11 (16) = happyShift action_6
action_11 (17) = happyShift action_7
action_11 (18) = happyShift action_8
action_11 (23) = happyShift action_9
action_11 (30) = happyShift action_10
action_11 (33) = happyShift action_11
action_11 (6) = happyGoto action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (38) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_2

action_14 (28) = happyShift action_17
action_14 _ = happyReduce_20

action_15 (19) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_3
action_16 (13) = happyShift action_4
action_16 (15) = happyShift action_5
action_16 (16) = happyShift action_6
action_16 (17) = happyShift action_48
action_16 (18) = happyShift action_8
action_16 (20) = happyShift action_49
action_16 (23) = happyShift action_9
action_16 (30) = happyShift action_10
action_16 (33) = happyShift action_11
action_16 (6) = happyGoto action_42
action_16 (7) = happyGoto action_43
action_16 (10) = happyGoto action_47
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_3
action_17 (13) = happyShift action_4
action_17 (15) = happyShift action_5
action_17 (16) = happyShift action_6
action_17 (17) = happyShift action_7
action_17 (18) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (33) = happyShift action_11
action_17 (6) = happyGoto action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_17

action_19 _ = happyReduce_10

action_20 (26) = happyShift action_45
action_20 (29) = happyShift action_24
action_20 (30) = happyShift action_25
action_20 (31) = happyShift action_26
action_20 (32) = happyShift action_27
action_20 (34) = happyShift action_28
action_20 (35) = happyShift action_29
action_20 (36) = happyShift action_30
action_20 (37) = happyShift action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_3
action_21 (13) = happyShift action_4
action_21 (15) = happyShift action_5
action_21 (16) = happyShift action_6
action_21 (17) = happyShift action_7
action_21 (18) = happyShift action_8
action_21 (20) = happyShift action_44
action_21 (23) = happyShift action_9
action_21 (30) = happyShift action_10
action_21 (33) = happyShift action_11
action_21 (6) = happyGoto action_42
action_21 (7) = happyGoto action_43
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_41
action_22 (29) = happyShift action_24
action_22 (30) = happyShift action_25
action_22 (31) = happyShift action_26
action_22 (32) = happyShift action_27
action_22 (34) = happyShift action_28
action_22 (35) = happyShift action_29
action_22 (36) = happyShift action_30
action_22 (37) = happyShift action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (28) = happyShift action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_3
action_24 (13) = happyShift action_4
action_24 (15) = happyShift action_5
action_24 (16) = happyShift action_6
action_24 (17) = happyShift action_7
action_24 (18) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (33) = happyShift action_11
action_24 (6) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_3
action_25 (13) = happyShift action_4
action_25 (15) = happyShift action_5
action_25 (16) = happyShift action_6
action_25 (17) = happyShift action_7
action_25 (18) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (33) = happyShift action_11
action_25 (6) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_3
action_26 (13) = happyShift action_4
action_26 (15) = happyShift action_5
action_26 (16) = happyShift action_6
action_26 (17) = happyShift action_7
action_26 (18) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (33) = happyShift action_11
action_26 (6) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_3
action_27 (13) = happyShift action_4
action_27 (15) = happyShift action_5
action_27 (16) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (18) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (33) = happyShift action_11
action_27 (6) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_3
action_28 (13) = happyShift action_4
action_28 (15) = happyShift action_5
action_28 (16) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (18) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (33) = happyShift action_11
action_28 (6) = happyGoto action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_3
action_29 (13) = happyShift action_4
action_29 (15) = happyShift action_5
action_29 (16) = happyShift action_6
action_29 (17) = happyShift action_7
action_29 (18) = happyShift action_8
action_29 (23) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (33) = happyShift action_11
action_29 (6) = happyGoto action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_3
action_30 (13) = happyShift action_4
action_30 (15) = happyShift action_5
action_30 (16) = happyShift action_6
action_30 (17) = happyShift action_7
action_30 (18) = happyShift action_8
action_30 (23) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (33) = happyShift action_11
action_30 (6) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_3
action_31 (13) = happyShift action_4
action_31 (15) = happyShift action_5
action_31 (16) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (18) = happyShift action_8
action_31 (23) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (33) = happyShift action_11
action_31 (6) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (34) = happyShift action_28
action_32 (35) = happyShift action_29
action_32 _ = happyReduce_16

action_33 (34) = happyShift action_28
action_33 (35) = happyShift action_29
action_33 (37) = happyShift action_31
action_33 _ = happyReduce_15

action_34 (34) = happyShift action_28
action_34 (35) = happyShift action_29
action_34 _ = happyReduce_19

action_35 (34) = happyShift action_28
action_35 (35) = happyShift action_29
action_35 _ = happyReduce_18

action_36 (34) = happyShift action_28
action_36 (35) = happyShift action_29
action_36 (36) = happyShift action_30
action_36 (37) = happyShift action_31
action_36 _ = happyReduce_14

action_37 (34) = happyShift action_28
action_37 (35) = happyShift action_29
action_37 (36) = happyShift action_30
action_37 (37) = happyShift action_31
action_37 _ = happyReduce_13

action_38 (31) = happyShift action_26
action_38 (32) = happyShift action_27
action_38 (34) = happyShift action_28
action_38 (35) = happyShift action_29
action_38 (36) = happyShift action_30
action_38 (37) = happyShift action_31
action_38 _ = happyReduce_12

action_39 (31) = happyShift action_26
action_39 (32) = happyShift action_27
action_39 (34) = happyShift action_28
action_39 (35) = happyShift action_29
action_39 (36) = happyShift action_30
action_39 (37) = happyShift action_31
action_39 _ = happyReduce_11

action_40 (11) = happyShift action_3
action_40 (13) = happyShift action_4
action_40 (15) = happyShift action_5
action_40 (16) = happyShift action_6
action_40 (17) = happyShift action_7
action_40 (18) = happyShift action_8
action_40 (23) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (33) = happyShift action_11
action_40 (6) = happyGoto action_61
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_3
action_41 (13) = happyShift action_4
action_41 (15) = happyShift action_5
action_41 (16) = happyShift action_6
action_41 (17) = happyShift action_7
action_41 (18) = happyShift action_8
action_41 (23) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (33) = happyShift action_11
action_41 (6) = happyGoto action_58
action_41 (8) = happyGoto action_59
action_41 (9) = happyGoto action_60
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_3
action_42 (13) = happyShift action_4
action_42 (15) = happyShift action_5
action_42 (16) = happyShift action_6
action_42 (17) = happyShift action_7
action_42 (18) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (29) = happyShift action_24
action_42 (30) = happyShift action_57
action_42 (31) = happyShift action_26
action_42 (32) = happyShift action_27
action_42 (33) = happyShift action_11
action_42 (34) = happyShift action_28
action_42 (35) = happyShift action_29
action_42 (36) = happyShift action_30
action_42 (37) = happyShift action_31
action_42 (6) = happyGoto action_42
action_42 (7) = happyGoto action_56
action_42 _ = happyReduce_25

action_43 (20) = happyShift action_55
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_9

action_45 (11) = happyShift action_3
action_45 (13) = happyShift action_4
action_45 (15) = happyShift action_5
action_45 (16) = happyShift action_6
action_45 (17) = happyShift action_7
action_45 (18) = happyShift action_8
action_45 (23) = happyShift action_9
action_45 (30) = happyShift action_10
action_45 (33) = happyShift action_11
action_45 (6) = happyGoto action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (29) = happyShift action_24
action_46 (30) = happyShift action_25
action_46 (31) = happyShift action_26
action_46 (32) = happyShift action_27
action_46 (34) = happyShift action_28
action_46 (35) = happyShift action_29
action_46 (36) = happyShift action_30
action_46 (37) = happyShift action_31
action_46 _ = happyReduce_5

action_47 (20) = happyShift action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (17) = happyShift action_52
action_48 (20) = happyReduce_30
action_48 (10) = happyGoto action_51
action_48 _ = happyReduce_20

action_49 (21) = happyShift action_50
action_49 _ = happyReduce_9

action_50 (11) = happyShift action_3
action_50 (13) = happyShift action_4
action_50 (15) = happyShift action_5
action_50 (16) = happyShift action_6
action_50 (17) = happyShift action_7
action_50 (18) = happyShift action_8
action_50 (23) = happyShift action_9
action_50 (30) = happyShift action_10
action_50 (33) = happyShift action_11
action_50 (6) = happyGoto action_69
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_29

action_52 (17) = happyShift action_52
action_52 (10) = happyGoto action_51
action_52 _ = happyReduce_30

action_53 (21) = happyShift action_68
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (24) = happyShift action_67
action_54 (29) = happyShift action_24
action_54 (30) = happyShift action_25
action_54 (31) = happyShift action_26
action_54 (32) = happyShift action_27
action_54 (34) = happyShift action_28
action_54 (35) = happyShift action_29
action_54 (36) = happyShift action_30
action_54 (37) = happyShift action_31
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_8

action_56 _ = happyReduce_24

action_57 (11) = happyShift action_3
action_57 (13) = happyShift action_4
action_57 (15) = happyShift action_5
action_57 (16) = happyShift action_6
action_57 (17) = happyShift action_7
action_57 (18) = happyShift action_8
action_57 (23) = happyShift action_9
action_57 (30) = happyShift action_10
action_57 (33) = happyShift action_11
action_57 (6) = happyGoto action_66
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (25) = happyShift action_65
action_58 (29) = happyShift action_24
action_58 (30) = happyShift action_25
action_58 (31) = happyShift action_26
action_58 (32) = happyShift action_27
action_58 (34) = happyShift action_28
action_58 (35) = happyShift action_29
action_58 (36) = happyShift action_30
action_58 (37) = happyShift action_31
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (27) = happyShift action_64
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_3
action_60 (13) = happyShift action_4
action_60 (15) = happyShift action_5
action_60 (16) = happyShift action_6
action_60 (17) = happyShift action_7
action_60 (18) = happyShift action_8
action_60 (23) = happyShift action_9
action_60 (30) = happyShift action_10
action_60 (33) = happyShift action_11
action_60 (6) = happyGoto action_58
action_60 (8) = happyGoto action_63
action_60 (9) = happyGoto action_60
action_60 _ = happyReduce_27

action_61 (12) = happyShift action_62
action_61 (29) = happyShift action_24
action_61 (30) = happyShift action_25
action_61 (31) = happyShift action_26
action_61 (32) = happyShift action_27
action_61 (34) = happyShift action_28
action_61 (35) = happyShift action_29
action_61 (36) = happyShift action_30
action_61 (37) = happyShift action_31
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (11) = happyShift action_3
action_62 (13) = happyShift action_4
action_62 (15) = happyShift action_5
action_62 (16) = happyShift action_6
action_62 (17) = happyShift action_7
action_62 (18) = happyShift action_8
action_62 (23) = happyShift action_9
action_62 (30) = happyShift action_10
action_62 (33) = happyShift action_11
action_62 (6) = happyGoto action_74
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_26

action_64 (25) = happyShift action_73
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (11) = happyShift action_3
action_65 (13) = happyShift action_4
action_65 (15) = happyShift action_5
action_65 (16) = happyShift action_6
action_65 (17) = happyShift action_7
action_65 (18) = happyShift action_8
action_65 (23) = happyShift action_9
action_65 (30) = happyShift action_10
action_65 (33) = happyShift action_11
action_65 (6) = happyGoto action_72
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyReduce_10
action_66 (13) = happyReduce_10
action_66 (15) = happyReduce_10
action_66 (16) = happyReduce_10
action_66 (17) = happyReduce_10
action_66 (18) = happyReduce_10
action_66 (20) = happyReduce_10
action_66 (23) = happyReduce_10
action_66 (29) = happyReduce_10
action_66 (30) = happyReduce_10
action_66 (33) = happyReduce_10
action_66 _ = happyReduce_10

action_67 _ = happyReduce_23

action_68 (11) = happyShift action_3
action_68 (13) = happyShift action_4
action_68 (15) = happyShift action_5
action_68 (16) = happyShift action_6
action_68 (17) = happyShift action_7
action_68 (18) = happyShift action_8
action_68 (23) = happyShift action_9
action_68 (30) = happyShift action_10
action_68 (33) = happyShift action_11
action_68 (6) = happyGoto action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (22) = happyShift action_70
action_69 (29) = happyShift action_24
action_69 (30) = happyShift action_25
action_69 (31) = happyShift action_26
action_69 (32) = happyShift action_27
action_69 (34) = happyShift action_28
action_69 (35) = happyShift action_29
action_69 (36) = happyShift action_30
action_69 (37) = happyShift action_31
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_4

action_71 (22) = happyShift action_76
action_71 (29) = happyShift action_24
action_71 (30) = happyShift action_25
action_71 (31) = happyShift action_26
action_71 (32) = happyShift action_27
action_71 (34) = happyShift action_28
action_71 (35) = happyShift action_29
action_71 (36) = happyShift action_30
action_71 (37) = happyShift action_31
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (29) = happyShift action_24
action_72 (30) = happyShift action_25
action_72 (31) = happyShift action_26
action_72 (32) = happyShift action_27
action_72 (34) = happyShift action_28
action_72 (35) = happyShift action_29
action_72 (36) = happyShift action_30
action_72 (37) = happyShift action_31
action_72 _ = happyReduce_28

action_73 (11) = happyShift action_3
action_73 (13) = happyShift action_4
action_73 (15) = happyShift action_5
action_73 (16) = happyShift action_6
action_73 (17) = happyShift action_7
action_73 (18) = happyShift action_8
action_73 (23) = happyShift action_9
action_73 (30) = happyShift action_10
action_73 (33) = happyShift action_11
action_73 (6) = happyGoto action_75
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (29) = happyShift action_24
action_74 (30) = happyShift action_25
action_74 (31) = happyShift action_26
action_74 (32) = happyShift action_27
action_74 (34) = happyShift action_28
action_74 (35) = happyShift action_29
action_74 (36) = happyShift action_30
action_74 (37) = happyShift action_31
action_74 _ = happyReduce_6

action_75 (29) = happyShift action_24
action_75 (30) = happyShift action_25
action_75 (31) = happyShift action_26
action_75 (32) = happyShift action_27
action_75 (34) = happyShift action_28
action_75 (35) = happyShift action_29
action_75 (36) = happyShift action_30
action_75 (37) = happyShift action_31
action_75 _ = happyReduce_7

action_76 _ = happyReduce_3

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (PExpr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (PStatement happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 7 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncDeclar happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncDeclar happy_var_1 [] happy_var_5
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 6 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 7 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Case happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 _
	_
	(HappyTerminal (TFunc happy_var_1))
	 =  HappyAbsSyn6
		 (FuncCall happy_var_1 []
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Un "-" happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "+" happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "-" happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "*" happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "/" happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "%" happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "^" happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Un "!" happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "&" happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "|" happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  6 happyReduction_20
happyReduction_20 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn6
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 (HappyTerminal (TInt  happy_var_1))
	 =  HappyAbsSyn6
		 (Cst happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn6
		 (LBool happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happyReduce 5 6 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LTuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_2  7 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  7 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  8 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 : happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  8 happyReduction_27
happyReduction_27 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn9
		 (Pat happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  10 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_30 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLet -> cont 11;
	TIn -> cont 12;
	TCase -> cont 13;
	TOf -> cont 14;
	TInt  happy_dollar_dollar -> cont 15;
	TBool happy_dollar_dollar -> cont 16;
	TVar  happy_dollar_dollar -> cont 17;
	TFunc happy_dollar_dollar -> cont 18;
	TLParen -> cont 19;
	TRParen -> cont 20;
	TLBrace -> cont 21;
	TRBrace -> cont 22;
	TLBracket -> cont 23;
	TRBracket -> cont 24;
	TColon -> cont 25;
	TComma -> cont 26;
	TSym  "_" -> cont 27;
	TSym  "=" -> cont 28;
	TSym  "+" -> cont 29;
	TSym  "-" -> cont 30;
	TSym  "*" -> cont 31;
	TSym  "/" -> cont 32;
	TSym  "!" -> cont 33;
	TSym  "&" -> cont 34;
	TSym  "|" -> cont 35;
	TSym  "%" -> cont 36;
	TSym  "^" -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
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
    | Case Expr [Pat] Expr
    | FuncCall String [Expr]
    | Un String Expr
    | Bin String Expr Expr
    | Var String
    | Cst Int
    | LBool Bool
    | LTuple Expr Expr
    deriving (Show, Eq)

data Pat = Pat Expr Expr deriving (Show, Eq)

data Statement = FuncDeclar String [String] Expr
    | Assign String Expr
    deriving (Show, Eq)

data Program = PExpr Expr
    | PStatement Statement
    deriving (Show, Eq)
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
