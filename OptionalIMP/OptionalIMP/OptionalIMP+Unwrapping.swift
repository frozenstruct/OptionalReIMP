//
//  OptionalIMP+Unwrapping.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

extension OptionalIMP {

	func unwrap() -> Wrapped? {
		switch self {
		case .some(let wrapped):
			return wrapped
		case .none:
			return nil
		}
	}

	func forceUnwrap() -> Wrapped? {
		switch self {
		case .some(let wrapped):
			return wrapped
		case .none:
			fatalError("Unexpectedly found nil while unwrapping an optional value")
		}
	}

	func forceUnwrap(_ errorText: @autoclosure () -> (String)) -> Wrapped {
		guard let unwrapped = unwrap() else {
			fatalError(errorText())
		}

		return unwrapped
	}
}
