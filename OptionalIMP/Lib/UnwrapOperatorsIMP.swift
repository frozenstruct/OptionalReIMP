//
//  UnwrapOperatorsIMP.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 09.04.2022.
//


postfix func ~>!<U>(_ lhs: OptionalIMP<U>) -> U? {
	lhs.forceUnwrap()
}

func ~>!!<U>(_ lhs: OptionalIMP<U>, _ rhs: @autoclosure () -> String) -> U {
	lhs.forceUnwrap(rhs())
}

postfix func ~>?<U>(_ lhs: OptionalIMP<U>) -> U? {
	lhs.unwrap()
}
