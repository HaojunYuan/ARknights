//
//  PortraitCard.swift
//  ARknights
//
//  Created by Brian on 2022/6/4.
//

import SwiftUI

struct PortraitCardView: View {
    let portrait:String
    
    func getName() -> String {
        if portrait.last == "1" {
            return "初始立绘"
        }else if portrait.last == "2"{
            return "精英二立绘"
        }else{
            return "小人动画"
        }
    }
    
    var body: some View {
        VStack {
            Image(portrait)
                .resizable()
                .scaledToFit()
            Text(getName())
                .foregroundColor(.blue)
                .padding(.bottom,20)
        }
        .frame(width:UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.45, alignment: .center)
    }
}

struct PortraitCard_Previews: PreviewProvider {
    static var previews: some View {
        PortraitCardView(portrait: Operator.example.portraits[0])
    }
}
