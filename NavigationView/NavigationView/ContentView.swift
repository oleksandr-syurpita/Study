//
//  ContentView.swift
//  NavigationView
//
//  Created by admin on 09.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Text("SwiftUI")
                .navigationBarTitle("Welcom", displayMode: .inline)
                .navigationBarItems(trailing:
                    HStack{
                    Button("Help"){
                    print("Help tapper")
                    }
                    Button("About"){
                        print("About tapper")
                }
                }
                                    )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
