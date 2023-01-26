//
//  NameAnalysis.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 1.08.2022.
//
import SwiftUI

struct NameAnalysis: View {
    @State var userName = ""
    @State var text = false
    @State var showText = false
    @State var wordtext = ""
    @State var isBlank = false
    @State var showResultBox = false
    var font = fontModel()
    var color = ColorModel()
    var body: some View {
        self.color.black
            .ignoresSafeArea(.all)
            .overlay(
                ScrollView{
                    VStack(spacing:10){
                        VStack{
                            Image("daisy")
                                .resizable().frame(width: UIScreen.main.bounds.width * 0.93, height: UIScreen.main.bounds.height * 0.3, alignment:.center)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 11)
                                .padding(.top,UIScreen.main.bounds.height*0.05)
                            
                            Text("Enter your name:").foregroundColor(.white)
                            // .padding(UIScreen.main.bounds.height*0.1)
                                .font(.custom(font.font, size: 20, relativeTo: .title))
                            HStack{
                                TextField("Name",text: $userName)
                                    .border(.white)
                                    .frame(width: 200, alignment: .center)
                                    .foregroundColor(.white)
                                    .font(.custom(font.font, size: 20, relativeTo: .title))
                                    .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.white,lineWidth: 1))
                            }.padding(.bottom,UIScreen.main.bounds.height*0.2)
                            
                            
                        }.padding(.top, UIScreen.main.bounds.height*0.37)
                            .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.2, alignment: .center)
                        Button(action: {
                            if userName.isEmpty{
                                isBlank = true
                            }
                            showResultBox = true
                            wordtext = makeAnalysis(name: userName)
                            if text == true {
                                showText = true
                                
                            }
                        },
                        label:{
                            Text("SHOW RESULT")
                                .font(.custom(self.font.font, size: 17))
                                .padding()
                            
                        }).alert(isPresented: $isBlank, content: {
                            Alert(title: Text("Please enter a name!"))
                        } )
                        .foregroundColor(.white)
                        .background(Color(red: 205 / 255.0, green: 152 / 255.0, blue: 112 / 255.0))
                        .clipShape(Capsule())
                        
                        .padding(.top,UIScreen.main.bounds.height*0.20)
                        ZStack {
                            if (showResultBox == true){
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white.opacity(0.8))
                                    .frame(width:  UIScreen.main.bounds.width * 0.93, height:  UIScreen.main.bounds.height * 0.44,alignment: .center)
                                Text(wordtext)
                                    .font(.custom(self.font.font, size: 20))
                                    .foregroundColor(color.black)
                                    .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.44, alignment: .center)
                            }
                        }
                    }
                })
    }
    func makeAnalysis(name:String)-> String{
        var text2 :String = ""
        for element in alphabetArray{
            if name.isEmpty{
                isBlank = true
            }
            else{
                if name.first! == element.wordBig || name.first! == element.wordSmall {
                    text = true
                    text2 = element.textName
                }
                
            }
        }
        return text2
    }
}

struct NameAnalysis_Previews: PreviewProvider {
    static var previews: some View {
        NameAnalysis()
    }
}
