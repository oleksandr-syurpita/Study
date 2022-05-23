//
//  ContentView.swift
//  Modifiers
//
//  Created by admin on 09.05.2022.
//

import SwiftUI
struct customModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .background(Color.red)
    }
}
extension View {
    func customM() -> some View{
        self.modifier(customModifier())
    }
}
struct ContentView: View {
//    @State private var useGreenText = false
//    struct CustomText: View{
//        var name: String
//        var body: some View{
//            Text(name)
//                .font(.largeTitle)
//                .padding()
//                .foregroundColor(.red)
//                .background(Color.green)
//        }
//    }

    var body: some View {
        Text("Hello")
            .customM()
//        Button("Hello"){
//            self.useGreenText.toggle()
//        }.foregroundColor(useGreenText ? .green: .blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
