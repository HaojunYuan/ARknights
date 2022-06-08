import SwiftUI

struct ContentView: View {
    let cards:ArknightsCards
    let type: String
    
    //func to determine which list to show to the view
    func getShowList()->[AvatarCards.avatarCard]{
        if type == "all"{
            return cards.avatarCards
        }else{
            return cards.likedCards
        }
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
            .navigationTitle("干员选择")
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
