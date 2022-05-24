//
//  ContentView.swift
//  UserDefault_2
//
//  Created by admin on 24.05.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var setting = UserDefauldSettings()
    var body: some View {
        VStack(alignment: .center){
            Text("ok")
            Toggle(isOn: self.$setting.isOn) {
                Text("")
            }
            .fixedSize()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(setting.isOn ? Color.red : Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
