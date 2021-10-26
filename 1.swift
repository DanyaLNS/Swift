import Foundation

// Work with variable

var MyNum = 13

let myDouble: Double = 8.9

let label = "Very interesting text"

let label1 = " So\(MyNum)so"

let final = String(label) + String(label1)

print(final)

    // Work with arrays

var array = ["a","b"]

var emptyArray = [String : Int]()

array.append("c")

print(array)

print(emptyArray)

    // Cycles and if

let arrayNumbers = [52, 23, 74, 90]

var sum: Int = 0

for i in arrayNumbers{

    if (i>50){

        sum += 3

    }

    else{

        sum += 1

    }

}

print(sum)

 

    // Optional types: work with back end. nil initilizing only with optional

var optionalName: String? = "Danil"

print(optionalName == nil)

var greeting = "Hello, "

if let name = optionalName{

    greeting = "Hello, \(name)"

}

else{

    greeting = "Hello, user"

}

print(greeting)

 

let nick: String? = nil

let name: String = "John"

// ?? - default meaning

let greet = "Hi \(nick ?? name)"

print(greet)

 

    //switch

let fruit = "pepper"

switch fruit {

case "ananas", "banana":

    print("not apple")

case let x where

        x.hasSuffix("pepper"): // take pepper from string

    print("Spice \(x)")

default:

    print("maybe apple")

}

let x = 113

switch x {

case let a where a>10:

    print("Not apple")

case 11, 12:

    print("Apple")

default:

    print("OK")

}

 

// array of dictionaries

let array_dict = [

    "Prime_num":[2,3,5,7,11,13],

    "Fibonac":[1,1,2,3,5,8]

    ]

var largest_array = 0

let x1 = 0

for(_, numbers) in array_dict{ // for(x1, numbers) in array_dict - also works

    for number in numbers{

        if number>largest_array{

            largest_array = number

        }

    }

}

print(largest_array)

 

    // while

sum = 0

var n=0

while n<100 {

    sum += n

    n += 1

}

print(sum)

sum = 0

n = 0

    // do-while

repeat {

    sum += n

    n += 1

} while n<100

print(sum)

    // from wile to for

var loop = 0

for _ in 0..<4{ // _ - empty variable

    loop += 1

}

print(loop)

 

    // Funcions: func name(parametr: parametr type)-> returned type

func greet(_ name: String, on day: String) -> String{

    return "Hi, \(name), today is \(day)"

}

print(greet("Bob", on: "5 Oct"))

 

    // tuples

func calculator(scores: [Int]) ->(min: Int, max: Int, sum: Int){

    var min = scores[0]

    var max = scores[0]

    var sum = 0

    

    for score in scores{

        if score>max{

            max = score

        }

        else if score < min{

            min = score

        }

        sum += score

    }

    return(min, max, sum)

}

let endAr = calculator(scores: [2, 4, 6 ,8 ,20, 23])

print(endAr.sum) // endAr.1

    // function - first class object

func returnTen() -> Int{

    var y = 5

    func add(){

        y += 5

    }

    add()

    print(y)

    return y

}

returnTen()

    // how to return function in function

func makeIncrement() -> ((Int)->Int){

    func add(number: Int) -> Int{

        return 1+number

    }

    return add

}

var inc = makeIncrement()

print(inc(5))

 

func anyMatcher(list: [Int], condition:(Int) -> Bool) -> Bool{

    for item in list{

        if condition(item){

            return true

        }

    }

    return false

}

 

func lessThan(number: Int) -> Bool {

    return number<10

}

var arrayForMatches = [3, 2, 5, 34]

print(anyMatcher(list: arrayForMatches, condition: lessThan))

 

    // zamikanie funkcii

arrayForMatches.map({(number: Int) -> Int in

    let result = 3 * number

    return result

})

 

let mappedNumbers = arrayForMatches.map( {number in 3 * number})

print(mappedNumbers)

 

    // Objects and classes

class Shape{

    var numberOfSides = 0

    var name: String

    init(name: String){

        self.name = name

    }

    func definition() -> String{

        return "Shape has \(numberOfSides) sides"

    }

    func setNumverOfSides(number: Int) -> Int{

        numberOfSides = number

        return numberOfSides

    }

    deinit{

        name = ""

        numberOfSides = 0

    }

}

 

class Square: Shape{

    var sideLength: Double

    init(sideLength: Double, name: String){

        self.sideLength = sideLength

        super.init(name: name)

        numberOfSides = 4

    }

    func area() -> Double{

        return sideLength*sideLength

    }

    override func definition() -> String {

        return "Square has \(numberOfSides) sides"

    }

}

 

// Getters and setters

class Triangle: Shape{

    var sideLength: Double = 0.0

    init(sideLength: Double, name: String){

        self.sideLength = sideLength

        super.init(name: name)

        numberOfSides = 3

    }

    var perimetr: Double{

        get{

            return 3*sideLength

        }

        set{

            sideLength = newValue/3.0

        }

    }

    override func definition() -> String {

        return "Triangle has \(numberOfSides) sides"

    }

}

 

var shape = Shape(name: "Triangle")

shape.setNumverOfSides(number: 3)

print(shape.definition())

 

var square = Square(sideLength: 2.5, name: "Square")

print(square.area())

print(square.definition())

 

var triangle = Triangle(sideLength: 3.5, name: "Triangle")

print(triangle.perimetr)

print(triangle.sideLength)

print(triangle.definition())

 

    // Protocoli

protocol Example {

    var simple: String{ get }

    mutating func adjust()

}

 

class SimpleClass: Example{

    var simple: String = "Simple class"

    var another: Int = 231

    func adjust() {

        simple += " Adjusted!"

    }

}

 

var a = SimpleClass()

a.adjust()

print(a.simple)

 

let aDescript = a.simple

 

struct SimpleStructure: Example{

    var simple: String = "Simple Struct"

    mutating func  adjust() {

        simple+=" Adjusted!"

    }

}

var b = SimpleStructure()

print(b.adjust())

 

    // extension

extension Int: Example{

    var simple: String{

        return "Number \(self)"

    }

    mutating func adjust() {

        self += 42

    }

}

print(5.simple)

 

    // enum

enum Errors: Error{

    case outPaper

    case noTime

    case fire

}

 

func send(job: Int, toPrinter printname: String) throws -> String{

    if printname == "Toner"{

        throw Errors.noTime

    }

    return "job sent"

}

 

do{

    let printerResponce = try send(job: 43, toPrinter: "Toner")

    print(printerResponce)

}

catch{

    print(error)

}
