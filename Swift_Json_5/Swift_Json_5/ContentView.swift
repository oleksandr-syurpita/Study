//
//  ContentView.swift
//  Swift_Json_5
//
//  Created by admin on 21.05.2022.
//

import SwiftUI

struct ApiLil: Codable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

struct ContentView: View {
    @State private var apiLil = [ApiLil]()
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    List(apiLil,id:\.postId) { apiLil in
                        Text(apiLil.name)
                            .bold()
                            .foregroundColor(.cyan)
                        Text(apiLil.email)
                            .foregroundColor(.red)
                        
                        Text("Body: " + apiLil.body)
                            .foregroundColor(.blue)
                        Text("Id: " + String(apiLil.id))
                        
                    }
                    
                }
            }.navigationTitle("Post")
                .task {
                    await fetch()
                }
        }
    }
    
    func fetch() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else {
            print("Your url")
            return
        }
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            
            if let decodeRespone = try? JSONDecoder().decode([ApiLil].self, from: data) {
                apiLil = decodeRespone
                
            }
        }
        catch {
            print("Bad news for you")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
