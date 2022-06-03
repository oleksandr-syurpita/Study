//
//  ContentView.swift
//  Picker_Time
//
//  Created by admin on 28.05.2022.
//
import SwiftUI


struct ContentView: View {
    @State private var currentDate = Date()
    @State private var actionS = false
    @State private  var Ison = false
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
                .ignoresSafeArea()
            VStack {
            HStack{
               alarm
                Toggle(isOn: $Ison) {
                    
                }
            }
            .padding([.leading, .trailing], 30)
                Spacer()
            }
            .navigationTitle("Setting")

        }
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    var text: some View{
        VStack {
            Text("ok")
            Text("ok")
            Text("ok")
            Text("ok")
            
        }
    }
    
    var alarm:some View {
        VStack(spacing: 20) {
            Button(action: {
                self.actionS.toggle()
            }) {
                Text("12:00")
                    .foregroundColor(.white)
            }
            if actionS {
                DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                    .foregroundColor(.blue)
                    .datePickerStyle(WheelDatePickerStyle())
                    .labelsHidden()
                    .background(Color.white.opacity(1)
                        .cornerRadius(25))
                    .padding([.leading,.trailing],20)
//                            .offset(x:30, y: 100)
                
                Button(action: {}) {
                    Text("OK")
                        .frame(width: 150,  height: 30)
                        .background(Color.green)
                        .cornerRadius(.infinity)
                        .foregroundColor(.white)
                    
                }
                Button(action: {
                    self.actionS = false
                }) {
                    Text("Cancel")
                        .frame(width: 150,  height: 30)
                        .background(Color.black)
                        .cornerRadius(.infinity)
                        .foregroundColor(.white)
                }
            }
        }
    }
    
    
}
