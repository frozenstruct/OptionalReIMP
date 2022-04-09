//
//  OptionalIMPMappingTests.swift
//  OptionalIMPTests
//
//  Created by Dmitry Aksyonov on 09.04.2022.
//

import XCTest

final class OptionalIMPMappingTests: XCTestCase {

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
