import Foundation

var greeting = "Hello, playground"

let number = 0

let pi : Double = 3.1415926535

var variableNumber = 42

variableNumber = 24

var integer: Int = 100
var decimal: Double = 12.5

decimal = Double(integer)

integer = Int(decimal)
print(integer)

//Tuple
let cordinate: (Double, Double) = (1, 2)
cordinate.0
cordinate.1

let cordinate1: (x: Double, y:Double) = (x:10, y:20)
cordinate1.x
cordinate1.y

let circle: (x:Int, y:Int, radius:Int)
//populate
circle.x = 5
circle.y = 10
circle.radius = 20

let coordinates3D: (x:Int, y:Int, z:Int) = (2,3,1)
//print(coordinates3D.x)
//print(coordinates3D.y)
//print(coordinates3D.z)

//let x = coordinates3D.x
//let y = coordinates3D.y
//let z = coordinates3D.z
//let(x,y,z) = coordinates3D

//let coordinates3D: (x:Int, y:Int, z:Int) = (2,3,1)


//Question 01
//let valuesOfDate : (date:Double, month:Double, year:Double)
let date : (month:Int, day:Int, year:Int, temp:Double) = (01, 12, 2000, 12.5)
//let birthdate: date = (date: 12, month: 01, year: 2000, temp: 12.5)
print(date)
let (_, day, _, temp ) = date
print(day, temp)


let name = "name"

let tuple: (Int , Int) = (2, 5)

let (c, d) = tuple

let tuples = (2, 5, 6)

let tuple3 = tuples.0

/* Arithmatics Operations */
let add = 2 + 3
let subtract = 10 - 2
let multiply = 2 * 4
let devide = 24 / 3
let modulo = 28 % 10
 
// modulo don't allow floating point functions so it only works for integers
// for floating point numbers we need to add truncating Reminder.
let xx = 11.6
let r = xx.truncatingRemainder(dividingBy: 1.2)
//so the reminder is 0.8

/* Shift Operations*/
let shiftLeft = 1 << 3 //0001 adding 3 zeros in the trailing side and cutting the beginning 3 0's
let shiftRight = 32 >> 2 // 100000 adding 2 0's in the beginning and removing the 2 0's from the trailing side.

let shiftLeftWithBinary = 0b00010 << 3
let shiftRightWithBinary = 0b10000 >> 3

let shiftLeftWithHex = 0xFF00 << 2
let shiftRightWithHex = 0xFFFF >> 8

/* Increment and Decrement */
var counter = 0
counter += 1

counter -= 1

/* Operators with Mixed type */
let hourlyRate = 19.5
let hoursWorked = 10
let total = Double(hoursWorked) * hourlyRate

/* boolean litterals */
var boolTrue: Bool = true
var boolFalse = false

//boolTrue = 25 cannot use int type to boolean

var flagRaised: Bool = false
var isOver65 = true
var stillWorking = true

var hasDisposableIncome = (isOver65 && stillWorking)
var mighthaveDisposableIncome = (!isOver65 || stillWorking)

let numbers = 1...9
let numbers2 = 1..<9
let containsTen = numbers.contains(10)

print(containsTen)

let(a,b) = (100,101)
let aFirst = a<b
print(aFirst)


/* Equality Operator */
let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualsTwo = (1 != 2)
let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)

/* String */
let characterA: Character = "a"
let characterApple: Character = " "

let stringWelcome: String = " Hello world!"


//String
var message = "Hello " + "my name is "
let my = "Phill"
message += my
print(message)

//String  with character
let chara = "!"

message += chara
print(message)

//Interpolation
let name2 = "Paul"
let age = 20
let message2 = " Hello m name is \(name2), and my age is \(age)!"

let guess1 = "a"
let guess2 = "b"
var equals: Bool = false
equals = guess1 == guess2

let order = "a" < "b"

let guess3 = "a" == "b"
"a" < "b"
"a" > "b"
"a" >= "b"
"a" <= "b"

let stringModule = " Mobile Native Application Dev"
stringModule.uppercased()
stringModule.lowercased()

//Multi line commands
var multi = """
ssfkshfsj
dgfsfsh
shfhk
hghs
"""

//Control Flow
///if statement
if (2>1){
    print("Yes, 2 is grater than 1.")
}

///If else
let animal = "Fox"
if(animal == "Cat" || animal == "Dog"){
    print("Animal is a house pet.")
}else{
    print("Animal is not a house pet")
}

///if elseif
var hourOfDay = 12
let timeOfDay: String
if (hourOfDay < 6){
        timeOfDay = "Early Morning"
} else if (hourOfDay < 12){
    timeOfDay = "Morning"
} else if (hourOfDay < 17){
    timeOfDay = " Afternoon"
} else if (hourOfDay < 20){
    timeOfDay = " Evening"
} else if (hourOfDay < 24){
    timeOfDay = "Late Evening"
} else{
    timeOfDay = "INVALID HOUR"
}
print(timeOfDay)


var age4 = 22
if (age4 > 21){
    print("can vote")
}else{
    print("can't vote")
}
var canVote = (age4 > 21) ? "can vote " : "cannot vote"
print(canVote)
//Ternary Conditional Operator
//var c = 5
//var d = 10
//let min : Int
//if ( c < d ){
//    min = c}
//else {
//    min = d}
//let max : Int
//if (c>d){
//    maxi = c}
//else{
//    maxi = d}
//print(maxi)

var weekDay = 3
switch (weekDay){
case 1:
    print("monday")
case 2:
    print("tuesday")
case 3:
    print("wednesday")
default :
    print("invalid day")
}


let number4 = 10
switch (number4) {
case 0:
    print("zero")
case 1:
    print("one")
default:print("Outside range")
}

let stringAnimal = "Dog"
switch (stringAnimal) {
case "Cat", "Dog":
    print("Animal is a house pet.")
default:print("Animal is not a house pet.")
}


let hourOfDay1 = 12
let timeOfDay1:String
switch (hourOfDay1) {
case 0, 1, 2, 3, 4, 5:
    timeOfDay1 = "Early morning"
case 6, 7, 8, 9, 10, 11:
    timeOfDay1 = "Morning"
case 12, 13, 14, 15, 16:
    timeOfDay1 = "Afternoon"
case 17, 18, 19:
    timeOfDay1 = "Evening"
case 20, 21, 22, 23:
    timeOfDay1 = "Late evening"
default:timeOfDay1 = "INVALID HOUR!"}
print(timeOfDay1)


let num = 10
switch (num){
case let x where x % 2 == 0:
    print("even")
default:
    print("odd")
}

///Parcial matching in switch statements
var coordinatesNew: (x: Int, y: Int, z: Int) = (3, 2, 0)
switch (coordinatesNew) {
case (0, 0, 0): // 1
    print("Origin")
case (0, _, _): // 2
    print("On the x-axis.")
case (_, 0, _): // 3
    print("On the y-axis.")
case (_, _, 0): // 4
    print("On the z-axis.")
default:
    print("Somewhere in the space")
}


var coordinatesNew2: (x: Int, y: Int, z: Int) = (3, 2, 5)
switch(coordinatesNew2){
case (let x, let y, _) where y == x:
    print("Along the y = x line")
case(let x, let y, _) where y == x * x:
    print("Along the y = x^2 line")
default:
    break
}


for index in 0..<5{
    print(index)
}

for _ in 0...5{
    print("hello")
}

var sum = 0
for _ in 0..<8 {
    sum = sum + 1
}
print(sum)


//While Loop
while (sum < 10){
    
    if( sum == 5){
        continue
    }
    sum = sum + 1

    if (sum == 8){
        break
    }
}
print(sum)


func printName(){
    print(" This is name function")
    
}
printName()
func printName( name : String){
    print("My name is \(name)")
}
printName( name : "IOS")

func printAge( outSideName inSideName : Int){
    print(inSideName)
}
printAge(outSideName: 23)


func getPerson ( name : String, age: Int ) -> String{
    let temp = " my name is \(name), my age is \(age)"
    return temp
}
let string1 = getPerson(name: "swift", age: 10)
print(string1)


var value1 = 10
func updatevalue(num: inout Int)
{
    num += 1
//    let temp = num +1
//    return temp
}
updatevalue(num: &value1)

func add(a : Int, b : Int) -> Int{
    return a + b
}
var addFunctio : (Int, Int) -> Int = add

let result1 = addFunctio(4, 2 )
func printResult( function : (Int,Int) ->Int, a: Int, n: Int){
let result = function (a, b)
    print(result)
}

printResult(function: add, a: 4, n: 2)


//class perosnClass{
//    var name : String
//    var age Int : 22
//
//    init(
//    name : String{
//        self.name = name
//    }
//}

//extention ussed for inheritance
extension Int {
    
}
