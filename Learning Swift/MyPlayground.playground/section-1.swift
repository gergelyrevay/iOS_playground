//// Playground - noun: a place where people can play
//
//import UIKit
//
////comment
//
///*
//
//multi line comment
//
//*/
//
//var str = "Hello, playground"
//str = "May the force be with you!"
//var name = "geri"
//var tree = "oak"
//var age = 30
//var pi = 3.14
//var e = 2.71
//
//var year:Int
//year = 2014
//
//var son:String = "tom"
//
//var pizzas:Float = 5
//pizzas = 1.2
//
//var a = 4
//var b = 3
//
//var c = a + b
//var d = a * b
//
//var newString = name + tree
//
//var sentence = "my name is " + name
//
//var finalString = "the year is \(year)"
//
//var x = 216
//var y = 562
//
//var challenge = "My name is \(name) and \(x) times \(y) is \(x*y)"
//
////ARRAYS
//
//var ages = [34, 33, 3, 0]
//
//var myAge = ages[1]
//
//var totalAge  = ages[0] + ages [1]
//
//var myFamily = ["Dad":"Zoltan","Mum":"Lopi", "Sister1": "Zsofi", "Sister2":"Dora"]
//
//var mumsName = myFamily["Mum"]
//
//ages.append(5)
//
//myFamily["brother"] = "Mark"
//
//println(myFamily)
//
//ages.removeAtIndex(4)
//
//myFamily["brother"] = nil
//
//println(myFamily)
//
//var numberOfPeopleInFamily = ages.count
//
//var someInteger = [Int]()
//var someString = [String]()
//var myDict =  Dictionary<String, String>()
//
////challange
//
//var myFamilyColors = ["Dad":"blue","Mum":"red", "Sister1": "turquise", "Sister2":"orange", "Me":"green"]
//
//println("There are \(myFamilyColors.count) people in my family, and my favourite colour is " + myFamilyColors["Me"]!)
//
//// if statement
//
//var number = 0
//var otherNumber = 5
//
//if number == 2 && otherNumber < 7 {
//    
//    println("Condition is true!")
//} else if number == 0 {
//    println("number is 0")
//}
//
////generate rundom number
//
//var randomNumber = arc4random() % 6

//loops

for var i = 0; i < 5; ++i {
    println(i)
}

var numbers = [3,2,4,1,5]

for (index, value) in enumerate(numbers){
    println("Index: \(index), Value: \(value)")
}

var dict = ["a":1, "b":2, "c":3, "d":4]
for (index , value) in dict{
    println("Index: \(index), Value: \(value+1)")
}

var i = 3

while (i < 7){
    i++
    
    println(i)
}

var array = [7,45,2,1]

var j = 0

var max = array.count

while (j<max){
    println(array[j])
    j++
}
