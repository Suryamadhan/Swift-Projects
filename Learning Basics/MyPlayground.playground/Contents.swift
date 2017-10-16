//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let string1 : String = "Hello"
let string2 : String = "Hel" + "lo"

let fallthroughSwitch = 10
switch fallthroughSwitch
{   case 0..<20:
        print("Number is between 0 and 20")
    fallthrough
    case 0..<30:
        print("Number is between 0 and 30")
    default:
        print("Number is something else")
}
var reversedString = ""
for character in "Hello".characters
{
    reversedString = String(character) + reversedString
}

print(reversedString)
print("Hello".characters.count)

if string1.hasPrefix("H")
{
    print("String begins with an H")
}
if string1.hasSuffix("llo")
{
    print("String ends in 'llo'")
}

// Nonoptional (regular), NOT allowed to be nil
var aNonOptionalInteger = 42;
//if aNonOptionalInteger != nil
//{
//    print("It has a value!")
//}
//else
//{
//    print("It has no value!")
//}


var conditionalString : String? = "a string"
if let theString = conditionalString
{
    print("The string is '\(theString)'")
}
else
{
    print("The string is nil")
}

let aTuple = (1, "Yes")
let theNumber = aTuple.0 // = 1
let anotherTuple = (aNumber: 1, aString: "Yes")
let theOtherNumber = anotherTuple.aNumber // = 1

// Array of integers
let arrayOfIntegers : [Int] = [1,2,3]
// Type of array is implied
let implicitArrayOfIntegers = [1,2,3]
// You can also create an empty array, but you must provide the type.
let anotherArray = [Int]()
var myArray = [1,2,3]
myArray.append(4)
// = [1,2,3,4]
myArray.insert(5, at: 0) // = [5,1,2,3,4]
myArray.remove(at:4) // = [5,1,2,3]
myArray.reverse()
// = [3,2,1,5]

myArray.count // = 4

var crew = [
    "Captain": "Benjamin Sisko", "First Officer": "Kira Nerys", "Constable": "Odo"
];
crew["Captain"]
// = "Benjamin Sisko"

// This dictionary uses integers for both keys and values.
var aNumberDictionary = [1: 2]
aNumberDictionary[21] = 23

//var aMixedDictionary = ["one": 1, "two": "twoooo"] not working
// The type of this dictionary is [String: NSObject], // allowing it to have basically any type of value.

enum Weapon
{
    case Laser(powerLevel: Int)
    case Missiles(range: Int)
}
let spaceLaser = Weapon.Laser(powerLevel: 5)
switch spaceLaser
{
    case .Laser(powerLevel: 0...10 ):
        print("It's a laser with power from 0 to 10!")
    case .Laser:
        print("It's a laser!")
    case .Missiles(let range):
            print("It's a missile with range \(range)!")
}


var setOfStrings = Set<String>()
var fruitSet: Set = ["apple", "orange", "orange", "banana"]
print(fruitSet.count)
var otherSet: Set = ["apple", "orange", "peach", "banana"]
print(otherSet.count)
if fruitSet.isEmpty { print("My set is empty!")
}
// Add a new item to the set
fruitSet.insert("pear")
// Remove an item from the set
fruitSet.remove("apple")
// fruitSet now contains {"banana", "pear", "orange"}
func sayHello() {
    print("Hello")
}
sayHello()

func addNumbers(firstValue: Int, secondValue: Int) -> Int
{
    return firstValue + secondValue;
}
print(addNumbers(firstValue:1, secondValue: 2));

func processNumbers(firstValue: Int, secondValue: Int) -> (doubled: Int, quadrupled: Int)
{
    return (firstValue * 2, secondValue * 4)
//    returns tupple
}
print(processNumbers(firstValue: 2, secondValue: 4))

func multiplyNumbers2 (firstNumber: Int, multiplier: Int = 2) -> Int
{
    return firstNumber * multiplier;
}
// Parameters with default values can be omitted multiplyNumbers2(2) // = 4

func sumNumbers(numbers: Int...) -> Int
{
    // in this function, 'numbers' is an array of Ints
    var total = 0
    for number in numbers
    {
        total += number
    }
    return total
}

print(sumNumbers(numbers: 2,3,4,5,6))

func timesThree(number: Int) -> Int
{
    return number * 3
}

// This function takes an Int as a parameter. It returns a new function that // takes an Int parameter and returns an Int.
func createAdder(numberToAdd: Int) -> (Int) -> Int
{
    func adder(number: Int) -> Int
    {
        return number + numberToAdd
    }
    return adder
    
}
var addTwo = createAdder(numberToAdd:2)
// 'addTwo' is now a function that can be called
print(addTwo(2))

func createIncrementor(incrementAmount: Int) -> () -> Int
{
    var amount = 0
    func incrementor() -> Int
    {
        amount += incrementAmount
        return amount
    }
    return incrementor
    
}

var incrementByTen = createIncrementor(incrementAmount:10)
print(incrementByTen()) // = 10
print(incrementByTen()) // = 20
var incrementByFifteen = createIncrementor(incrementAmount:15)
print(incrementByFifteen()) // = 15
//pg 55

var sortingInline = [2, 5, 98, 2, 13]
sortingInline.sort() // = [2, 2, 5, 13, 98]

func doSomeWork() {
    print("Getting started!")
    defer {
        print("All done!")
    }
    print("Getting to work!")
}
doSomeWork()
// Prints "Getting started!", "Getting to work!", and "All done!", in that order



