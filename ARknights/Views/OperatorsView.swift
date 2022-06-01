//
//  OperatorsView.swift
//  ARknights
//
//  Created by Brian on 2022/5/31.
//

import SwiftUI

struct OperatorsView: View {
    
    var body: some View {
        HStack{
            CardView(avatar: "头像_浊心斯卡蒂")
            CardView(avatar: "头像_浊心斯卡蒂")
            CardView(avatar: "头像_浊心斯卡蒂")
        }
    }
}
            

struct OperatorsView_Previews: PreviewProvider {
    static var previews: some View {
        OperatorsView()
    }
}
