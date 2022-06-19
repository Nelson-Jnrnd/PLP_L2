{-# OPTIONS_GHC -w #-}
module Parser (Expr (..), Patern (..), Lit (..), Program(..), Statement(..), Name) where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,258) ([43008,16519,194,3920,33921,1,32768,247,0,0,0,32,0,62720,18448,24,0,0,0,0,0,0,0,0,16,0,7840,2306,16387,1085,1554,31360,9224,12,0,0,0,0,0,0,0,0,0,0,0,32,0,32,0,48448,4612,32774,2170,3108,0,0,0,0,0,0,61952,30,38824,49728,32768,49152,123,0,64,16384,1085,1554,31360,9224,12,4341,6216,59904,36897,48,17364,24864,43008,16519,194,3920,33921,40961,542,777,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,1085,1554,6144,8,0,4341,8188,0,4,0,0,0,43008,16519,194,0,31680,0,64,0,0,0,0,512,0,62720,18448,24,0,0,0,1,0,8192,0,0,49664,123,0,0,0,0,0,31360,9224,12,0,1,24576,32,0,0,1,4096,57344,61,3920,33921,40961,542,777,0,0,0,8192,0,0,0,0,0,0,54272,8259,97,16384,15840,0,0,0,0,63361,16384,1085,1554,0,56832,3,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Program","Statement","Expr","Exprs","Paterns","Patern","FuncVars","Lit","let","in","case","of","int","bool","var","func","\"(\"","\")\"","\"{\"","\"}\"","\"[\"","\"]\"","\":\"","\",\"","\"_\"","\"=\"","\"+\"","\"-\"","\"*\"","\"/\"","\"!\"","\"&\"","\"|\"","\"%\"","\"^\"","\"True\"","\"False\"","%eof"]
        bit_start = st * 41
        bit_end = (st + 1) * 41
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..40]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (18) = happyShift action_17
action_0 (19) = happyShift action_18
action_0 (24) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (34) = happyShift action_12
action_0 (39) = happyShift action_13
action_0 (40) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (5) = happyGoto action_16
action_0 (6) = happyGoto action_2
action_0 (11) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_4
action_1 (14) = happyShift action_5
action_1 (16) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (18) = happyShift action_8
action_1 (19) = happyShift action_9
action_1 (24) = happyShift action_10
action_1 (31) = happyShift action_11
action_1 (34) = happyShift action_12
action_1 (39) = happyShift action_13
action_1 (40) = happyShift action_14
action_1 (6) = happyGoto action_2
action_1 (11) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (30) = happyShift action_27
action_2 (31) = happyShift action_28
action_2 (32) = happyShift action_29
action_2 (33) = happyShift action_30
action_2 (35) = happyShift action_31
action_2 (36) = happyShift action_32
action_2 (37) = happyShift action_33
action_2 (38) = happyShift action_34
action_2 _ = happyReduce_1

action_3 _ = happyReduce_23

action_4 (18) = happyShift action_26
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (12) = happyShift action_4
action_5 (14) = happyShift action_5
action_5 (16) = happyShift action_6
action_5 (17) = happyShift action_7
action_5 (18) = happyShift action_8
action_5 (19) = happyShift action_9
action_5 (24) = happyShift action_10
action_5 (31) = happyShift action_11
action_5 (34) = happyShift action_12
action_5 (39) = happyShift action_13
action_5 (40) = happyShift action_14
action_5 (6) = happyGoto action_25
action_5 (11) = happyGoto action_3
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_31

action_7 _ = happyReduce_32

action_8 _ = happyReduce_22

action_9 (20) = happyShift action_24
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (12) = happyShift action_4
action_10 (14) = happyShift action_5
action_10 (16) = happyShift action_6
action_10 (17) = happyShift action_7
action_10 (18) = happyShift action_8
action_10 (19) = happyShift action_9
action_10 (24) = happyShift action_10
action_10 (31) = happyShift action_11
action_10 (34) = happyShift action_12
action_10 (39) = happyShift action_13
action_10 (40) = happyShift action_14
action_10 (6) = happyGoto action_23
action_10 (11) = happyGoto action_3
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_4
action_11 (14) = happyShift action_5
action_11 (16) = happyShift action_6
action_11 (17) = happyShift action_7
action_11 (18) = happyShift action_8
action_11 (19) = happyShift action_9
action_11 (24) = happyShift action_10
action_11 (31) = happyShift action_11
action_11 (34) = happyShift action_12
action_11 (39) = happyShift action_13
action_11 (40) = happyShift action_14
action_11 (6) = happyGoto action_22
action_11 (11) = happyGoto action_3
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_4
action_12 (14) = happyShift action_5
action_12 (16) = happyShift action_6
action_12 (17) = happyShift action_7
action_12 (18) = happyShift action_8
action_12 (19) = happyShift action_9
action_12 (24) = happyShift action_10
action_12 (31) = happyShift action_11
action_12 (34) = happyShift action_12
action_12 (39) = happyShift action_13
action_12 (40) = happyShift action_14
action_12 (6) = happyGoto action_21
action_12 (11) = happyGoto action_3
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_6

action_14 _ = happyReduce_7

action_15 (41) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_2

action_17 (29) = happyShift action_20
action_17 _ = happyReduce_22

action_18 (20) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_4
action_19 (14) = happyShift action_5
action_19 (16) = happyShift action_6
action_19 (17) = happyShift action_7
action_19 (18) = happyShift action_51
action_19 (19) = happyShift action_9
action_19 (21) = happyShift action_52
action_19 (24) = happyShift action_10
action_19 (31) = happyShift action_11
action_19 (34) = happyShift action_12
action_19 (39) = happyShift action_13
action_19 (40) = happyShift action_14
action_19 (6) = happyGoto action_45
action_19 (7) = happyGoto action_46
action_19 (10) = happyGoto action_50
action_19 (11) = happyGoto action_3
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_4
action_20 (14) = happyShift action_5
action_20 (16) = happyShift action_6
action_20 (17) = happyShift action_7
action_20 (18) = happyShift action_8
action_20 (19) = happyShift action_9
action_20 (24) = happyShift action_10
action_20 (31) = happyShift action_11
action_20 (34) = happyShift action_12
action_20 (39) = happyShift action_13
action_20 (40) = happyShift action_14
action_20 (6) = happyGoto action_49
action_20 (11) = happyGoto action_3
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (30) = happyShift action_27
action_21 (31) = happyShift action_28
action_21 (32) = happyShift action_29
action_21 (33) = happyShift action_30
action_21 (35) = happyShift action_31
action_21 (36) = happyShift action_32
action_21 (37) = happyShift action_33
action_21 (38) = happyShift action_34
action_21 _ = happyReduce_19

action_22 (30) = happyShift action_27
action_22 (31) = happyShift action_28
action_22 (32) = happyShift action_29
action_22 (33) = happyShift action_30
action_22 (35) = happyShift action_31
action_22 (36) = happyShift action_32
action_22 (37) = happyShift action_33
action_22 (38) = happyShift action_34
action_22 _ = happyReduce_12

action_23 (27) = happyShift action_48
action_23 (30) = happyShift action_27
action_23 (31) = happyShift action_28
action_23 (32) = happyShift action_29
action_23 (33) = happyShift action_30
action_23 (35) = happyShift action_31
action_23 (36) = happyShift action_32
action_23 (37) = happyShift action_33
action_23 (38) = happyShift action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_4
action_24 (14) = happyShift action_5
action_24 (16) = happyShift action_6
action_24 (17) = happyShift action_7
action_24 (18) = happyShift action_8
action_24 (19) = happyShift action_9
action_24 (21) = happyShift action_47
action_24 (24) = happyShift action_10
action_24 (31) = happyShift action_11
action_24 (34) = happyShift action_12
action_24 (39) = happyShift action_13
action_24 (40) = happyShift action_14
action_24 (6) = happyGoto action_45
action_24 (7) = happyGoto action_46
action_24 (11) = happyGoto action_3
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_44
action_25 (30) = happyShift action_27
action_25 (31) = happyShift action_28
action_25 (32) = happyShift action_29
action_25 (33) = happyShift action_30
action_25 (35) = happyShift action_31
action_25 (36) = happyShift action_32
action_25 (37) = happyShift action_33
action_25 (38) = happyShift action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (29) = happyShift action_43
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_4
action_27 (14) = happyShift action_5
action_27 (16) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (18) = happyShift action_8
action_27 (19) = happyShift action_9
action_27 (24) = happyShift action_10
action_27 (31) = happyShift action_11
action_27 (34) = happyShift action_12
action_27 (39) = happyShift action_13
action_27 (40) = happyShift action_14
action_27 (6) = happyGoto action_42
action_27 (11) = happyGoto action_3
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_4
action_28 (14) = happyShift action_5
action_28 (16) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (18) = happyShift action_8
action_28 (19) = happyShift action_9
action_28 (24) = happyShift action_10
action_28 (31) = happyShift action_11
action_28 (34) = happyShift action_12
action_28 (39) = happyShift action_13
action_28 (40) = happyShift action_14
action_28 (6) = happyGoto action_41
action_28 (11) = happyGoto action_3
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (12) = happyShift action_4
action_29 (14) = happyShift action_5
action_29 (16) = happyShift action_6
action_29 (17) = happyShift action_7
action_29 (18) = happyShift action_8
action_29 (19) = happyShift action_9
action_29 (24) = happyShift action_10
action_29 (31) = happyShift action_11
action_29 (34) = happyShift action_12
action_29 (39) = happyShift action_13
action_29 (40) = happyShift action_14
action_29 (6) = happyGoto action_40
action_29 (11) = happyGoto action_3
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_4
action_30 (14) = happyShift action_5
action_30 (16) = happyShift action_6
action_30 (17) = happyShift action_7
action_30 (18) = happyShift action_8
action_30 (19) = happyShift action_9
action_30 (24) = happyShift action_10
action_30 (31) = happyShift action_11
action_30 (34) = happyShift action_12
action_30 (39) = happyShift action_13
action_30 (40) = happyShift action_14
action_30 (6) = happyGoto action_39
action_30 (11) = happyGoto action_3
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (16) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (18) = happyShift action_8
action_31 (19) = happyShift action_9
action_31 (24) = happyShift action_10
action_31 (31) = happyShift action_11
action_31 (34) = happyShift action_12
action_31 (39) = happyShift action_13
action_31 (40) = happyShift action_14
action_31 (6) = happyGoto action_38
action_31 (11) = happyGoto action_3
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_4
action_32 (14) = happyShift action_5
action_32 (16) = happyShift action_6
action_32 (17) = happyShift action_7
action_32 (18) = happyShift action_8
action_32 (19) = happyShift action_9
action_32 (24) = happyShift action_10
action_32 (31) = happyShift action_11
action_32 (34) = happyShift action_12
action_32 (39) = happyShift action_13
action_32 (40) = happyShift action_14
action_32 (6) = happyGoto action_37
action_32 (11) = happyGoto action_3
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_4
action_33 (14) = happyShift action_5
action_33 (16) = happyShift action_6
action_33 (17) = happyShift action_7
action_33 (18) = happyShift action_8
action_33 (19) = happyShift action_9
action_33 (24) = happyShift action_10
action_33 (31) = happyShift action_11
action_33 (34) = happyShift action_12
action_33 (39) = happyShift action_13
action_33 (40) = happyShift action_14
action_33 (6) = happyGoto action_36
action_33 (11) = happyGoto action_3
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_4
action_34 (14) = happyShift action_5
action_34 (16) = happyShift action_6
action_34 (17) = happyShift action_7
action_34 (18) = happyShift action_8
action_34 (19) = happyShift action_9
action_34 (24) = happyShift action_10
action_34 (31) = happyShift action_11
action_34 (34) = happyShift action_12
action_34 (39) = happyShift action_13
action_34 (40) = happyShift action_14
action_34 (6) = happyGoto action_35
action_34 (11) = happyGoto action_3
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (30) = happyShift action_27
action_35 (31) = happyShift action_28
action_35 (32) = happyShift action_29
action_35 (33) = happyShift action_30
action_35 (35) = happyShift action_31
action_35 (36) = happyShift action_32
action_35 (37) = happyShift action_33
action_35 (38) = happyShift action_34
action_35 _ = happyReduce_18

action_36 (30) = happyShift action_27
action_36 (31) = happyShift action_28
action_36 (32) = happyShift action_29
action_36 (33) = happyShift action_30
action_36 (35) = happyShift action_31
action_36 (36) = happyShift action_32
action_36 (37) = happyShift action_33
action_36 (38) = happyShift action_34
action_36 _ = happyReduce_17

action_37 (30) = happyShift action_27
action_37 (31) = happyShift action_28
action_37 (32) = happyShift action_29
action_37 (33) = happyShift action_30
action_37 (35) = happyShift action_31
action_37 (36) = happyShift action_32
action_37 (37) = happyShift action_33
action_37 (38) = happyShift action_34
action_37 _ = happyReduce_21

action_38 (30) = happyShift action_27
action_38 (31) = happyShift action_28
action_38 (32) = happyShift action_29
action_38 (33) = happyShift action_30
action_38 (35) = happyShift action_31
action_38 (36) = happyShift action_32
action_38 (37) = happyShift action_33
action_38 (38) = happyShift action_34
action_38 _ = happyReduce_20

action_39 (30) = happyShift action_27
action_39 (31) = happyShift action_28
action_39 (32) = happyShift action_29
action_39 (33) = happyShift action_30
action_39 (35) = happyShift action_31
action_39 (36) = happyShift action_32
action_39 (37) = happyShift action_33
action_39 (38) = happyShift action_34
action_39 _ = happyReduce_16

action_40 (30) = happyShift action_27
action_40 (31) = happyShift action_28
action_40 (32) = happyShift action_29
action_40 (33) = happyShift action_30
action_40 (35) = happyShift action_31
action_40 (36) = happyShift action_32
action_40 (37) = happyShift action_33
action_40 (38) = happyShift action_34
action_40 _ = happyReduce_15

action_41 (30) = happyShift action_27
action_41 (31) = happyShift action_28
action_41 (32) = happyShift action_29
action_41 (33) = happyShift action_30
action_41 (35) = happyShift action_31
action_41 (36) = happyShift action_32
action_41 (37) = happyShift action_33
action_41 (38) = happyShift action_34
action_41 _ = happyReduce_14

action_42 (30) = happyShift action_27
action_42 (31) = happyShift action_28
action_42 (32) = happyShift action_29
action_42 (33) = happyShift action_30
action_42 (35) = happyShift action_31
action_42 (36) = happyShift action_32
action_42 (37) = happyShift action_33
action_42 (38) = happyShift action_34
action_42 _ = happyReduce_13

action_43 (12) = happyShift action_4
action_43 (14) = happyShift action_5
action_43 (16) = happyShift action_6
action_43 (17) = happyShift action_7
action_43 (18) = happyShift action_8
action_43 (19) = happyShift action_9
action_43 (24) = happyShift action_10
action_43 (31) = happyShift action_11
action_43 (34) = happyShift action_12
action_43 (39) = happyShift action_13
action_43 (40) = happyShift action_14
action_43 (6) = happyGoto action_64
action_43 (11) = happyGoto action_3
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (16) = happyShift action_6
action_44 (17) = happyShift action_7
action_44 (24) = happyShift action_10
action_44 (8) = happyGoto action_61
action_44 (9) = happyGoto action_62
action_44 (11) = happyGoto action_63
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (16) = happyShift action_6
action_45 (17) = happyShift action_7
action_45 (18) = happyShift action_8
action_45 (19) = happyShift action_9
action_45 (24) = happyShift action_10
action_45 (30) = happyShift action_27
action_45 (31) = happyShift action_60
action_45 (32) = happyShift action_29
action_45 (33) = happyShift action_30
action_45 (34) = happyShift action_12
action_45 (35) = happyShift action_31
action_45 (36) = happyShift action_32
action_45 (37) = happyShift action_33
action_45 (38) = happyShift action_34
action_45 (39) = happyShift action_13
action_45 (40) = happyShift action_14
action_45 (6) = happyGoto action_45
action_45 (7) = happyGoto action_59
action_45 (11) = happyGoto action_3
action_45 _ = happyReduce_25

action_46 (21) = happyShift action_58
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_11

action_48 (12) = happyShift action_4
action_48 (14) = happyShift action_5
action_48 (16) = happyShift action_6
action_48 (17) = happyShift action_7
action_48 (18) = happyShift action_8
action_48 (19) = happyShift action_9
action_48 (24) = happyShift action_10
action_48 (31) = happyShift action_11
action_48 (34) = happyShift action_12
action_48 (39) = happyShift action_13
action_48 (40) = happyShift action_14
action_48 (6) = happyGoto action_57
action_48 (11) = happyGoto action_3
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (30) = happyShift action_27
action_49 (31) = happyShift action_28
action_49 (32) = happyShift action_29
action_49 (33) = happyShift action_30
action_49 (35) = happyShift action_31
action_49 (36) = happyShift action_32
action_49 (37) = happyShift action_33
action_49 (38) = happyShift action_34
action_49 _ = happyReduce_5

action_50 (21) = happyShift action_56
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (18) = happyShift action_55
action_51 (21) = happyReduce_30
action_51 (10) = happyGoto action_54
action_51 _ = happyReduce_22

action_52 (22) = happyShift action_53
action_52 _ = happyReduce_11

action_53 (12) = happyShift action_4
action_53 (14) = happyShift action_5
action_53 (16) = happyShift action_6
action_53 (17) = happyShift action_7
action_53 (18) = happyShift action_8
action_53 (19) = happyShift action_9
action_53 (24) = happyShift action_10
action_53 (31) = happyShift action_11
action_53 (34) = happyShift action_12
action_53 (39) = happyShift action_13
action_53 (40) = happyShift action_14
action_53 (6) = happyGoto action_72
action_53 (11) = happyGoto action_3
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_29

action_55 (18) = happyShift action_55
action_55 (10) = happyGoto action_54
action_55 _ = happyReduce_30

action_56 (22) = happyShift action_71
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (25) = happyShift action_70
action_57 (30) = happyShift action_27
action_57 (31) = happyShift action_28
action_57 (32) = happyShift action_29
action_57 (33) = happyShift action_30
action_57 (35) = happyShift action_31
action_57 (36) = happyShift action_32
action_57 (37) = happyShift action_33
action_57 (38) = happyShift action_34
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_10

action_59 _ = happyReduce_24

action_60 (12) = happyShift action_4
action_60 (14) = happyShift action_5
action_60 (16) = happyShift action_6
action_60 (17) = happyShift action_7
action_60 (18) = happyShift action_8
action_60 (19) = happyShift action_9
action_60 (24) = happyShift action_10
action_60 (31) = happyShift action_11
action_60 (34) = happyShift action_12
action_60 (39) = happyShift action_13
action_60 (40) = happyShift action_14
action_60 (6) = happyGoto action_69
action_60 (11) = happyGoto action_3
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (28) = happyShift action_68
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (16) = happyShift action_6
action_62 (17) = happyShift action_7
action_62 (24) = happyShift action_10
action_62 (8) = happyGoto action_67
action_62 (9) = happyGoto action_62
action_62 (11) = happyGoto action_63
action_62 _ = happyReduce_27

action_63 (26) = happyShift action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (13) = happyShift action_65
action_64 (30) = happyShift action_27
action_64 (31) = happyShift action_28
action_64 (32) = happyShift action_29
action_64 (33) = happyShift action_30
action_64 (35) = happyShift action_31
action_64 (36) = happyShift action_32
action_64 (37) = happyShift action_33
action_64 (38) = happyShift action_34
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (12) = happyShift action_4
action_65 (14) = happyShift action_5
action_65 (16) = happyShift action_6
action_65 (17) = happyShift action_7
action_65 (18) = happyShift action_8
action_65 (19) = happyShift action_9
action_65 (24) = happyShift action_10
action_65 (31) = happyShift action_11
action_65 (34) = happyShift action_12
action_65 (39) = happyShift action_13
action_65 (40) = happyShift action_14
action_65 (6) = happyGoto action_77
action_65 (11) = happyGoto action_3
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (12) = happyShift action_4
action_66 (14) = happyShift action_5
action_66 (16) = happyShift action_6
action_66 (17) = happyShift action_7
action_66 (18) = happyShift action_8
action_66 (19) = happyShift action_9
action_66 (24) = happyShift action_10
action_66 (31) = happyShift action_11
action_66 (34) = happyShift action_12
action_66 (39) = happyShift action_13
action_66 (40) = happyShift action_14
action_66 (6) = happyGoto action_76
action_66 (11) = happyGoto action_3
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_26

action_68 (26) = happyShift action_75
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (12) = happyReduce_14
action_69 (14) = happyReduce_14
action_69 (16) = happyReduce_14
action_69 (17) = happyReduce_14
action_69 (18) = happyReduce_14
action_69 (19) = happyReduce_14
action_69 (21) = happyReduce_14
action_69 (24) = happyReduce_14
action_69 (30) = happyShift action_27
action_69 (31) = happyShift action_28
action_69 (32) = happyShift action_29
action_69 (33) = happyShift action_30
action_69 (34) = happyReduce_14
action_69 (35) = happyShift action_31
action_69 (36) = happyShift action_32
action_69 (37) = happyShift action_33
action_69 (38) = happyShift action_34
action_69 (39) = happyReduce_14
action_69 (40) = happyReduce_14
action_69 _ = happyReduce_14

action_70 _ = happyReduce_33

action_71 (12) = happyShift action_4
action_71 (14) = happyShift action_5
action_71 (16) = happyShift action_6
action_71 (17) = happyShift action_7
action_71 (18) = happyShift action_8
action_71 (19) = happyShift action_9
action_71 (24) = happyShift action_10
action_71 (31) = happyShift action_11
action_71 (34) = happyShift action_12
action_71 (39) = happyShift action_13
action_71 (40) = happyShift action_14
action_71 (6) = happyGoto action_74
action_71 (11) = happyGoto action_3
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (23) = happyShift action_73
action_72 (30) = happyShift action_27
action_72 (31) = happyShift action_28
action_72 (32) = happyShift action_29
action_72 (33) = happyShift action_30
action_72 (35) = happyShift action_31
action_72 (36) = happyShift action_32
action_72 (37) = happyShift action_33
action_72 (38) = happyShift action_34
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_4

action_74 (23) = happyShift action_79
action_74 (30) = happyShift action_27
action_74 (31) = happyShift action_28
action_74 (32) = happyShift action_29
action_74 (33) = happyShift action_30
action_74 (35) = happyShift action_31
action_74 (36) = happyShift action_32
action_74 (37) = happyShift action_33
action_74 (38) = happyShift action_34
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (12) = happyShift action_4
action_75 (14) = happyShift action_5
action_75 (16) = happyShift action_6
action_75 (17) = happyShift action_7
action_75 (18) = happyShift action_8
action_75 (19) = happyShift action_9
action_75 (24) = happyShift action_10
action_75 (31) = happyShift action_11
action_75 (34) = happyShift action_12
action_75 (39) = happyShift action_13
action_75 (40) = happyShift action_14
action_75 (6) = happyGoto action_78
action_75 (11) = happyGoto action_3
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (30) = happyShift action_27
action_76 (31) = happyShift action_28
action_76 (32) = happyShift action_29
action_76 (33) = happyShift action_30
action_76 (35) = happyShift action_31
action_76 (36) = happyShift action_32
action_76 (37) = happyShift action_33
action_76 (38) = happyShift action_34
action_76 _ = happyReduce_28

action_77 (30) = happyShift action_27
action_77 (31) = happyShift action_28
action_77 (32) = happyShift action_29
action_77 (33) = happyShift action_30
action_77 (35) = happyShift action_31
action_77 (36) = happyShift action_32
action_77 (37) = happyShift action_33
action_77 (38) = happyShift action_34
action_77 _ = happyReduce_8

action_78 (30) = happyShift action_27
action_78 (31) = happyShift action_28
action_78 (32) = happyShift action_29
action_78 (33) = happyShift action_30
action_78 (35) = happyShift action_31
action_78 (36) = happyShift action_32
action_78 (37) = happyShift action_33
action_78 (38) = happyShift action_34
action_78 _ = happyReduce_9

action_79 _ = happyReduce_3

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
	_ `HappyStk`
	(HappyTerminal happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncDeclar happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncDeclar happy_var_1 _ happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn6
		 (TBool True
	)

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn6
		 (TBool False
	)

happyReduce_8 = happyReduce 6 6 happyReduction_8
happyReduction_8 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 7 6 happyReduction_9
happyReduction_9 ((HappyAbsSyn6  happy_var_7) `HappyStk`
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

happyReduce_10 = happyReduce 4 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TFunc happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 _
	_
	(HappyTerminal (TFunc happy_var_1))
	 =  HappyAbsSyn6
		 (FuncCall happy_var_1 _
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Un "-" happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "+" happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "-" happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "*" happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "/" happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "%" happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "^" happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Un "!" happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "&" happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Bin "|" happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn6
		 (Var happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

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
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 : happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  10 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_2)
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_2 : happy_var_1
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  11 happyReduction_31
happyReduction_31 (HappyTerminal (TInt  happy_var_1))
	 =  HappyAbsSyn11
		 (Cst happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  11 happyReduction_32
happyReduction_32 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn11
		 (LBool happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happyReduce 5 11 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (LTuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLet -> cont 12;
	TIn -> cont 13;
	TCase -> cont 14;
	TOf -> cont 15;
	TInt  happy_dollar_dollar -> cont 16;
	TBool happy_dollar_dollar -> cont 17;
	TVar  happy_dollar_dollar -> cont 18;
	TFunc happy_dollar_dollar -> cont 19;
	TLParen -> cont 20;
	TRParen -> cont 21;
	TLBrace -> cont 22;
	TRBrace -> cont 23;
	TLBracket -> cont 24;
	TRBracket -> cont 25;
	TColon -> cont 26;
	TComma -> cont 27;
	TSym  "_" -> cont 28;
	TSym  "=" -> cont 29;
	TSym  "+" -> cont 30;
	TSym  "-" -> cont 31;
	TSym  "*" -> cont 32;
	TSym  "/" -> cont 33;
	TSym  "!" -> cont 34;
	TSym  "&" -> cont 35;
	TSym  "|" -> cont 36;
	TSym  "%" -> cont 37;
	TSym  "^" -> cont 38;
	TBool True -> cont 39;
	TBool False -> cont 40;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 41 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr = Let String Expr Expr
    | Case Expr [Patern]
    | FuncCall String [Expr]
    | Un String Expr
    | Bin String Expr Expr
    | Var String
    | Lit Lit
    deriving (Show, Eq)

data Patern = Patern Lit Expr
    deriving (Show, Eq)

data Lit = Cst Int
    | LBool Bool
    | LTuple Expr Expr
    deriving (Show, Eq)

data Statement = 
    FuncDeclar String [String] [Expr]
    | Assign String Expr
    deriving (Show, Eq)

data Program
    = PExpr Expr
    | PStatement Statement
    deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
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
     = case happyDrop (k - ((1) :: Int)) sts of
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





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
