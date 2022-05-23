//
//  ContentView.swift
//  swiftFundamentals
//
//  Created by admin on 06.05.2022.
//

import SwiftUI
//struct MusicRow: View{
//    var name: String
//
//    var body: some View{
//        Text("Music:\(name)")
//    }
//}
struct Restaurant: Identifiable{
    var id = UUID()
    var name: String
}
struct RestaurantRow:View{
    var restarunt: Restaurant
    var body: some View{
        Text("Come and eat at \(restarunt.name)")
    }
}
struct ContentView: View {
    var body: some View {
        
        
        let first = Restaurant(name: "FirstRestaurant")
        let second = Restaurant(name: "SecondRestaurant")
        let third = Restaurant(name: "ThirdRestaurant")
        let restaurants = [first,second,third]
        return List(restaurants){
            restaurants in RestaurantRow(restarunt: restaurants)
        }
//        List{
//            MusicRow(name: "Rock")
//            MusicRow(name: "Pop")
//            MusicRow(name: "Classic")
//            MusicRow(name: "Rap")
//            MusicRow(name: "KePop")
//            MusicRow(name: "Vocal")
//
//
//        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
