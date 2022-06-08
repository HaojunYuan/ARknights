//
//  PortraitView.swift
//  ARknights
//
//  Created by Haojun on 2022/6/4.
//

import SwiftUI

struct PortraitView: View {
    let op:Operator
    
    var body: some View {
        List{
            ForEach(op.portraits,id:\.self){ portrait in
                PortraitCardView(portrait:portrait)
                    .listRowInsets(EdgeInsets())
            }
            .listRowBackground(Color.clear)
        }
        
//        .frame(maxWidth:.infinity)
        .foregroundColor(.white)
        .padding(.top,-35)
        .navigationTitle("立绘选择")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PortraitView_Previews: PreviewProvider {
    static var previews: some View {
        PortraitView(op:Operator.example)
    }
}
