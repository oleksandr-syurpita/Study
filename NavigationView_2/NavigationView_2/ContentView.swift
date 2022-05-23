//
//  ContentView.swift
//  NavigationView_2
//
//  Created by admin on 09.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State  private var users = ["Sasha","Roma","Lexa","Vadick","Olena","Andria","Oleg"]
    var body: some View {
        NavigationView{
            List{
                ForEach(users,id: \.self){
                    users in Text(users)
                }.onMove(perform: move)
                .onDelete(perform: delete)
            }
            .navigationBarItems(leading: EditButton())
        }
    }
    func move(from source: IndexSet, to destination:Int){
        users.move(fromOffsets: source, toOffset: destination)
    }
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
