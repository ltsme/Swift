//
//  main.swift
//  Day02
//
//  Created by Biso on 2021/07/15.
//

import Foundation

var str1: String

str1 = "Apple"
str1 = "Google"
//str1 = nil <-들어갈 수 없음

print(str1)

//--

var str2: String?

str2 = "Apple"
str2 = "Google"
str2 = "12345"
//str2 = nil
var int1: Int = Int(str2!)!
var int2: Int = Int("1234")!
//변환자에도 Optional이 한 번 더 자동 생성된다.
print(int1+10)












