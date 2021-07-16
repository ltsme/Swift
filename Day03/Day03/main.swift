//
//  main.swift
//  Day03
//
//  Created by Biso on 2021/07/16.
//

import Foundation

// Dictionary
// Key와 Value로 구성됨
/*
 var scoreDictionary: Dictionary<String, Int> = [String: Int]()

 */
var scoreDictionary: [String: Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

print(scoreDictionary)

// 초기값을 가지는 Dictionary
let initializedDictionary: [String: String] = ["name": "James", "gender":"male"]
 
// Set
// Set은 집합연산에 사용되고, 중복 데이터를 적용하지 않는다. (순서와 무관하다.)
let oddDigits: Set = [1,3,5,7,9,9,9,5,3,1]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.intersection(singleDigitPrimeNumbers).sorted())

//차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())

// Set의 동등 비교
let houseAnimals: Set = ["dog", "cat", "apple"] //
let farmAnimals: Set = ["cow", "chicken", "sheep", "pig", "dog", "cat"]
let cityAnimals: Set = ["duck", "rabbit"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))


print("***************")
// If문
var isCar = true
var isNew = true
if isCar, isNew{
    print("New Car")
}


isNew = false
if isCar, isNew {
    print("New Car")
}else {
    print("Old Car")
}


// Switch 조건문

// Before Switch
let personAge = 14
if personAge < 1 {
    print("baby")
}else if personAge < 3 {
    print("toddler")
}else if personAge < 5 {
    print("preschooler")
}else if personAge < 13 {
    print("gradeschooler")
}else if personAge < 18{
    print("teen")
}else {
    print("adult")
}

// After using Switch statement
// 기본이 흘러내려가지 않기 때문에, break문이 필요없다.
switch personAge{
case 0..<1:
    print("baby")
case 1..<3:
    print("toddler")
case 3..<5:
    print("preschooler")
case 5..<13:
    print("gradechooler")
case 13..<18:
    print("teen")
default :
    print("adult")
}

let someInteger = 9223372036
print(Int.max)

switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 101...Int.max:
    print("over 100")
default :
    print("unknown")

}

let aCharacter: Character = "a"

// switch는 ,가 or 조건이다.
switch aCharacter{
case "a", "A" :
    print("The letter A")
default:
    print("Not the letter A")
}

// 국어, 영어, 수학 점수로 촘점 평균을 구하고 등급을 정하기
let name = "유비"
let kor = 91
let eng = 97
let math = 60

var tot = 0
var avg: Double = 0

tot = kor + eng + math
avg = Double(tot) / 3

// 점수 등급 출력 - 1
var grade: String

if avg > 90 {
    grade = "수"
}else if avg > 80 {
    grade = "우"
}else if avg > 70 {
    grade = "미"
}else if avg > 60 {
    grade = "양"
}else {
    grade = "가"
}
print("\(name)의 평균 점수는 \(String(format: "%.2f", avg))이며 \(grade)입니다. :if")

// switch case문을 이용한 등급 출력
switch Int(avg) {
case 90..<101 :
    grade = "수"
case 80..<90 :
    grade = "우"
case 70..<80 :
    grade = "미"
case 60..<70 :
    grade = "양"
default :
    grade = "가"
}
print("\(name)의 평균 점수는 \(String(format: "%.2f", avg))이며 \(grade)입니다. :switch")

// 삼항연산자 등급 출력
grade = avg >= 90 ? "수" :
    avg >= 80 ? "우" :
    avg >= 70 ? "미" :
    avg >= 60 ? "양" : "가"
print("\(name)의 평균 점수는 \(String(format: "%.2f", avg))이며 \(grade)입니다. :삼항연산자")

// 배열과 반복문
tot = 0
var score = [58, 64, 60]
var level = ["수","우","미","양","가"]

for i in 0..<score.count {
    tot += score[i]
    avg = Double(tot) / Double(score.count)
    if i==3, avg > 90 {
        grade = "수"
    }else if avg > 80 {
        grade = "우"
    }else if avg > 70 {
        grade = "미"
    }else if avg > 60 {
        grade = "양"
    }else {
        grade = "가"
    }
}

print("\(name)의 평균 점수는 \(String(format: "%.2f", avg))이며 \(grade)입니다. :배열과 반복문")

var score1 = [90, 80, 70, 60, 50]
var level1 = ["수","우","미","양","가"]

for i in 0..<score1.count {
    if avg >= Double(score[i]) {
        grade = level1[i]
        break
    }
}

print("\(name)의 평균 점수는 \(String(format: "%.2f", avg))이며 \(grade)입니다. :배열과 반복문")


// 반복문

let names = ["Anna", "Alex", "Brian", "Jack"]

for i in 0..<name.count{
    print(names[i])
}
for i in names {
    print(i)
}

// dictionary 반복문
let numberOfLegs = ["Spider":8, "Ant":8, "Cat":4]

for (animalName, LegCount) in numberOfLegs{
    print("\(animalName) have \(LegCount) legs")
}

let seq1 = 1...5
for i in seq1{
    print("\(i) * 5 = \(i*5)")
}

for i in seq1.reversed(){
    print("\(i) * 5 = \(i*5)")
}

let minutes = 60
let hourInterval = 5

for tickMark in stride(from: 0, to: minutes, by: hourInterval){
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: hourInterval).reversed(){
    print(tickMark)
}

// while
var startIndex = 0
var endIndex = 100
var sum = 0

while startIndex <= endIndex {
    sum += startIndex
    startIndex += 1
}
print(sum)

// 1부터 100까지의 짝수의 합 (단, if문 사용금지)
startIndex = 0
sum = 0
while startIndex <= endIndex {
    sum += startIndex
    startIndex += 2
}
print(sum)

// 입력한 한 자릿수 정수의 합을 구하는 프로그램을 작성하라
// Enter an integer(0 ~ 9) : 12345678
// Sum of digits = 36


print("Enter an integer(0 ~ 9)",terminator:" : ")
var repNum = 0
var remainder = 0
var sumNo = 0

var inpNum = Int(readLine()!)

if let _: Int = inpNum{
    repNum = inpNum!
    while repNum != 0{
        remainder += repNum % 10
        sumNo += remainder
        repNum /= 10
    }
    print("Sum of digits = \(sumNo)")
}else {
    print("Input value is wrong!")
}













































