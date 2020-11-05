//
//  AddGameScreen.swift
//  fundamental-sub-one
//
//  Created by Abdul Chathil on 7/13/20.
//  Copyright © 2020 Abdul Chathil. All rights reserved.
//

import SwiftUI
import CoreData

struct AddGameScreen: View {
    @Binding var showingForm: Bool
    @State var title: String = ""
    @State var desc: String = ""
    @State var image: String = ""
    @State var releaseDate: String = ""
    @State var rating: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("Title...", text: $title)
                    .font(.largeTitle)
                    .padding(EdgeInsets(top: 32, leading: 16, bottom: 16, trailing: 16))
                Image("typing")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 186, height: 186)
            }
            Group {
                TextField("Description...", text: $desc)
                    .font(.body)
                    .padding(24)
                    .clipShape(Rectangle())
                    .frame(height: 56)
                    .background(Color("primary-black"))
                    .cornerRadius(16)
                    .padding([.leading, .trailing])
                TextField("Image Url...", text: $image)
                    .font(.body)
                    .padding(24)
                    .clipShape(Rectangle())
                    .frame(height: 56)
                    .background(Color("primary-black"))
                    .cornerRadius(16)
                    .padding([.leading, .trailing])
                TextField("Release Date", text: $releaseDate)
                    .font(.body)
                    .padding(24)
                    .clipShape(Rectangle())
                    .frame(height: 56)
                    .background(Color("primary-black"))
                    .cornerRadius(16)
                    .padding([.leading, .trailing])
                TextField("Rating e.g 4.6/ 5.0", text: $rating)
                    .font(.body).padding(24)
                    .clipShape(Rectangle())
                    .frame(height: 56)
                    .background(Color("primary-black"))
                    .cornerRadius(16)
                    .padding([.leading, .trailing])
            }
            Spacer()
            GeometryReader { geo in
                Text("Save")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(24)
                    .frame(width: geo.size.width)
                    .onTapGesture {
                        print("save")
                    }.disabled(self.title.isEmpty)
            }.background(Color(self.title.isEmpty ? "primary-black" : "primary" ))
            .cornerRadius(16)
            .frame(height: 56)
            .padding()
            GeometryReader { geo in
                Text("Cancle")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(24)
                    .frame(width: geo.size.width)
                    .onTapGesture {
                        self.showingForm = false
                    }
            }.background(Color("primary"))
            .cornerRadius(16)
            .frame(height: 56)
            .padding([.leading, .trailing])
            
        }
    }
}

struct AddGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddGameScreen(showingForm: .constant(true))
    }
}