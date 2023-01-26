//
//  Results.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//
import SwiftUI

struct Results: View {
    var color = ColorModel()
    var font = fontModel()
    @State var RESULTPOINT : Int
    var body: some View {
        if RESULTPOINT <= 110 && RESULTPOINT >= 80{
            VStack{
                let perfectRandom = perfects.randomElement()
                
                Image(perfectRandom?.imageName2 ?? "perfect")
                    .resizable()
                    .frame(width: 220, height: 220, alignment: .center)
                    . padding(.top,UIScreen.main.bounds.height * 0.6)
                    .offset( y: -UIScreen.main.bounds.height * 0.01)
                VStack{
                    Text(perfectRandom?.title ?? "")
                        .bold()
                        .foregroundColor(.white)
                        .font(.custom(font.font, size: 30, relativeTo: .title))
                        .frame(width: 330, height: 60,
                               alignment: .center)
                        .padding(.bottom,60)
                        .offset( y: -UIScreen.main.bounds.height * 0.01)
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(color.white)
                            .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.52, alignment: .center)
                        
                        Text(perfectRandom!.text)
                            .font(.custom(font.font, size: 18, relativeTo: .body))
                            .foregroundColor(.black)
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height   , alignment: .center)
                            .padding()
                    }
                    .offset( y: -UIScreen.main.bounds.height * 0.32)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Gradient(colors: [color.b4,color.b3]))
          //  .background(Gradient(colors: [color.matchTest,color.matchTest2,color.matchTest3]))
            .ignoresSafeArea( edges: .all)
        }
        if RESULTPOINT >= 60 && RESULTPOINT <= 79{
            VStack{
                let goodRandom = goods.randomElement()
                Image(goodRandom?.imageName2 ?? "good")
                    .resizable()
                    .frame(width: 220, height: 220, alignment: .center)
                    . padding(.top,UIScreen.main.bounds.height * 0.6)
                    .offset( y: -UIScreen.main.bounds.height * 0.01)
                VStack{
                    Text(goodRandom?.title ?? "")
                        .bold()
                        .foregroundColor(.white)
                        .font(.custom(font.font, size: 30, relativeTo: .title))
                        .frame(width: 300, height: 60,
                               alignment: .center)
                        .padding(.bottom,60)
                        .offset( y: -UIScreen.main.bounds.height * 0.01)
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.52, alignment: .center)
                        Text(goodRandom!.text)
                            .font(.custom(font.font, size: 18, relativeTo: .body))
                            .foregroundColor(.black)
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height   , alignment: .center)
                            .padding()
                    }
                    .offset( y: -UIScreen.main.bounds.height * 0.32)                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Gradient(colors: [color.b4,color.b3]))

            //.background(Gradient(colors: [color.matchTest,color.matchTest2,color.matchTest3]))
            .ignoresSafeArea( edges: .all)
        }
        if RESULTPOINT >= 30 && RESULTPOINT <= 59{
            VStack{
                let mediumRandom = mediums.randomElement()
                Image(mediumRandom?.imageName2 ?? "medium")
                    .resizable()
                    .frame(width: 220, height: 220, alignment: .center)
                    . padding(.top,UIScreen.main.bounds.height * 0.6)
                    .offset( y: -UIScreen.main.bounds.height * 0.01)
                VStack{
                    Text(mediumRandom?.title ?? "")
                        .bold()
                        .foregroundColor(.white)
                        .font(.custom(font.font, size: 30, relativeTo: .title))
                        .frame(width: 300, height: 60,
                               alignment: .center)
                        .padding(.bottom,60)
                        .offset( y: -UIScreen.main.bounds.height * 0.01)
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(color.white)
                            .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.52, alignment: .center)
                        Text(mediumRandom!.text)
                            .font(.custom(font.font, size: 18, relativeTo: .body))
                            .foregroundColor(.black)
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height   , alignment: .center)
                            .padding()
                    }
                    .offset( y: -UIScreen.main.bounds.height * 0.32)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Gradient(colors: [color.b4,color.b3]))

            //.background(Gradient(colors: [color.matchTest,color.matchTest2,color.matchTest3]))
            .ignoresSafeArea( edges: .all)
        }
        if RESULTPOINT >= 0 && RESULTPOINT <= 29{
            VStack{
                let badRandom = bads.randomElement()
                Image(badRandom?.imageName2 ?? "bad")
                    .resizable()
                    .frame(width: 220, height: 220, alignment: .center)
                    . padding(.top,UIScreen.main.bounds.height * 0.6)
                    .offset( y: -UIScreen.main.bounds.height * 0.01)
                VStack{
                    Text(badRandom?.title ?? "")
                        .bold()
                        .foregroundColor(.white)
                        .font(.custom(font.font, size: 30, relativeTo: .title))
                        .frame(width: 300, height: 60,
                               alignment: .center)
                        .padding(.bottom,60)
                        .offset(y: -UIScreen.main.bounds.height * 0.01)
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(color.white)
                            .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.52, alignment: .center)
                        Text(badRandom!.text)
                            .font(.custom(font.font, size: 18, relativeTo: .body))
                            .foregroundColor(.black)
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height   , alignment: .center)
                            .padding()
                    }
                    .offset(y: -UIScreen.main.bounds.height * 0.32)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            .background(Gradient(colors: [color.b4,color.b3]))
           // .background(Gradient(colors: [color.matchTest,color.matchTest2,color.matchTest3]))            .ignoresSafeArea( edges: .all)
        }
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results(RESULTPOINT: 100)
    }
}
