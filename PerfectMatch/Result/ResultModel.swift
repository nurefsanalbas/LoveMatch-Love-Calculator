//
//  ResultModel.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 27.07.2022.
//

import Foundation
import SwiftUI

struct ResultModel : Identifiable{
    var id = UUID()
    var imageName2 : String
    var title : String
    var text : String
}

var perfect1 = ResultModel(imageName2: "medal", title: "DIAMOND COUPLE", text: "You are one of the most compatible and perfect couples in the world. All the criteria we have created are fully compatible with you. You support and complement each other so well. The most important thing in a relationship is this beautiful support and the majority of common aspects. Although there are sometimes minor arguments between you, these are developing for you to be a much better couple. You are so beautiful together. Always be happy...")
var perfect2 = ResultModel(imageName2: "medal", title: "DIAMOND COUPLE", text: "You are one of the most compatible and perfect couples in the world. All the criteria we have created are completely compatible for you. How can we say, you are so perfect that the harmony that everyone wanted to be and sought for years is actually the harmony between you. Even if you have small arguments, they develop you and increase the harmony between you. You look great, keep being happy and never break this spell.")
var perfect3 = ResultModel(imageName2: "medal", title: "DIAMOND COUPLE", text: "You are one of the most compatible and perfect couples in the world. All the criteria we have created are completely compatible for you. There hasn't been a couple who got a diamond level in this test for a long time. How do you manage to be so compatible? You always envy those around you with your harmony, everyone strives to be like you. Even if you have disagreements sometimes, smile at each other and stay in tune. Happy days...")
var perfect4 = ResultModel(imageName2: "medal", title: "DIAMOND COUPLE", text: "You are one of the most compatible and perfect couples in the world. All the criteria we have created are completely compatible for you. It would not be a lie if we say that you are the first to come to mind when it comes to harmony. You are so compatible with each other that you make everyone around you jealous with your beauty. Even if you have small arguments, continue to maintain this wonderful harmony between you and always smile. Thank you for taking our test and we wish you a happy future.")
var perfect5 = ResultModel(imageName2: "medal", title: "DIAMOND COUPLE", text: "You are one of the most compatible and perfect couples in the world. All the criteria we have created are completely compatible for you. We see a couple beyond perfect, which we don't see very often. This result is seen in so few people that it would not be a lie if we say that we envy you. We do not know how you fail, how you overcome difficulties, but it is obvious that you are very successful. Do not let go of how you love each other and continue to illuminate your surroundings with your light. We are very happy that you took our test and saw your fit. We wish you a happy future.")

var perfects = [perfect1,perfect2,perfect3,perfect4,perfect5]

var good1 = ResultModel(imageName2: "good", title: "WELL COUPLE", text: "You are a good couple. You understand and support each other. Even if you face difficulties sometimes, remember that you can overcome them by talking. Thank you for participating in our test. We wish you a nice day.")
var good2 = ResultModel(imageName2: "good", title: "WELL COUPLE", text: "Woww here we have a compatible couple. You are a harmonious couple, even if you sometimes argue or have trouble understanding each other. At the end of the day, you still listen to each other and find the right path together. You always support and understand each other. We wish the harmony between you to continue. Thank you for participating in our test. We wish you a nice day.")
var good3 = ResultModel(imageName2: "good", title: "WELL COUPLE", text: "Wow, you're such a beautiful couple that you earned the star badge by getting this score in our test. Sometimes you may find it difficult to understand each other. Everyone experiences this. Keep solving your problems by talking and never doubt your love for each other. There are very few people who have found their soul mate like you. We wish you always happy... We wish you happy days.")
var good4 = ResultModel(imageName2: "good", title: "WELL COUPLE", text: "EXCELLENT what a harmonious couple. You earned the star badge for your answers in our test. You love each other very much and always support each other. The most important thing to be a perfect couple is to listen to each other and try to find a solution when faced with a problem. You are successful in this, but you can be even better and earn a diamond badge. Thank you for participating in our test and we wish you a happy future.")
var good5 = ResultModel(imageName2: "good", title: "WELL COUPLE", text: "Impressive, another good couple. First of all, we would like to state that you suit each other very well and that you are very compatible. Sometimes, as in any relationship, you may find it difficult to understand each other. But not listening enough to each other isn't a problem you can't get over. You just keep taking care of each other. Thank you for participating in our test and we wish you a happy future.")

var goods = [good1,good2,good3,good4,good5]

var medium1 = ResultModel(imageName2: "medium", title: "MEDIUM COUPLE", text: "As a result of the test, you have a medium level output. This shows that you are compatible in your relationship but often do not listen to each other. You should value each other's opinions more and listen to each other more. Try to find common solutions to problems. Thank you for participating in our test and we wish you a happy future.")
var medium2 = ResultModel(imageName2: "medium", title: "MEDIUM COUPLE", text: "As a result of the test, you have earned the intermediate couple badge. This shows that you are compatible in your relationship, but most of the time you do not listen to each other and argue with each other. In order to achieve a better harmony, you should listen to each other more and respect your mutual opinions more. Thank you for participating in our test and we wish you a happy future.")
var medium3 = ResultModel(imageName2: "medium", title: "MEDIUM COUPLE", text: "As a result of the test, you have earned the intermediate couple badge. This badge shows you that you are compatible with each other and that you have frequent arguments. In order not to have such discussions, you should value each other's ideas more, not delay your problems with each other and listen to each other. There is no doubt that you will find the perfect fit in these conditions. Thank you for participating in our test and we wish you a happy day.")

var mediums = [medium1,medium2,medium3]

var bad1 = ResultModel(imageName2: "bad", title: "WEAK COUPLE", text: "You can be much better. You should listen to each other more and try harder to overcome problems. Every problem can be solved as long as you are willing to do it. Thank you for participating in our test.")
var bad2 = ResultModel(imageName2: "bad", title: "WEAK COUPLE", text: "According to the result of the test, you are entitled to earn the third level badge. This badge shows that you and your partner are in tune with some issues, but you argue on many issues and don't listen to each other. To be a compatible couple, you must value and respect each other's opinions more. Thank you for participating in our test and we wish you a happy day.")
var bad3 = ResultModel(imageName2: "bad", title: "WEAK COUPLE", text: "According to the test result, you are entitled to earn the third level badge. This badge indicates that you sometimes have trouble adjusting. The reason why your arguments are more than your harmony is because you don't listen to each other. You should give more importance to each other's ideas and approach the events from different perspectives, this will increase the harmony between you. Thank you for participating in our test, we wish you a happy day.")
var bad4 = ResultModel(imageName2: "bad", title: "WEAK COUPLE", text: "According to the test result, you are entitled to earn the third level badge. We think you can be better. You should pay more attention to each other's opinions and listen to each other more. To solve problems, you have to approach them from different perspectives. Thank you for participating in our test, we wish you a good day.")

var bads = [bad1,bad2,bad3,bad4]

