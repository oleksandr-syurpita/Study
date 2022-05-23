//
//  StoryBord.swift
//  Task_2_1
//
//  Created by admin on 23.05.2022.
//

import Foundation
import SwiftUI

var story:some View {
    ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing:20) {
            ForEach(storyCollection) {storyCollections in
                StoryView(storyCollection: storyCollections)
            }
            .frame(width: 50, height: 50)
        }
        .padding([.leading],13)
    }
}

struct StoryView: View {
    let storyCollection: StoryCollection
    var body: some View {
        ZStack {
            storyCollection.image
                .resizable()
                .clipped()
                .scaleEffect()
                .cornerRadius(100)
        }
        .frame(width: 50, height: 50)
    }
}



struct StoryCollection: Identifiable {
    var id: String {
        title
    }
    var title: String
    var image:Image
    
}

let storyCollection:[StoryCollection] = [
    .init(title: "1", image: Image("ManBlackGlass")),
    .init(title: "2", image: Image("ManBlackGlass")),
    .init(title: "3", image: Image("ManBlackGlass")),
    .init(title: "4", image: Image("ManBlackGlass")),
    .init(title: "5", image: Image("ManBlackGlass")),
    .init(title: "6", image: Image("ManBlackGlass"))
    
]


