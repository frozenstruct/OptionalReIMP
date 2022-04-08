//
//  UnwrapOperators.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

postfix operator ~>!
postfix func ~>!<U>(_ lhs: OptionalIMP<U>) -> U? {
	lhs.forceUnwrap()
}

postfix operator ~>?
postfix func ~>?<U>(_ lhs: OptionalIMP<U>) -> U? {
	lhs.unwrap()
}
