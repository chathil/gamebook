//
//  ProgressBar.swift
//  fundamental-sub-one
//
//  Created by Abdul Chathil on 7/2/20.
//  Copyright © 2020 Abdul Chathil. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    let progress: Double
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color("primary"))
                Rectangle()
                    .frame(width: min(CGFloat(self.progress)*geometry.size.width, geometry.size.width),
                           height: geometry.size.height)
                    .foregroundColor(Color("primary"))
                    .animation(.linear)
            }.frame(height: 8).cornerRadius(45.0)
        }
    }}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 0.7)
    }
}
