//
//  OptionalIMPForceUnwrapTests.swift
//  OptionalIMPTests
//
//  Created by Dmitry Aksyonov on 09.04.2022.
//

import XCTest

class OptionalIMPForceUnwrapTests: XCTestCase {

	func testOptionalForceUnwrapsToValue() {

		// Arrange

		var sut: OptionalIMP<Int>

		sut = 3

		// Act

		let unwrapped = sut~>!

		// Assert

		XCTAssertNotNil(unwrapped)
	}
}
