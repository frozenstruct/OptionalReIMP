//
//  OptionalIMP+NilLiteral.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

extension OptionalIMP: ExpressibleByNilLiteral {

	init(nilLiteral: ()) {
		self = .none
	}
}
