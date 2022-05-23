//
//  ContentView.swift
//  Form
//
//  Created by admin on 09.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var color = ["pick","blu","black","red"]
    @State private var selsctorColor = 0
    @State private var additionalSettings = false
    var body: some View {
        NavigationView{
            Form{
                Picker(selection: $selsctorColor,label: Text("Select Color")){
                    ForEach(0..<color.count){
                        Text(self.color[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Toggle(isOn: $additionalSettings){
                    Text("AdditionalSettings")
                }
                Button(action:{
                    print("Hello")
                }){
                    Text("Save changes")
                }.disabled(!additionalSettings)
                .navigationBarTitle("Setings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
