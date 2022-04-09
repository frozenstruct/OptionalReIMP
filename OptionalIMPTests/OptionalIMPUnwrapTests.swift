//
//  OptionalIMPTests.swift
//  OptionalIMPTests
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

import XCTest

final class OptionalIMPUnwrapTests: XCTestCase {

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
}
