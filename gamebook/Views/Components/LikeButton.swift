//
//  LikeButton.swift
//  fundamental-sub-one
//
//  Created by Abdul Chathil on 7/10/20.
//  Copyright © 2020 Abdul Chathil. All rights reserved.
//

import SwiftUI
import CoreData

struct LikeButton: View {
    @State var isLiked: Bool
    var body: some View {
        Image(systemName: isLiked ? "heart.fill" : "heart")
            .resizable()
            .scaledToFill()
            .frame(width: 18, height: 18, alignment: .center)
            .foregroundColor(Color("primary"))
    }
}
//
//struct LikeButton_Previews: PreviewProvider {
//    static var previews: some View {
//        LikeButton(game: Game.fakeGame, likedGame: nil, context: CoreDataStack(containerName: "LikedGame").viewContext)
//    }
//}
