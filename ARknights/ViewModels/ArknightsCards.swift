//
//  ArknightsCards.swift
//  ARknights
//
//  Created by Brian on 2022/6/6.
//

import Foundation

class ArknightsCards{
    //decode operators from JSON
    static let operators=Bundle.main.decode([Operator].self,from:"Operators.json")
    
    //create avatar cards model
    static func createAvatarCards()->AvatarCards{
        AvatarCards(operators: operators)
    }
    
    private(set) var model: AvatarCards=ArknightsCards.createAvatarCards()
    
    var avatarCards:[AvatarCards.avatarCard]{
        model.avatarCards
    }
    
    var likedCards:[AvatarCards.avatarCard]{
        model.likedCards
    }
    
    
    
    
    
    
}
