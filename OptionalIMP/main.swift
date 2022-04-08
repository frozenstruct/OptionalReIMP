//
//  main.swift
//  OptionalIMP
//
//  Created by Dmitry Aksyonov on 08.04.2022.
//

import Foundation

let opt: OptionalIMP<Int> = 3
let nilOpt: OptionalIMP<Int> = nil
let nonIntOpt = OptionalIMP("Abracadabra")

let map = opt.map {
	$0 + 1
}

let flatMap = nonIntOpt.flatMap { s -> Int? in
	let result = Int(s)

	return result == nil ? result : nil
}

let x = nilOpt~>?
print("n")
