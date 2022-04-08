//
//  OptionalIMP+Mapping.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

extension OptionalIMP {

	func map<U>(_ transform: (Wrapped) -> U) -> U? {
		switch self {
		case .some(let wrapped):
			return transform(wrapped)
		case .none:
			return nil
		}
	}

	func flatMap<U>(_ transform: (Wrapped) -> U?) -> U? {
		switch self {
		case .some(let wrapped):
			return transform(wrapped)
		case .none:
			return nil
		}
	}
}
