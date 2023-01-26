//
//  MatchTest.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import SwiftUI
struct MatchTest: View {
    @StateObject var vm = ViewModel()
    var font = fontModel()
    var color = ColorModel()
    @State var result = false
    @State var resultPoint = 0
    @State var isAlert: Bool = false
    var body: some View {
        ScrollView{
            VStack{
                Image("love")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .ignoresSafeArea(edges: .leading)
                    .frame(width:UIScreen.main.bounds.width ,height:UIScreen.main.bounds.height * 0.44,alignment: .center)
                    .padding()
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .padding(.leading,60)//baş
                    Spacer()
                    Image("jigsaw")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                    Spacer()
                    Image("user")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .padding(.trailing,60)
                }.padding(.top,UIScreen.main.bounds.height * 0.1 )
                    .offset(y:-UIScreen.main.bounds.height * 0.17 )
            }.offset(y:-UIScreen.main.bounds.height * 0.05 )
            ZStack{
                Rectangle()
                    .fill(color.gray)
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                    .border(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                HStack{
                    TextField("Alex",text: $vm.manName).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                    Text("NAME")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(.black)
                    TextField("Alice", text: $vm.womanName).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                }
            } .offset(y:-UIScreen.main.bounds.height * 0.20 )
            ZStack{
                Rectangle()
                    .fill(color.gray)
                    .border(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                HStack{
                    TextField("28", text: $vm.manAge).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                    Text("AGE")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(.black)
                    TextField("30", text: $vm.womanAge).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                }
            } .offset(y:-UIScreen.main.bounds.height * 0.20 )
            ZStack{
                Rectangle()
                    .fill(color.gray)
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                    .border(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                VStack{
                    HStack{
                        Menu {
                            ForEach(vm.horoscopes, id: \.self) { horoscope in
                                Button(action: {
                                    vm.manHoroscope = horoscope
                                }, label: {
                                    Text(horoscope)
                                    
                                }) .padding()
                            }
                        } label: {
                            Text(vm.manHoroscope)
                                .frame(width: 90, height: 60, alignment:.center)
                                .foregroundColor(.gray)
                        }
                        Text("HOROSCOPE")
                            .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                            .foregroundColor(.black)
                        Menu {
                            ForEach(vm.horoscopes, id: \.self) { horoscope in
                                Button(action: {
                                    vm.womanHoroscope = horoscope
                                }, label: {
                                    Text(horoscope)
                                }).padding()
                            }
                        } label: {
                            Text(vm.womanHoroscope)
                                .frame(width: 90, height: 60, alignment:.center)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }  .offset(y:-UIScreen.main.bounds.height * 0.20 )
            
            ZStack{
                Rectangle()
                    .fill(color.gray)
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                    .border(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                HStack{
                    TextField("190", text: $vm.manHeight).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                    Text("HEIGHT")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(.black)
                    TextField("170", text: $vm.womanHeight).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                }
            } .offset(y:-UIScreen.main.bounds.height * 0.20 )
            
            ZStack{
                Rectangle()
                    .fill(color.gray)
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                    .border(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                HStack{
                    TextField("80", text: $vm.manWeight).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                    Text("WEIGHT")
                        .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                        .foregroundColor(.black)
                    TextField("60", text: $vm.womanWeight).foregroundColor(.gray)
                        .padding().multilineTextAlignment(.center)
                    
                }} .offset(y:-UIScreen.main.bounds.height * 0.20 )

            ZStack{
                Rectangle()
                    .fill(color.gray)
                    .frame(width: UIScreen.main.bounds.width*0.97, height: UIScreen.main.bounds.height * 0.07)
                    .border(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                VStack{
                    HStack {
                        Menu {
                            ForEach(vm.levels, id: \.self) { level in
                                Button(action: {
                                    vm.manLevel = level
                                }, label: {
                                    Text(level).foregroundColor(.gray)
                                }) .padding()
                            }
                        } label: {
                            Text(vm.manLevel)
                                .frame(width: 90, height: 60, alignment:.center)
                                .foregroundColor(.gray)
                        }
                        Text("EDUCATION")
                            .font(.custom(font.font, size: CGFloat(font.fontsize), relativeTo: .title))
                            .foregroundColor(.black)
                        Menu {
                            ForEach(vm.levels, id: \.self) { level in
                                Button(action: {
                                    vm.womanLevel = level
                                }, label: {
                                    Text(level).foregroundColor(.gray)
                                }).padding()
                            }
                        } label: {
                            Text(vm.womanLevel)
                                .frame(width: 90, height: 60, alignment:.center)
                                .foregroundColor(.gray)
                        }
                    }
                    
                }} .offset(y:-UIScreen.main.bounds.height * 0.20 )
            HStack{
                Spacer()
                Button(action: {
                    calculate()
                }, label: {
                    Text("CALCULATE")
                        .foregroundColor(.black)
                        .padding()
                }
                ).alert(isPresented: $isAlert, content: {
                    Alert(title: Text("Please fill in the all blanks!"))
                }).sheet(isPresented: self.$result,content: {
                    Results(RESULTPOINT: resultPoint)
                })
                Spacer()
            }
            .background(Color(red: 205 / 255.0, green: 152 / 255.0, blue: 112 / 255.0))
            .clipShape(Capsule())
            .frame(width: UIScreen.main.bounds.width * 0.7,height: UIScreen.main.bounds.height*0.1 ,alignment: .center)
            .offset(y:-UIScreen.main.bounds.height * 0.21)
            Spacer()
            
            Text(String(resultPoint))
                .frame(width: 50, height: 50, alignment: .center)
                .padding(.bottom,UIScreen.main.bounds.height * 0.14)
                .offset(y:-UIScreen.main.bounds.height * 0.23 )
                .foregroundColor(.white)
        } .font(.custom(font.font, size: 20, relativeTo: .title))
            .navigationTitle("Match Test")
            .navigationBarTitleDisplayMode(.inline)
            .background(Gradient(colors: [color.b4,color.b3]))

    }
    
    // - MARK: Calculation Function
    fileprivate func calculate() {
        let nameResult = calculateNamePoint(name1: vm.manName, name2: vm.womanName)
        let ageResult = calculateAge(age1: vm.manAge, age2: vm.womanAge)
        let horoscopeResult = calculateHoroscope(horoscopeMale: vm.manHoroscope, horoscopeFemale: vm.womanHoroscope)
        let heightResult = calculateHeight(heightMale: vm.manHeight, heightFemale: vm.womanHeight)
        let weightResult = calculateWeight(weightMale: vm.manWeight, weightFemale: vm.womanWeight)
        var levelResult = 0
        if vm.manLevel == vm.womanLevel{
            levelResult = 20
        }
        else{
            levelResult = 10
        }
        
        if vm.manName.isEmpty || vm.womanName.isEmpty || vm.manAge.isEmpty || vm.womanAge.isEmpty || vm.manHoroscope.isEmpty || vm.womanHoroscope.isEmpty || vm.manWeight.isEmpty || vm.womanWeight.isEmpty || vm.manHeight.isEmpty || vm.womanHeight.isEmpty || vm.manLevel.isEmpty || vm.womanLevel.isEmpty {
            isAlert = true
        }
        if isAlert == true {
            result = false
        }
        else{
            resultPoint = nameResult + ageResult + horoscopeResult + heightResult + weightResult + levelResult
            result = true
        }
    }
}

struct MatchTest_Previews: PreviewProvider {
    static var previews: some View {
        MatchTest()
    }
}

