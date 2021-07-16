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

// 비교 연산자
print(1 == 1)

// Tuple에서의 비교 연산
print((1, "zebra") < (2, "apple"))
// 1번째 항에서 판단이 나면 2번째 항은 비교하지 않음
print((3, "apple") < (3, "bird"))

// 삼항 조건 연산자
let contentHeight = 40
let hasHeader = 20

let rowHeight = contentHeight + (hasHeader == 20 ? 50 : 20)
print(rowHeight)

// 범위 연산자
// 닫힌 범위 연산자
for i in 1...10{
    print(i)
}

var sum: Int = 0
for i in 1...10{
    sum += i
}
print("1~10의 합계는 \(sum)입니다.")

for i in 1..<10{
    for j in 1..<10{
        print("\(i) X \(j) = \(i*j)")
    }
    print("****")
}

let names = ["Anna", "Alex", "Brian", "Jack"]

for i in 0..<names.count{
    print("Person \(i+1) : \(names[i])")
}

//Optional
/*
 값이 있을 수도 있고, 없을 수도 있음.
 nil값을 포함할 수도 있고, 포함 안할 수도 있음
 */

var constantNum: Int? = 100
constantNum = nil
var constantNum2: Int! = 100
print(constantNum2)
print(constantNum2 + 10)

// Optional Unwrapping

var myName: String? = nil
var yourName: String! = nil
print(myName as Any)

// Optional Binding
if let name: String = myName{
    //nil이 아닐때 if 수행
    print(name)
}else{
    //nil일 때 else
    print("myName is nil")
}

var myName2: String? = "James"
var yourName2: String? = nil

if let name = myName2, let friend = yourName2 {
    print("\(name) and \(friend)")
}

// Force Unwrapping
//print(myName2!, yourName2!)
print(myName2!, yourName2 as Any)

//nil값은 as Any로만 가능하다.


// Collection : 여러값들을 묶어서 하나의 변수로 사용
/*
 Array : 순서가 있는 리스트 걸렉션
 Dictionary : Key와 Value의 쌍으로 이루어진 컬렉션
 Set : 순서가 없고 멤버가 유일한 컬렉션, 집합연산
 */

//Array 생성 방법
/*
 var intVariable: Array<Int> = Array<Int>() //let으로 하면 한 번 입력 후 변경할 수 없다.
 var intVariable: [Int] = [Int]()
 var intVariable: [Int] = []
 */

var intVariable: [Int] = []
intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(1000)

print(intVariable)
print(intVariable.contains(100)) //특정 데이터를 갖고 있는 지 판별
print(intVariable.contains(190))

print(intVariable[0])
print(intVariable[0...2][2])
print(intVariable[0..<intVariable.count])
intVariable.remove(at: 0)
/* remove의 종류
 intVariable.removeAll()
 intVariable.removeLast()
 intVariable.removeFirst()
 
 intVariable = []
 */
print(intVariable)

// 기본 값으로 배열 생성하기
var threeDouble = Array(repeating: 0.0, count: 3)
print(threeDouble)
print(type(of: threeDouble))

var anotherDouble = Array(repeating: 2.5, count: 3)
var sixDouble = threeDouble + anotherDouble
print(sixDouble)

let intVariable2 = [1, 2, 3]
print(type(of: intVariable2))
/*
 intVariable2.append(4)
 상수라 추가할 수 없음
 */

var shoppingList = ["Eggs", "Milk"]

print(shoppingList.count)
if shoppingList.isEmpty {
    
}else {
    
}
shoppingList += ["Baking Power"]
shoppingList += ["Chocolate", "Cheese", "Butter"]
print(shoppingList)


// 배열의 특정 위치 데이터 변경 및 제거
shoppingList[0...3] = ["Bananana0", "Bananana1", "Bananana2", "Bananana3", "Bananana4"]
print(shoppingList)

shoppingList.insert("Apple", at: 3)
print(shoppingList)



// 배열의 값과 인덱스가 필요한 경우
print(shoppingList.enumerated())
for (index, value) in shoppingList.enumerated() {
    print("Item \(index+1): \(value)")
}

print(sixDouble)

var tot = 0.0
for i in sixDouble{
    tot += i
}
print(tot)

// 최대값 찾기 max가 없을 수 있기 떄문에 Optional
print(sixDouble.max()!)


































