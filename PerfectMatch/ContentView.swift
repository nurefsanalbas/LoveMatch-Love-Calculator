//
//  ContentView.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var temp1 = false
    @State var temp2 = false
    @State var temp3 = false
    @State var temp4 = false
    
    var color = ColorModel()
    var body: some View {
        NavigationView{
            
            self.color.black
            .ignoresSafeArea(.all)
                   .overlay(
            VStack{
                ZStack{
                    Image("heart (4)")
                        .resizable().frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height * 0.33 , alignment:.center)
                        .shadow(radius: 11)
                        .offset(y:-50)
                    Text("LoveMatch")
                        .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .font(.custom("Didot", size: 28, relativeTo: .title))
                            .offset(y:-230)
                           .padding()

                }
                .padding()
                
                HStack(spacing:10){
                    Button(action: {
                        temp1 = true
                    }, label: {
                        ZStack{
                            ZStack{
                                Image("woman")
                                    .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 11)
                                Text("Today's Motto")
                                    .fontWeight(.black)
                                    .font(.custom("Georgia", size: 14, relativeTo: .title))
                                    .foregroundColor(.white)
                                    .offset(y:30)
                                    .padding()
                                    .frame(width:UIScreen.main.bounds.width * 0.39,height: UIScreen.main.bounds.height * 0.02,alignment: .leading)
                            }.padding(.trailing,15)
                        }}).sheet(isPresented: $temp1,content:{
                            MottoView()
                        })
                    Button(action: {
                        temp2 = true
                    }, label: {
                        ZStack{
                            Image("love")
                                .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 11)
                            Text("Calculate Love")
                                .fontWeight(.black)
                                .font(.custom("Georgia", size: 14, relativeTo: .title))
                                .foregroundColor(.white)
                                .offset(y:30)
                                .padding()
                                .frame(width:UIScreen.main.bounds.width * 0.39,height: UIScreen.main.bounds.height * 0.02,alignment: .leading)
                        }
 
                        }).sheet(isPresented: $temp2,content:{
                            MatchTest()
                        })
                }
                HStack{
                    Button(action: {
                        temp3 = true
                    }, label: {
                        
                            ZStack{
                                Image("horoscope")
                                    .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(radius: 11)
                                Text("Horoscope")
                                    .fontWeight(.black)
                                    .font(.custom("Georgia", size: 14, relativeTo: .title))
                                    .foregroundColor(.white)
                                    .offset(y:30)
                                    .padding()
                                    .frame(width:UIScreen.main.bounds.width * 0.39,height: UIScreen.main.bounds.height * 0.02,alignment: .leading)
                                    
                                
                                    
                            }.padding(.trailing,15)
                        
                    }).sheet(isPresented: $temp3,content:{
                            Horoscope()
                        })
                    Button(action: {
                        temp4 = true
                    }, label: {
                        
                        ZStack{
                            Image("daisy")
                                .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 11)
                            Text("Name Analysis")
                                .font(.custom("Georgia", size: 14, relativeTo: .title))
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .offset(y:30)
                                .padding()
                                .frame(width:UIScreen.main.bounds.width * 0.39,height: UIScreen.main.bounds.height * 0.02,alignment: .leading)
                            
                        }}).sheet(isPresented: $temp4,content:{
                            NameAnalysis()
                        })
                }.padding(.bottom,10)
                
            })}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
