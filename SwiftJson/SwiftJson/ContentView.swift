//
//  ContentView.swift
//  SwiftJson
//
//  Created by admin on 18.05.2022.
//

import SwiftUI

struct Quote:Codable {
    var quote_id: Int
    var quote: String
    var author: String
    var series: String
}
struct ContentView: View {
@State private var quotes = [Quote]()
    var body: some View {
        NavigationView{
            List(quotes,id: \.quote_id) { quote in
                VStack(alignment:.leading){
                    Text(quote.author)
                        .fontWeight(.bold)
                    Text(quote.quote)
                }
            }
            .navigationTitle("Post")
            .task {
                await fetchData()a
            }
        }
    }
    func fetchData()  async {
        guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print("some url")
            return
        }
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodeResponse = try? JSONDecoder().decode( [Quote].self, from: data) {
                quotes = decodeResponse
            }
        }catch {
            print("Bad news for you")
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
