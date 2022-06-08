//
//  ARCamera.swift
//  ARknights
//
//  Created by Brian on 2022/6/6.
//

import Foundation
import SwiftUI

struct AvatarCards{
    private(set) var avatarCards: [avatarCard]=[]
    private(set) var likedCards: [avatarCard]=[]
    
    init(operators:[Operator]){
        for op in operators {
            avatarCards.append(avatarCard(id:op.id,op:op))
        }
    }
    
//    func like(_ card: avatarCard){
//        avatarCard.isLiked.toggle()
//    }
    
    struct avatarCard: Identifiable{
        var id:String
        var op: Operator
        var isLiked: Bool=false
        
    }
    
}
