//
//  OptionalIMP.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

enum OptionalIMP<Wrapped> {

	case some(Wrapped)
	case none

	init(_ wrappedValue: Wrapped) {
		self = .some(wrappedValue)
	}
}
