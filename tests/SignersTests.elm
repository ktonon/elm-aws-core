module SignersTests exposing (all)

import Test exposing (describe, Test)
import SignersTests.CanonicalTests as CanonicalTests
import SignersTests.V4Tests as V4Tests


all : Test
all =
    describe "Signers"
        [ CanonicalTests.all
        , V4Tests.all
        ]
