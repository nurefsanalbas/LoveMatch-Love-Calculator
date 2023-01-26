//
//  CircleImage.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI

struct CircleImage: View {
    var circleimage : Image
    var body: some View {
        circleimage
            .resizable()
            .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth:8))
            .shadow(radius: 12)
    }
}
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(circleimage: Image("perfect"))
    }
}
