{-# OPTIONS_GHC -w #-}
module Parser (Expr (..), Patern (..), Lit (..), Program(..), Statement(..), Name) where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,220) ([62720,18448,4096,0,0,64,0,0,31680,62720,18448,0,0,0,0,0,0,32,0,1,20480,33039,4,4341,72,3920,1153,0,0,0,0,0,32768,1980,12112,1153,62720,18448,32768,49152,123,4341,72,3920,1153,62720,18448,20480,33039,4,4341,72,3920,1153,62720,18448,20480,33039,4,0,2,3920,1153,0,32768,1,0,88,0,384,0,6144,0,32768,7,0,120,0,1968,0,31488,62720,18448,0,0,0,4341,2044,8192,0,0,2,0,8192,0,1024,0,3920,1153,0,48160,20487,33039,4,0,0,1024,0,0,4,0,0,0,0,0,3920,1153,0,48192,7,4096,0,4341,72,32,31680,62720,18448,0,0,0,16384,0,3920,1153,0,0,20480,33039,4,2048,1980,0,0,0,0,0,49280,123,0,1972,3920,1153,0,48128,7,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","Exprs","Paterns","Patern","FuncVars","let","in","case","of","int","bool","var","func","'('","')'","'{'","'}'","'['","']'","':'","','","'_'","'='","'+'","'-'","'*'","'/'","'!'","'&'","'|'","'%'","'^'","%eof"]
        bit_start = st Prelude.* 36
        bit_end = (st Prelude.+ 1) Prelude.* 36
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..35]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_2
action_0 (11) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (15) = happyShift action_26
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (27) = happyShift action_18
action_3 (28) = happyShift action_19
action_3 (29) = happyShift action_20
action_3 (30) = happyShift action_21
action_3 (32) = happyShift action_22
action_3 (33) = happyShift action_23
action_3 (34) = happyShift action_24
action_3 (35) = happyShift action_25
action_3 (36) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (9) = happyShift action_2
action_4 (11) = happyShift action_4
action_4 (13) = happyShift action_5
action_4 (14) = happyShift action_6
action_4 (15) = happyShift action_7
action_4 (16) = happyShift action_8
action_4 (21) = happyShift action_9
action_4 (28) = happyShift action_10
action_4 (31) = happyShift action_11
action_4 (4) = happyGoto action_17
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_19

action_6 _ = happyReduce_20

action_7 (26) = happyShift action_16
action_7 _ = happyReduce_18

action_8 (17) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_2
action_9 (11) = happyShift action_4
action_9 (13) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (15) = happyShift action_7
action_9 (16) = happyShift action_8
action_9 (21) = happyShift action_9
action_9 (28) = happyShift action_10
action_9 (31) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_2
action_10 (11) = happyShift action_4
action_10 (13) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (21) = happyShift action_9
action_10 (28) = happyShift action_10
action_10 (31) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_2
action_11 (11) = happyShift action_4
action_11 (13) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_7
action_11 (16) = happyShift action_8
action_11 (21) = happyShift action_9
action_11 (28) = happyShift action_10
action_11 (31) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_14

action_13 _ = happyReduce_7

action_14 (24) = happyShift action_43
action_14 (27) = happyShift action_18
action_14 (28) = happyShift action_19
action_14 (29) = happyShift action_20
action_14 (30) = happyShift action_21
action_14 (32) = happyShift action_22
action_14 (33) = happyShift action_23
action_14 (34) = happyShift action_24
action_14 (35) = happyShift action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (9) = happyShift action_2
action_15 (11) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_41
action_15 (16) = happyShift action_8
action_15 (18) = happyShift action_42
action_15 (21) = happyShift action_9
action_15 (28) = happyShift action_10
action_15 (31) = happyShift action_11
action_15 (4) = happyGoto action_38
action_15 (5) = happyGoto action_39
action_15 (8) = happyGoto action_40
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (9) = happyShift action_2
action_16 (11) = happyShift action_4
action_16 (13) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (15) = happyShift action_7
action_16 (16) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (28) = happyShift action_10
action_16 (31) = happyShift action_11
action_16 (4) = happyGoto action_37
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_36
action_17 (27) = happyShift action_18
action_17 (28) = happyShift action_19
action_17 (29) = happyShift action_20
action_17 (30) = happyShift action_21
action_17 (32) = happyShift action_22
action_17 (33) = happyShift action_23
action_17 (34) = happyShift action_24
action_17 (35) = happyShift action_25
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_2
action_18 (11) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (15) = happyShift action_7
action_18 (16) = happyShift action_8
action_18 (21) = happyShift action_9
action_18 (28) = happyShift action_10
action_18 (31) = happyShift action_11
action_18 (4) = happyGoto action_35
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (9) = happyShift action_2
action_19 (11) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_7
action_19 (16) = happyShift action_8
action_19 (21) = happyShift action_9
action_19 (28) = happyShift action_10
action_19 (31) = happyShift action_11
action_19 (4) = happyGoto action_34
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_2
action_20 (11) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (28) = happyShift action_10
action_20 (31) = happyShift action_11
action_20 (4) = happyGoto action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (9) = happyShift action_2
action_21 (11) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (15) = happyShift action_7
action_21 (16) = happyShift action_8
action_21 (21) = happyShift action_9
action_21 (28) = happyShift action_10
action_21 (31) = happyShift action_11
action_21 (4) = happyGoto action_32
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_2
action_22 (11) = happyShift action_4
action_22 (13) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (15) = happyShift action_7
action_22 (16) = happyShift action_8
action_22 (21) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (31) = happyShift action_11
action_22 (4) = happyGoto action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_2
action_23 (11) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (15) = happyShift action_7
action_23 (16) = happyShift action_8
action_23 (21) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (31) = happyShift action_11
action_23 (4) = happyGoto action_30
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_2
action_24 (11) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (21) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (31) = happyShift action_11
action_24 (4) = happyGoto action_29
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_2
action_25 (11) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (21) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (31) = happyShift action_11
action_25 (4) = happyGoto action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (26) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_2
action_27 (11) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (15) = happyShift action_7
action_27 (16) = happyShift action_8
action_27 (21) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (31) = happyShift action_11
action_27 (4) = happyGoto action_55
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (32) = happyShift action_22
action_28 (33) = happyShift action_23
action_28 _ = happyReduce_13

action_29 (32) = happyShift action_22
action_29 (33) = happyShift action_23
action_29 (35) = happyShift action_25
action_29 _ = happyReduce_12

action_30 (32) = happyShift action_22
action_30 (33) = happyShift action_23
action_30 _ = happyReduce_16

action_31 (32) = happyShift action_22
action_31 (33) = happyShift action_23
action_31 _ = happyReduce_15

action_32 (32) = happyShift action_22
action_32 (33) = happyShift action_23
action_32 (34) = happyShift action_24
action_32 (35) = happyShift action_25
action_32 _ = happyReduce_11

action_33 (32) = happyShift action_22
action_33 (33) = happyShift action_23
action_33 (34) = happyShift action_24
action_33 (35) = happyShift action_25
action_33 _ = happyReduce_10

action_34 (29) = happyShift action_20
action_34 (30) = happyShift action_21
action_34 (32) = happyShift action_22
action_34 (33) = happyShift action_23
action_34 (34) = happyShift action_24
action_34 (35) = happyShift action_25
action_34 _ = happyReduce_9

action_35 (29) = happyShift action_20
action_35 (30) = happyShift action_21
action_35 (32) = happyShift action_22
action_35 (33) = happyShift action_23
action_35 (34) = happyShift action_24
action_35 (35) = happyShift action_25
action_35 _ = happyReduce_8

action_36 (9) = happyShift action_2
action_36 (11) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (15) = happyShift action_7
action_36 (16) = happyShift action_8
action_36 (21) = happyShift action_9
action_36 (28) = happyShift action_10
action_36 (31) = happyShift action_11
action_36 (4) = happyGoto action_52
action_36 (6) = happyGoto action_53
action_36 (7) = happyGoto action_54
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (27) = happyShift action_18
action_37 (28) = happyShift action_19
action_37 (29) = happyShift action_20
action_37 (30) = happyShift action_21
action_37 (32) = happyShift action_22
action_37 (33) = happyShift action_23
action_37 (34) = happyShift action_24
action_37 (35) = happyShift action_25
action_37 _ = happyReduce_17

action_38 (9) = happyShift action_2
action_38 (11) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (15) = happyShift action_7
action_38 (16) = happyShift action_8
action_38 (21) = happyShift action_9
action_38 (27) = happyShift action_18
action_38 (28) = happyShift action_51
action_38 (29) = happyShift action_20
action_38 (30) = happyShift action_21
action_38 (31) = happyShift action_11
action_38 (32) = happyShift action_22
action_38 (33) = happyShift action_23
action_38 (34) = happyShift action_24
action_38 (35) = happyShift action_25
action_38 (4) = happyGoto action_38
action_38 (5) = happyGoto action_50
action_38 _ = happyReduce_23

action_39 (18) = happyShift action_49
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (18) = happyShift action_48
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_47
action_41 (18) = happyReduce_28
action_41 (26) = happyShift action_16
action_41 (8) = happyGoto action_46
action_41 _ = happyReduce_18

action_42 (19) = happyShift action_45
action_42 _ = happyReduce_4

action_43 (9) = happyShift action_2
action_43 (11) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (15) = happyShift action_7
action_43 (16) = happyShift action_8
action_43 (21) = happyShift action_9
action_43 (28) = happyShift action_10
action_43 (31) = happyShift action_11
action_43 (4) = happyGoto action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_63
action_44 (27) = happyShift action_18
action_44 (28) = happyShift action_19
action_44 (29) = happyShift action_20
action_44 (30) = happyShift action_21
action_44 (32) = happyShift action_22
action_44 (33) = happyShift action_23
action_44 (34) = happyShift action_24
action_44 (35) = happyShift action_25
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (9) = happyShift action_2
action_45 (11) = happyShift action_4
action_45 (13) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (15) = happyShift action_7
action_45 (16) = happyShift action_8
action_45 (21) = happyShift action_9
action_45 (28) = happyShift action_10
action_45 (31) = happyShift action_11
action_45 (4) = happyGoto action_62
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_27

action_47 (15) = happyShift action_47
action_47 (8) = happyGoto action_46
action_47 _ = happyReduce_28

action_48 (19) = happyShift action_61
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_3

action_50 _ = happyReduce_22

action_51 (9) = happyShift action_2
action_51 (11) = happyShift action_4
action_51 (13) = happyShift action_5
action_51 (14) = happyShift action_6
action_51 (15) = happyShift action_7
action_51 (16) = happyShift action_8
action_51 (21) = happyShift action_9
action_51 (28) = happyShift action_10
action_51 (31) = happyShift action_11
action_51 (4) = happyGoto action_60
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (23) = happyShift action_59
action_52 (27) = happyShift action_18
action_52 (28) = happyShift action_19
action_52 (29) = happyShift action_20
action_52 (30) = happyShift action_21
action_52 (32) = happyShift action_22
action_52 (33) = happyShift action_23
action_52 (34) = happyShift action_24
action_52 (35) = happyShift action_25
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (25) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (9) = happyShift action_2
action_54 (11) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (15) = happyShift action_7
action_54 (16) = happyShift action_8
action_54 (21) = happyShift action_9
action_54 (28) = happyShift action_10
action_54 (31) = happyShift action_11
action_54 (4) = happyGoto action_52
action_54 (6) = happyGoto action_57
action_54 (7) = happyGoto action_54
action_54 _ = happyReduce_25

action_55 (10) = happyShift action_56
action_55 (27) = happyShift action_18
action_55 (28) = happyShift action_19
action_55 (29) = happyShift action_20
action_55 (30) = happyShift action_21
action_55 (32) = happyShift action_22
action_55 (33) = happyShift action_23
action_55 (34) = happyShift action_24
action_55 (35) = happyShift action_25
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (9) = happyShift action_2
action_56 (11) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (15) = happyShift action_7
action_56 (16) = happyShift action_8
action_56 (21) = happyShift action_9
action_56 (28) = happyShift action_10
action_56 (31) = happyShift action_11
action_56 (4) = happyGoto action_68
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_24

action_58 (23) = happyShift action_67
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (9) = happyShift action_2
action_59 (11) = happyShift action_4
action_59 (13) = happyShift action_5
action_59 (14) = happyShift action_6
action_59 (15) = happyShift action_7
action_59 (16) = happyShift action_8
action_59 (21) = happyShift action_9
action_59 (28) = happyShift action_10
action_59 (31) = happyShift action_11
action_59 (4) = happyGoto action_66
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (9) = happyReduce_7
action_60 (11) = happyReduce_7
action_60 (13) = happyReduce_7
action_60 (14) = happyReduce_7
action_60 (15) = happyReduce_7
action_60 (16) = happyReduce_7
action_60 (18) = happyReduce_7
action_60 (21) = happyReduce_7
action_60 (27) = happyReduce_7
action_60 (28) = happyReduce_7
action_60 (31) = happyReduce_7
action_60 _ = happyReduce_7

action_61 (9) = happyShift action_2
action_61 (11) = happyShift action_4
action_61 (13) = happyShift action_5
action_61 (14) = happyShift action_6
action_61 (15) = happyShift action_7
action_61 (16) = happyShift action_8
action_61 (21) = happyShift action_9
action_61 (28) = happyShift action_10
action_61 (31) = happyShift action_11
action_61 (4) = happyGoto action_65
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (20) = happyShift action_64
action_62 (27) = happyShift action_18
action_62 (28) = happyShift action_19
action_62 (29) = happyShift action_20
action_62 (30) = happyShift action_21
action_62 (32) = happyShift action_22
action_62 (33) = happyShift action_23
action_62 (34) = happyShift action_24
action_62 (35) = happyShift action_25
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_21

action_64 _ = happyReduce_6

action_65 (20) = happyShift action_70
action_65 (27) = happyShift action_18
action_65 (28) = happyShift action_19
action_65 (29) = happyShift action_20
action_65 (30) = happyShift action_21
action_65 (32) = happyShift action_22
action_65 (33) = happyShift action_23
action_65 (34) = happyShift action_24
action_65 (35) = happyShift action_25
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (27) = happyShift action_18
action_66 (28) = happyShift action_19
action_66 (29) = happyShift action_20
action_66 (30) = happyShift action_21
action_66 (32) = happyShift action_22
action_66 (33) = happyShift action_23
action_66 (34) = happyShift action_24
action_66 (35) = happyShift action_25
action_66 _ = happyReduce_26

action_67 (9) = happyShift action_2
action_67 (11) = happyShift action_4
action_67 (13) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (15) = happyShift action_7
action_67 (16) = happyShift action_8
action_67 (21) = happyShift action_9
action_67 (28) = happyShift action_10
action_67 (31) = happyShift action_11
action_67 (4) = happyGoto action_69
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (27) = happyShift action_18
action_68 (28) = happyShift action_19
action_68 (29) = happyShift action_20
action_68 (30) = happyShift action_21
action_68 (32) = happyShift action_22
action_68 (33) = happyShift action_23
action_68 (34) = happyShift action_24
action_68 (35) = happyShift action_25
action_68 _ = happyReduce_1

action_69 (27) = happyShift action_18
action_69 (28) = happyShift action_19
action_69 (29) = happyShift action_20
action_69 (30) = happyShift action_21
action_69 (32) = happyShift action_22
action_69 (33) = happyShift action_23
action_69 (34) = happyShift action_24
action_69 (35) = happyShift action_25
action_69 _ = happyReduce_2

action_70 _ = happyReduce_5

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
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
	(HappyTerminal (TFunc happy_var_1))
	 =  HappyAbsSyn4
		 (FuncCall happy_var_1 []
	)

happyReduce_5 = happyReduce 7 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TVar  happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclar happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
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
	 = HappyAbsSyn4
		 (FuncDeclar happy_var_1 [] happy_var_5
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

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 (HappyTerminal (TInt  happy_var_1))
	 =  HappyAbsSyn4
		 (Cst happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (LBool happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 5 4 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (LTuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 : happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  6 happyReduction_25
happyReduction_25 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  7 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1] : happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_2)
	(HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_1 : happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  8 happyReduction_28
happyReduction_28 (HappyTerminal (TVar  happy_var_1))
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_28 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 36 36 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLet -> cont 9;
	TIn -> cont 10;
	TCase -> cont 11;
	TOf -> cont 12;
	TInt  happy_dollar_dollar -> cont 13;
	TBool happy_dollar_dollar -> cont 14;
	TVar  happy_dollar_dollar -> cont 15;
	TFunc happy_dollar_dollar -> cont 16;
	TLParen -> cont 17;
	TRParen -> cont 18;
	TLBrace -> cont 19;
	TRBrace -> cont 20;
	TLBracket -> cont 21;
	TRBracket -> cont 22;
	TColon -> cont 23;
	TComma -> cont 24;
	TSym  '_' -> cont 25;
	TSym  '=' -> cont 26;
	TSym  '+' -> cont 27;
	TSym  '-' -> cont 28;
	TSym  '*' -> cont 29;
	TSym  '/' -> cont 30;
	TSym  '!' -> cont 31;
	TSym  '&' -> cont 32;
	TSym  '|' -> cont 33;
	TSym  '%' -> cont 34;
	TSym  '^' -> cont 35;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 36 tk tks = happyError' (tks, explist)
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
    | Case Expr [[Expr]] Expr
    | FuncCall String [Expr]
    | Un String Expr
    | Bin String Expr Expr
    | Var String
    | Cst Int
    | LBool Bool
    | LTuple Expr Expr
    deriving (Show)
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
