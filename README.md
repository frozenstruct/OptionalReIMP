# OptionalReIMP

**xcodebuild / xcodetest:** \
[![Build Status](https://app.bitrise.io/app/c938e38877a6eee6/status.svg?token=T2wdqJ9bBxt_irjNRUz0Xw&branch=main)](https://app.bitrise.io/app/c938e38877a6eee6)

**Goal:** \
Re-implement Optional naively with the following functionality:
- init from plain int (`OptionalIMP+IntegerLiteral.swift`)
- init from nil literal (`OptionalIMP+NilLiteral.swift`)
- unwrap / force unwrap (`OptionalIMP+Unwrapping.swift`)
- map / flatMap (`OptionalIMP+Mapping.swift`)

**Hypothesis Formal Proof Method:** \
Unit-Testing via `XCTest` (passing, see Bitrise)
