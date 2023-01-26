//
//  HoroscopeRow.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//
import SwiftUI

struct HoroscopeRow: View {
    @State var horoscopes : ZodiacSign
    var font = fontModel()
    var color = ColorModel()
    var body: some View {
        HStack{
            Image(horoscopes.imageName)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .shadow(radius: 7)
                .frame(width: 50, height: 50, alignment: .leading)
                .padding()
            VStack{
                Text(horoscopes.zodiacName)
                    .bold()
                    .font(.custom(font.font, size: 18,relativeTo: .title))
                    .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height*0.01,alignment: .leading)
                
                Text(horoscopes.date)
                    .font(.custom(font.font, size: 14,relativeTo: .callout))
                    .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height*0.01,alignment: .leading)
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.06, alignment: .leading)
            .padding(.trailing)
    }
}

struct HoroscopeRow_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeRow(horoscopes : horoscope[0])
    }
}
