import SwiftUI

struct AvatarCardView:View{
    let card:AvatarCards.avatarCard
    
    var body: some View {
        ZStack {
            let shape=RoundedRectangle(cornerRadius: 10, style: .continuous)
            shape.strokeBorder()
            shape.shadow(radius: 10)
            VStack {
                Image(card.op.avatar)
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                Text(card.op.name)
                    .foregroundColor(.blue)
                    .padding(.bottom,5)
            }
            .padding(0)
            .frame(width: 110, alignment: .center)
        }
    }
}

struct AvatarCard_Previews: PreviewProvider {
    static let cards=ArknightsCards()
    static var previews: some View {
        AvatarCardView(card:cards.avatarCards[0])
    }
}
