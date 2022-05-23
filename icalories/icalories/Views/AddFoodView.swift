//
//  AddFoodView.swift
//  icalories
//
//  Created by admin on 21.05.2022.
//

import SwiftUI

struct AddFoodView: View {
    @Environment (\.managedObjectContext) var managedObjeContext
    @Environment (\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories: Double =  0
    
    var body: some View {
        Form {
            Section {
                TextField("Food name",text: $name)
                VStack {
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000,step: 10)
                }
                .padding()
                HStack {
                    Spacer()
                    Button("Submit") {
                        DataController().addFood(name: name, calories: calories, context: managedObjeContext)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
