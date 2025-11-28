import SwiftUI

struct SecondaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subtitleM)
                .foregroundColor(.textPrimary)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white.opacity(0.2), lineWidth: 1)
                )
        }
    }
}

struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.backgroundDark.ignoresSafeArea()
            SecondaryButton(title: "Cancel", action: {})
                .padding()
        }
    }
}
