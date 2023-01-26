//
//  MottoScreen.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 30.09.2022.
//
import SwiftUI

var backİmage = images.randomElement()
var newimg = backİmage
struct MottoScreen: View {
    var motto = MottoFunction()
    var color = ColorModel()
    @State var dailyMotto:String=""
    var mottoView = MottoView()
    var body: some View {
        ZStack{
            BackGround(backgroundimage: Image( backİmage ?? "1"))
            mottoView
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.6, alignment: .center)
                .background(.black)
                .opacity(0.6)
        }
    }
    struct MottoView:View{
        let dailyMotto = MottoFunction().Motto()
        var body: some View {
            VStack{
                Text(dailyMotto)
                    .italic()
                    .bold()
                    .foregroundColor(.white)
                    .font(.custom("Noteworthy", size: 50, relativeTo: .title))
                    .padding()
                    .minimumScaleFactor(0.5)
                    .frame(width: UIScreen.main.bounds.width,
                           height: UIScreen.main.bounds.width)
                    .shadow(color: .white.opacity(0.1), radius: 3)
            }
            .padding(30)
        }
    }
}
struct MottoScreen_Previews: PreviewProvider {
    static var previews: some View {
        MottoScreen()
    }
}
