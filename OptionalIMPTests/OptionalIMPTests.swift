//
//  OptionalIMPTests.swift
//  OptionalIMPTests
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

import XCTest

final class OptionalIMPTests: XCTestCase {

	func testOptionalUnwrapsToValue() {

		// Arrange

		var sut: OptionalIMP<Int>

		sut = 3

		// Act

		let unwrapped = sut~>?

		// Assert

		XCTAssertNotNil(unwrapped)
	}

	func testOptionalUnwrapsToNil() {

		// Arrange

		var sut: OptionalIMP<Int>

		sut = .none

		// Act

		let unwrapped = sut~>?

		// Assert

		XCTAssertNil(unwrapped)
	}

	func testOptionalMapsToSome() {

		// Arrange

		var sut: OptionalIMP<Int>

		sut = 10

		let expectedValue = 100

		// Act

		let mapped = sut.map {
			$0 * 10
		}

		// Assert

		XCTAssertEqual(mapped, expectedValue)
	}

	func testOptionalMapsToNil() {

		// Arrange

		var sut: OptionalIMP<Int>

		sut = nil

		// Act

		let mapped = sut.map {
			$0 * 10
		}

		// Assert

		XCTAssertNil(mapped)
	}
}
