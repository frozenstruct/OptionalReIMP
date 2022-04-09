//
//  OptionalIMP+IntegerLiteral.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

extension OptionalIMP: ExpressibleByIntegerLiteral {

	typealias IntegerLiteralType = Int

	init(integerLiteral value: IntegerLiteralType) {
		guard let value = value as? Wrapped else {
			self = .none
			return
		}

		self = .some(value)
	}
}

