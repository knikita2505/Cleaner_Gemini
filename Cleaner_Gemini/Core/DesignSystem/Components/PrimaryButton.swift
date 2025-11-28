import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subtitleL)
                .foregroundColor(.textPrimary)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(Color.gradientCTA)
                .cornerRadius(16)
                .shadow(color: Color.primaryBlue.opacity(0.3), radius: 10, x: 0, y: 5)
        }
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.backgroundDark.ignoresSafeArea()
            PrimaryButton(title: "Get Started", action: {})
                .padding()
        }
    }
}
