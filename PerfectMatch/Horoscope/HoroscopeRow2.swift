//
//  HoroscopeRow2.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 2.08.2022.
//

import SwiftUI
//
//  HoroscopeRow.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI

struct HoroscopeRow2: View {
    @State var horoscopes : ZodiacSign
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                    .fill(.green.opacity(0.5))
                .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.12,alignment: .center)
            HStack{
            Image(horoscopes.imageName)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.green, lineWidth: 4)
                }
                .shadow(radius: 7)
                .frame(width: 80, height: 80, alignment: .leading)
            
                .padding()
          
            VStack{
               
                HStack{
                    Text(horoscopes.zodiacName)
                        .font(.custom("Noteworthy", size: 28,relativeTo: .title))
                        .bold()
                    
                }
                Text(horoscopes.date)
                  
                    .font(.custom("Noteworthy", size: 20,relativeTo: .callout))
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.2, alignment: .leading)
            .padding(.trailing)
        
        }
        
    }
}

struct HoroscopeRow_Previews2: PreviewProvider {
    static var previews: some View {
        HoroscopeRow2(horoscopes : horoscope[0])
    }
}
