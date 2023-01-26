//
//  BackGround.swift
//  DailyMotto
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI

let images = ["1","2","3","4","5","6","7"]
struct BackGround: View {
    @State var backgroundimage :Image
    var body: some View {
        backgroundimage
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea(edges: .all)
    }
}
struct BackGround_Previews: PreviewProvider {
    static var previews: some View {
        BackGround(backgroundimage: Image(images[9]))
    }
}

