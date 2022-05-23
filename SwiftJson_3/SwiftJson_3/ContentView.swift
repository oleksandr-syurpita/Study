//
//  ContentView.swift
//  SwiftJson_3
//
//  Created by admin on 19.05.2022.
//

import SwiftUI

struct Quote: Codable{
    var quote_id :Int
    var quote:String
    var author: String
    var series: String
    
}

struct ContentView: View {
    @State private var quotes = [Quote]()
    
    var body: some View {
        NavigationView {
            List(quotes, id: \.quote_id) {quote in
                VStack(alignment: .center ){
                Text(quote.author)
                    .bold()
                    .foregroundColor(.red)
                
                    Text(quote.series)
                        .foregroundColor(.blue)
                
                    Text(quote.quote)
                        .foregroundColor(Color.yellow)
                }.padding(10)
                }
            .navigationTitle("post")
                .task {
                    await fetch()
                    
                }
        }
    }
    
    func fetch() async {
         guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print(" this URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodeRespone = try? JSONDecoder().decode([Quote].self, from: data) {
                quotes = decodeRespone
            }
        }
        catch {
            print("bad")
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
