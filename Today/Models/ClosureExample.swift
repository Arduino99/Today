//
//  ClosureExample.swift
//  
//
//  Created by Arduino Mandarelli on 07/03/2023.
//

import Foundation

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)

print(reversedNames)




