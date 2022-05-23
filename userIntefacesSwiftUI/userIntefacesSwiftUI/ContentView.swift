//
//  ContentView.swift
//  userIntefacesSwiftUI
//
//  Created by admin on 06.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var password = ""
    @State private var textFilder = ""
    @State private var age = 18
    var color = ["pink","red","green","blu","black"]
    @State private var selectionColor = 0
//    @State  private var swiftColor: Color = .red
//    @State  private var swiftOpacity: Double = 0.7
    var body: some View {
        VStack{
            
            Picker(selection: $selectionColor, label: Text("Choose a color")){
                ForEach(0..<color.count){
                    index in Text(self.color[index])
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Yor color is \(color[selectionColor])")
            
            Stepper("Enter yor age",onIncrement: {
                self.age += 1
                print("Addig age")
            }, onDecrement: {
                self.age -= 1
                print("Decrement age")
            })
            Text("Your age is \(age)")
            
            TextField("enter your text",text: $textFilder)
            Text("Your text is \(textFilder)")
            SecureField("enter your password", text: $password)
            Text("Your passwordis \(password)")
            
            Button(action: {self.showDetails.toggle()})
            {
                Text("Show Detail")
                    
            }
            
            if showDetails{
                Text("Some detail here...")
                    .font(.largeTitle)
            }
            
            
          
            
            

//            SwiftyControl(swiftColor: $swiftColor, swiftOpacity: $swiftOpacity)
//           
//            Image(systemName: "swift")
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(.blue)
//                .opacity(swiftOpacity)
//                .padding(50)
//                .background(swiftColor)
//                .cornerRadius(50)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SwiftyControl: View {
    @Binding var swiftColor: Color
    @Binding var swiftOpacity: Double
    var body: some View {
        VStack {
            ColorPicker("Swift color",selection: $swiftColor)
            Slider(value: $swiftOpacity, in: 0 ... 1)
                .accentColor(swiftColor)
        }
    }
}
