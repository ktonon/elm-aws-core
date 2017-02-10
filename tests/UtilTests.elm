module UtilTests exposing (all)

import Test exposing (describe, Test)
import UtilTests.EnumTests


all : Test
all =
    describe "Util"
        [ UtilTests.EnumTests.all
        ]
