//
//  ContentView.swift
//  SwiftJsone_2
//
//  Created by admin on 18.05.2022.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.courses, id: \.self) {course in
                    HStack{
                        Image("")
                            .frame(width: 150, height: 100)
                        Text(course.name)
                            .bold()
                        
                    }
                }
                
            }.navigationTitle("Json ")
                .onAppear{
                    viewModel.fetch()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
