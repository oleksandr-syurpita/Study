//
//  ContentView.swift
//  Swift_Json_4
//
//  Created by admin on 21.05.2022.
//

import SwiftUI

struct Quter:Codable {
    var quote_id: Int
    var quote: String
    var author: String
    
}


struct ContentView: View {
    @State private var quter = [Quter]()
    var body: some View {
        NavigationView{
            VStack{
                HStack {

                    List(quter,id: \.quote_id) { quter in
                        Text("Author: " + quter.author)
                            .bold()
                            .foregroundColor(.red)
                        Text("Quter: " + quter.quote)
                        
                        
                    }
                }
            }.navigationTitle("Post")
                .task {
                    await fetch()
                }
        }
    }
    
    func fetch() async {
        guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print("Some url")
            return
        }
        
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            if let decodeRespon = try? JSONDecoder().decode([Quter].self, from: data) {
                quter = decodeRespon
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
