//
//  HoroscopeNew.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 4.08.2022.
//

import SwiftUI

struct HoroscopeNew: View {
    var color = ColorModel()
    var body: some View {
        HStack{
                Button(action: {}, label: {
                   
                    VStack{
                        Image("ariesNew")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .shadow(radius: 7)
                            .frame(width: 80, height: 80, alignment: .leading)
                            .padding()
                        
                        Text(horoscope[0].zodiacName)
                            .foregroundColor(.black)
                            .font(.custom("Chalkboard SE", size: 20, relativeTo: .title))
                        Text(horoscope[0].date)
                            .foregroundColor(.black)
                            .font(.custom("Chalkboard SE", size: 20, relativeTo: .caption))
                    }
                })
                .padding()
            Button(action: {}, label: {
               
                VStack{
                    Image("taurusNew")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .shadow(radius: 7)
                        .frame(width: 80, height: 80, alignment: .leading)
                        .padding()
                    
                    Text(horoscope[1].zodiacName)
                        .foregroundColor(.black)
                        .font(.custom("Chalkboard SE", size: 20, relativeTo: .title))
                    Text(horoscope[1].date)
                        .foregroundColor(.black)
                        .font(.custom("Chalkboard SE", size: 20, relativeTo: .caption))
                }
            })
             
            
        }//HStack
        
                
           }
        }


struct HoroscopeNew_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeNew()
    }
}
