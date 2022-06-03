//
//  ContentView.swift
//  Alarm
//
//  Created by admin on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var hours = Calendar.current.component(.hour, from: Date())
       @State private var minutes = Calendar.current.component(.minute, from: Date())
    @State private var day = Calendar.current.component(.quarter, from: Date())

       var body: some View {
           TimeEditPicker(selectedHour: $hours, selectedMinute: $minutes,seletedquarter: $day)
       }
   }

   struct TimeEditPicker: View {
       @Binding var selectedHour: Int
       @Binding var selectedMinute: Int
       @Binding var seletedquarter: Int

       var body: some View {
           GeometryReader { geometry in
               HStack(spacing: 0) {
                   Spacer()
                   Picker("", selection: self.$selectedHour) {
                       ForEach(0..<24) {
                           Text(String($0)).tag($0)
                       }
                   }
                   .labelsHidden()
                   .fixedSize(horizontal: true, vertical: true)
                   .frame(width: geometry.size.width / 5, height: 160)
                   .clipped()
                   Text(":")
                   Picker("", selection: self.$selectedMinute) {
                       ForEach(0..<60) {
                           Text(String($0)).tag($0)
                       }
                   }
                   .labelsHidden()
                   .fixedSize(horizontal: true, vertical: true)
                   .frame(width: geometry.size.width / 5, height: 160)
                   .clipped()
                   
                   Picker("", selection: self.$seletedquarter) {
                       ForEach(0..<60) {
                           Text(String($0)).tag($0)
                       }
                   }
                   .labelsHidden()
                   .fixedSize(horizontal: true, vertical: true)
                   .frame(width: geometry.size.width / 5, height: 160)
                   .clipped()

                   Spacer()
               }.background(Color.red)
               
           }
           .frame(height: 160)
           .mask(Rectangle())
       }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
