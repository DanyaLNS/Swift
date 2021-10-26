import SwiftUI

 

struct ContentView: View {

    @ObservedObject var getData = DataImport()

    var body: some View {

     //   LoginPage()

        NavigationView{

            List(getData.data) { i in

                ListRow(url: i.avatar_url, name: i.login)

            }.navigationTitle("JSon")

        }

    }

}

 

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}

 

struct Screen_2 : View {

    @Environment(\.presentationMode) var present

    var body: some View {

       VStack {

            Text("Screen_2")

            Button(action: {

                self.present.wrappedValue.dismiss()

            }){

                Text("Back")

            }

        }

    }

}

 

struct Screen_1 : View {

    @State var text : String = ""

    @State var show = false

    var body: some View {

        VStack {

            Button(action: {

                self.show.toggle()

                print(show)

            }){

                Text("Button")

            }.fullScreenCover(isPresented: $show) {

                Screen_2()

            }

            

        }

    }

}

 

struct LoginPage : View {

    @State var name = ""

    @State var surName = ""

    @State var nameSaved = UserDefaults.standard.string(forKey: "Name")

    @State var surNameSaved = UserDefaults.standard.string(forKey: "Surname")

    @State var show = false

    var body: some View{

        VStack(spacing: 60){

            TextField("Name: ", text: $name)

            TextField("SurName: ", text: $surName)

            Button(action: {

                show.toggle()

            }){

                Text("Move")

            }.sheet(isPresented: $show){

                HomeView()

            }

            Button(action: {

                UserDefaults.standard.set(name, forKey: "Name")

                UserDefaults.standard.setValue(surName, forKey: "Surname")

            }){

                Text("Save")

            }

            Button(action: {

                UserDefaults.standard.removeObject(forKey: "Name")

                UserDefaults.standard.removeObject(forKey: "Surname")

            }){

                Text("Delete")

            }

        }.padding()

        

    }

}

 

struct HomeView : View{

    @State var name = UserDefaults.standard.string(forKey: "Name")

    @State var surName = UserDefaults.standard.string(forKey: "Surname")

    var body: some View{

        VStack{

            Text(name ?? "")

            Text(surName ?? "")

        }

    }

}

//

//  ContentView.swift

//  testproj

//

//  Created by student on 12.10.2021.

//

 

import SwiftUI

 

struct ContentView: View {

    @ObservedObject var getData = DataImport()

    var body: some View {

     //   LoginPage()

        NavigationView{

            List(getData.data) { i in

                ListRow(url: i.avatar_url, name: i.login)

            }.navigationTitle("JSon")

        }

    }

}

 

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}

 

struct Screen_2 : View {

    @Environment(\.presentationMode) var present

    var body: some View {

       VStack {

            Text("Screen_2")

            Button(action: {

                self.present.wrappedValue.dismiss()

            }){

                Text("Back")

            }

        }

    }

}

 

struct Screen_1 : View {

    @State var text : String = ""

    @State var show = false

    var body: some View {

        VStack {

            Button(action: {

                self.show.toggle()

                print(show)

            }){

                Text("Button")

            }.fullScreenCover(isPresented: $show) {

                Screen_2()

            }

            

        }

    }

}

 

struct LoginPage : View {

    @State var name = ""

    @State var surName = ""

    @State var nameSaved = UserDefaults.standard.string(forKey: "Name")

    @State var surNameSaved = UserDefaults.standard.string(forKey: "Surname")

    @State var show = false

    var body: some View{

        VStack(spacing: 60){

            TextField("Name: ", text: $name)

            TextField("SurName: ", text: $surName)

            Button(action: {

                show.toggle()

            }){

                Text("Move")

            }.sheet(isPresented: $show){

                HomeView()

            }

            Button(action: {

                UserDefaults.standard.set(name, forKey: "Name")

                UserDefaults.standard.setValue(surName, forKey: "Surname")

            }){

                Text("Save")

            }

            Button(action: {

                UserDefaults.standard.removeObject(forKey: "Name")

                UserDefaults.standard.removeObject(forKey: "Surname")

            }){

                Text("Delete")

            }

        }.padding()

        

    }

}

 

struct HomeView : View{

    @State var name = UserDefaults.standard.string(forKey: "Name")

    @State var surName = UserDefaults.standard.string(forKey: "Surname")

    var body: some View{

        VStack{

            Text(name ?? "")

            Text(surName ?? "")

        }

    }

}

 
 
