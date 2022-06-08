import SwiftUI

struct ContentView: View {
    let cards:ArknightsCards
    let type: String
    
    //func to determine which list to show to the view
    func getShowList()->[AvatarCards.avatarCard]{
        return (type == "all" ? cards.avatarCards: cards.likedCards)
    }
    
    func getTitle()->String{
        return (type == "all" ? "干员选择": "我的收藏")
    }

    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 110))]){
                        ForEach(getShowList()){ card in
                            NavigationLink(destination: PortraitView(op: card.op)){
                                AvatarCardView(card:card)
                                    .scaledToFit()
                            }
                        }
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
                .frame(maxWidth:.infinity)
                .padding(.horizontal)
            }
            .navigationTitle(getTitle())
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static let cards=ArknightsCards()
    static var previews: some View {
        Group {
            ContentView(cards: cards,type: "all")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
