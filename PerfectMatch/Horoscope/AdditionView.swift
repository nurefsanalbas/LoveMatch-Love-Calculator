//
//  AdditionView.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//
import SwiftUI

struct AdditionView: View {
    @State var horoscopes : ZodiacSign
    var color = ColorModel()
    var font = fontModel()
    var body: some View {
        self.color.black
            .ignoresSafeArea(.all)
            .overlay(
        ScrollView{
            VStack{
            Image(horoscopes.imageName)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 200, height: 200, alignment: .center)
                VStack{
                    Text(horoscopes.zodiacName)
                        .bold()
                        .foregroundColor(color.white)
                        .font(.custom(font.font, size: 45, relativeTo: .title))
                        .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(color.white)
                            .frame(width: UIScreen.main.bounds.width*0.93,
                                   height: UIScreen.main.bounds.height * 0.34,alignment: .center)
                        
                        Text(horoscopes.text)
                            .font(.custom(font.font, size: 18, relativeTo: .callout))
                            .frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.height * 0.34,alignment: .center)
                            .foregroundColor(.black)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(color.white)
                            .frame(width: UIScreen.main.bounds.width*0.93, height: 300,alignment: .center)
                        Text(horoscopes.text2)
                            .font(.custom(font.font, size: 18, relativeTo: .callout))
                            .frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.height * 0.34,alignment: .center)
                            .foregroundColor(.black)
                    }
                }
 
            }
        })
    }
}
struct AdditionView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionView(horoscopes: horoscope[0])
    }
}
