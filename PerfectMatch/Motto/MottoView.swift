//
//  MottoView.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 30.09.2022.
//

import SwiftUI

struct MottoView: View {
    @State var flag1 = false
    @State var flag2 = false
    @State var flag3 = false
    @State var flag4 = false
    @State var flag5 = false
    @State var flag6 = false
    @State var isLogin = false
    var color = ColorModel()
    var body: some View {
        let font = fontModel()
        let color = ColorModel()
        self.color.black
            .ignoresSafeArea(.all)
            .overlay(
                VStack{
                    Image("heaven")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea(edges: .leading)
                        .frame(width:UIScreen.main.bounds.width ,height:UIScreen.main.bounds.height * 0.44,alignment: .center)
                    ZStack{
                        Text("How are you today?")
                            .font(.custom( "Georgia", size: 26, relativeTo: .title))
                            .bold()
                            .foregroundColor(.white)
                    }
                    VStack{
                        HStack{
                            Button(action: {
                                flag1 = true
                            }, label: {
                                ZStack{
                                    
                                    Image("happy")
                                        .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .shadow(radius: 11)
                                }.padding(.trailing,15)
                                
                            }).sheet(isPresented: $flag1,content:{
                                MottoScreen()
                            })
                            Button(action: {
                                
                                flag2 = true
                            }, label: {
                                ZStack{
                                    Image("sad")
                                        .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .shadow(radius: 11)
                                }
                            }).sheet(isPresented: $flag2,content:{
                                MottoScreen()
                            })}
                        HStack{
                            Button(action: {
                                flag3 = true
                            }, label: {
                                ZStack{
                                    Image("shock")
                                        .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .shadow(radius: 11)
                                }
                                .padding(.trailing,15)
                            }).sheet(isPresented: $flag3,content:{
                                MottoScreen()})
                            Button(action: {
                                flag4 = true
                            }, label: {
                                ZStack{
                                    Image("devestated")
                                        .resizable().frame(width: UIScreen.main.bounds.width * 0.39, height: UIScreen.main.bounds.height * 0.13, alignment:.center)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .shadow(radius: 11)
                                }}).sheet(isPresented: $flag4,content:{
                                    MottoScreen()})
                        }
                    }
                })
    }
}
struct MottoView_Previews: PreviewProvider {
    static var previews: some View {
        MottoView()
    }
}
