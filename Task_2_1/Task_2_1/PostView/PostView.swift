//
//  PostView.swift
//  Task_2_1
//
//  Created by admin on 23.05.2022.
//

import Foundation
import SwiftUI


struct PostView: View {
    var body: some View {
        VStack {
            content
            like
            icon
            comment
            content2
            like2
            icon2
            comment2
        }
    }
    
    
    var content:some View {
        VStack{

            Divider()
                .frame( height: 1)
                .padding(.horizontal,30)
            
            Image("FirstGirl")
                .resizable()
                .frame(width: 398, height: 557.14)
        }
    }
    
    var like:some View {
        VStack{
            HStack {
                Text("Liked: 18,232")
                    .font(.system(size: 14, weight: .bold))
                Spacer()

            }
            
            HStack {
                Text("Shared: 18,232")
                    .font(.system(size: 14, weight: .bold))
                    Spacer()
            }
        }
        .padding([.leading],20)

    }
    
    var icon:some View {
        HStack(spacing:20){
            Button(action: {}) {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Button(action: {}) {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)

            }
            Spacer()

            Button(action: {}) {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)
                
            }

        }
        .padding([.leading,.trailing],20)

    }
    
    var comment:some View {
        HStack{
            Text("demo_art_account: Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi  ")
                .font(.system(size: 14, weight: .bold))
            Spacer()

        }
        .padding([.leading],20)
    }
    
    
    var content2:some View {
        VStack{

            Divider()
                .frame( height: 1)
                .padding(.horizontal,30)
            
            Image("FirstGirl")
                .resizable()
                .frame(width: 398, height: 557.14)
        }
    }
    
    var like2:some View {
        VStack{
            HStack {
                Text("Liked: 18,232")
                    .font(.system(size: 14, weight: .bold))
                Spacer()

            }
            
            HStack {
                Text("Shared: 18,232")
                    .font(.system(size: 14, weight: .bold))
                    Spacer()
            }
        }
        .padding([.leading],20)

    }
    
    var icon2:some View {
        HStack(spacing:20){
            Button(action: {}) {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Button(action: {}) {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)

            }
            Spacer()

            Button(action: {}) {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)
                
            }

        }
        .padding([.leading,.trailing],20)

    }
    
    var comment2:some View {
        VStack {
            VStack{
                Text("demo_art_account: Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi  ")
                    .font(.system(size: 14, weight: .bold))
                Spacer()
                Divider()
                    .frame(height: 1)
                    .padding(.horizontal, 30)
                    .background(Color.blackColor)
            }
            .padding([.leading],20)
        }
    }
    
}
var post: some View {
    PostView()
}
