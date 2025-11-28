import SwiftUI

struct CustomCard<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding(20)
            .background(Color.backgroundCard)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
    }
}

struct CustomCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.backgroundDark.ignoresSafeArea()
            CustomCard {
                VStack(alignment: .leading) {
                    Text("Card Title")
                        .font(.titleM)
                        .foregroundColor(.textPrimary)
                    Text("Card Subtitle")
                        .font(.bodyM)
                        .foregroundColor(.textSecondary)
                }
            }
            .padding()
        }
    }
}
