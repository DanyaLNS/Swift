import SwiftUI

 

struct ContentView: View { //Структура отображения объекта

    var body: some View {

        Screen1()

    }

}

 

struct FirstView: View {

    var body: some View {

        VStack{

            Text("i")

            Text("i")

        }

        HStack{

            Text("a")

            Text("a")

            Text("a")

        }

        ZStack{

            Text("h")

            Text("a")

        }

    }

}

 

struct BackGround: View{

    var body: some View{

        ZStack{

            Color.red.ignoresSafeArea(.all)

            Rectangle()

            ZStack{

                Rectangle()

                    .fill(Color.white)

                    .frame(width:100,height:/*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

                Text("Baldeg")

                    .foregroundColor(.yellow)

                    .font(.system(size: 20))

                    .bold()

        }

        }

    }

    

}

 

struct Screen1: View{

    @State var show = false

    @State var counter = 0

    @State var text : String = "" //@state -

    var body: some View{

        VStack{

            Text("\(text)")

            Button(action: {

               show.toggle()

                print(show)

            }, label: {

                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/

                    .foregroundColor(Color.black)

                    .bold()

            }).fullScreenCover(isPresented: $show){ //Zabindil parametr na znachenie

               Screen2()

            }

            /*

            NavigationView{

                NavigationLink(destination: Screen2()){

                    Text("Navigation to Screen 2")

                }.animation(.spring(), value: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)

            }

            */

        }

    }

}

 

struct Screen2: View{

    @Environment(\.presentationMode) var present

    var body: some View{

        VStack{

            Text("Screen 2")

            

            Button(action: {

                self.present.wrappedValue.dismiss()

            }, label: {

                Text("Back")

            })

        }

    }

}

 

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        //FirstView()

        //BackGround()

        Screen1()

    }

 
}

 
 
PlayGround
 
 
 

import Foundation

 

var someInts = [Int]()

//print ("array contains\(someInts.count)")

someInts.append(3)

//print ("array contains\(someInts.count)")

someInts = []

var array_1 = Array(repeating: 0.0, count: 3)

//print(array_1)

var array_4 = Array(repeating: 2.5, count: 6)

//print(array_4)

 

var final_array = array_1 + array_4

//print(final_array)

 

var shop_list = ["milk","bread"]

if shop_list.isEmpty{

    //print("EMPTY")

}

else{

    //print("FULL")

}

shop_list = []

if shop_list.isEmpty{

    //print("EMPTY")

}

else{

    //print("FULL")

}

shop_list = ["milk","bread"]

 

//shop_list.append(<#T##newElement: String##String#>)

shop_list += ["Poder"]

//print(shop_list)

 

shop_list += ["Frog","Butter"]

//print(shop_list)

 

var first = shop_list[0]

 

shop_list[0] = "Coffee"

//print(shop_list)

 

shop_list[1...3] = ["Banana","Melon","Water"]

//print(shop_list)

 

shop_list.remove(at: 3)

//print(shop_list)

 

shop_list.removeLast()

//print(shop_list)

 

 

    //МНОЖЕСТВА

 

var letters = Set<Character>()

 

//print("letters count :\(letters.count)")

 

letters.insert("a")

 

//print("letters count :\(letters.count)")

 

letters = []

 

var game : Set<String> = ["PS", "Xbox", "PC"]

 

if game.isEmpty{

    //print("EMPTY")

}else{

    //print("FULL")

}

if let remove = game.remove("PC"){

    //print("\(remove)")

}else{

    //print("didn't found")

}

 

if game.contains("PC"){

    //print("YES")

}

else{

    //print("NO")

}

/*

let odd: Set = [1,3,5,7,9]

let even: Set = [2,4,6,8]

let ex: Set = [2,3,5,7]

 

let final = odd.union(even).sorted()

 

print(odd.intersection(even).sorted())

 

print(odd.subtracting(ex).sorted())

 

print(odd.symmetricDifference(ex).sorted())

*/

 

 

 

//СЛОВАРИ

 

 

var intefars = [Int:String]()

 

intefars[16] = "sixteen"

 

var airports = ["SVO": "Shiremet","VKO": "Vnukovo"]

 

//print("airports count : \(airports)")

 

airports["JFK"] = "New York"

 

//print("airports count : \(airports)")

airports["SVO"] = "Shiremetievo"

 

if let oldValue = airports.updateValue("JFK Airport", forKey: "JFK"){

    //print("Old value is \(oldValue)")

}

 

//print("airports count : \(airports)")

 

 

    //УПРАВЛЕНИЕ ПОТОКОМ (циклы)

 

 

let names = ["Alah", "Magomed"]

/*

for name in names {

    print("Hi \(name)")

}

*/

 

let animals = ["spider": 0, "cat": 4]

/*

for (animalName, legCount) in animals{

    print("Animal name is \(animalName), leg size is \(legCount)")

}

for index in 1...5 {

    print(index*5)

}

*/

let base = 3

let power = 2

var answer = 1

 

for _ in 1...power{

    answer *= base

}

 

//print("\(base) pow \(power) is \(answer)")

 

let input = "great mind is power"

var output = ""

let to_remove : [Character] = ["a","e","i","c","u"," "]

 

for char in input{

    if to_remove.contains(char){

        continue

    }

    else{

        output.append(char)

    }

}

print("output : \(output)")

 

let symbols : Character = "s"

var posible : Int?

 

switch symbols{

case "6", "s":

    posible = 1

case "ш":

    posible = 2

default:

    break

}

 

if let value = posible {

    print("Integer value \(symbols) is \(value)")

}

else{

    print("Not found")

}

 

let integer = 2

var descript = "The number \(integer) is "

 

switch integer {

case 2,3,5,7,11,13,17,19:

    descript += "prim number "

    fallthrough

default:

    descript += "integer"

}

 

print(descript)
