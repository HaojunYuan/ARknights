import SwiftUI


struct CardView:View{
    let avatar:String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.background)

            VStack {
                Image(avatar).resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120, alignment: .center)
                Text(avatar.dropFirst(3))
                    .foregroundColor(.blue)
            }
            .padding(0)
        }
    }
}
