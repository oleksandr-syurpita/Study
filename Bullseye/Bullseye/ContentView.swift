//
//  ContentView.swift
//  Bullseye
//
//  Created by admin on 03.05.2022.
//

import SwiftUI
struct ContentView: View {

@State private var alerIsVisible: Bool = false

    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO  ")
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                    Text("89")
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    

                }
                .padding()
                HStack {
                    Text("1")
                    Slider(value: .constant(10),in : 1.0...100.0)
                    Text("100")
                        .bold()
                }
            }
            Button(action:{
                print("Hello Swift")
                self.alerIsVisible = true
            })
            {
                Text("HIT me")
            }
            .alert(isPresented: $alerIsVisible, content: {
                return Alert(title: Text("hello there"), message: Text("This is my first pop-up"), dismissButton: .default(Text("Awosome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        ContentView()
            .previewLayout(.fixed(width: 560, height: 320))
    }
}
