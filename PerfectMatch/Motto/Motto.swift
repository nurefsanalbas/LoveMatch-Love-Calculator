//
//  Motto.swift
//  PerfectMatch
//
//  Created by Nur Efsan Albas on 30.09.2022.
//
import Foundation

class MottoFunction{
    func Motto()->String{
        let mottos =  ["Today your dreams comes true!","Today you are so beautiful!","You will be succesfull!","Smile and the world smiles with you!","Believe in yourself!","Live in the moment!","Time never comes again!", "Everything you can imagine is real!","The best way to predict your future is to create it.","Don’t let idiots ruin your day.","It is time to be happy again.","Patience is a key element of success.","Better days are coming.","Do not let the behaviour of others destroy your inner peace.","Do good for others. It will come back in unexpected ways.","Learn from yesterday, live for today, hope for tomorrow.","Time never comes again.","A smooth sea never made a skilled sailor.","It’s always too early to quit.","If you fell down yesterday, stand up today.","Everything has beauty, but not everyone sees it.","Life is the sum of all your choices.","The best view comes after the hardest climb.","To begin, begin.","Always give your best never worry for results.","You will win if you don’t quit.","Follow your heart and see where you land.","A heart that loves is always young.","Everything has beauty, but not everyone sees it.","Every accomplishment starts with the decision to try.","It’s hard to beat a person who never gives up.","The future depends on what we do in the present.","Always give your best never worry for results.","People who touch your heart are always with you.","Always keep smiling.","Life must go on","Don’t worry, be happy!","Beautiful minds inspire others.","Train your mind to see the good in every situation.","Enjoy every single moment in your life.","Life is a game, let’s make a high score.","Stop saying I WİSH, start saying I WİLL.","Turn the pain into power", "It's okey if some people dislike you, not everyone has good taste."]
        
        let randomMottos = mottos.randomElement()!
        return randomMottos
    }
}
