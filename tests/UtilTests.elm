module UtilTests exposing (all)

import Test exposing (describe, Test)
import UtilTests.CanonicalTests
import UtilTests.EnumTests
import UtilTests.SignerTests


all : Test
all =
    describe "Util"
        [ UtilTests.CanonicalTests.all
        , UtilTests.EnumTests.all
        , UtilTests.SignerTests.all
        ]
