//
//  Calculate.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 28.07.2022.
//

import Foundation
import SwiftUI

//FOR NAME ALGORITHM

func calculateNamePoint(name1:String,name2:String)->Int{//20
    var result = 0
    let isim1Chars = Array(name1)
    let isim2Chars = Array(name2)
    if(name1.isEmpty || name2.isEmpty){
        MatchTest().isAlert = true
    }
    else{
        if isim1Chars[0] == isim2Chars[0]{
            result = 20
        }
        else if sameLetterCount(isim1: name1, isim2: name2) == 1{
            result = 5
        }
        else if sameLetterCount(isim1: name1, isim2: name2) == 2 || sameLetterCount(isim1: name1, isim2: name2) == 3{
            result = 10
        }
        else if sameLetterCount(isim1: name1, isim2: name2) >= 4 {
            result = 15
        }
        else{
            result = 0
        }
    }
    return result
    
}
func sameLetterCount(isim1:String,isim2:String) -> Int {
    var sayac = 0
    let isim1Chars = Array(isim1)
    let isim2Chars = Array(isim2)
    
    if isim2Chars.count >= isim1Chars.count{
        for i in isim2Chars {
            for j in isim1Chars {
                if i == j{
                    sayac += 1
                }
            }
        }
    }
    else{
        for i in isim1Chars {
            for j in isim2Chars {
                if i == j{
                    sayac += 1
                }
            }
        }
    }
    return sayac
}

//FOR AGE ALGORITHM

func calculateAge(age1: String,age2: String) -> Int { //20
    var aResult = 0
    let ageMale = Int(age1) ?? 0
    let ageFemale = Int(age2) ?? 0
    
    if ageMale - ageFemale > 5 && ageMale - ageFemale <= 10 {
        aResult = 10
        
    }
    else if ageMale - ageFemale <= 5 &&  ageMale - ageFemale >= 0 {
        aResult = 20
    }
    
    else if  ageFemale - ageMale > 5 && ageFemale - ageMale < 10 {
        aResult = 5
    }
    else{
        aResult = 0
    }
    
    return aResult
}

// FOR HOROSCOPE ALGORITHM
var vm = ViewModel()
func calculateHoroscope(horoscopeMale: String, horoscopeFemale: String) -> Int{ //20
    
    var hResult = 0
    let soilGroup = [vm.horoscopes[1],vm.horoscopes[5],vm.horoscopes[9]]
    let waterGroup = [vm.horoscopes[3],vm.horoscopes[7],vm.horoscopes[11]]
    let fireGroup = [vm.horoscopes[0],vm.horoscopes[4],vm.horoscopes[8]]
    let airGroup = [vm.horoscopes[2],vm.horoscopes[6],vm.horoscopes[10]]
    if (soilGroup.contains(horoscopeMale) && soilGroup.contains(horoscopeFemale)) ||
        (waterGroup.contains(horoscopeMale) && waterGroup.contains(horoscopeFemale)) ||
        (fireGroup.contains(horoscopeMale) && fireGroup.contains(horoscopeFemale)) ||
        (airGroup.contains(horoscopeMale) && airGroup.contains(horoscopeFemale))
    {
        hResult = 20
    }
    
    else if(soilGroup.contains(horoscopeMale) && waterGroup.contains(horoscopeFemale) || waterGroup.contains(horoscopeMale) && soilGroup.contains(horoscopeFemale)){
        hResult = 20
    }
    else if(airGroup.contains(horoscopeMale) && fireGroup.contains(horoscopeFemale) || fireGroup.contains(horoscopeMale) && airGroup.contains(horoscopeFemale)){
        hResult = 20
    }
    else{
        hResult = 8
    }
    
    return hResult
}

//FOR HEIGHT ALGORITHM

func calculateHeight(heightMale: String, heightFemale: String) -> Int{ //10
    var heResult = 0
    
    let heightMan = Int(heightMale) ?? 0
    let heightWoman = Int(heightFemale) ?? 0
    
    if heightMan - heightWoman >= 5 && heightMan - heightWoman <= 15 {
        heResult = 10
    }
    else{
        heResult = 4
    }
    
    return heResult
}

//FOR WEIGHT ALGORITHM
func calculateWeight(weightMale: String, weightFemale: String) -> Int{//10
    var wResult = 0
    
    let weightMan = Int(weightMale) ?? 0
    let weightWoman = Int(weightFemale) ?? 0
    
    if weightMan - weightWoman >= 10 && weightMan - weightWoman <= 30 {
        wResult = 10
    }
    else{
        wResult = 3
    }
    
    return wResult
    
}


