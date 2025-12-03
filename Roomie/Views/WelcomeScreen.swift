import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            // LOGO
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .padding(.bottom, 24)
            
            Spacer()
            
            // GET STARTED BUTTON
            NavigationLink(destination: SelectStatusScreen()) {
                Text("Get Started")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.indigo)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 50)
        }
        .background(Color(.systemBackground))
    }
}

#Preview {
    NavigationStack {
        WelcomeScreen()
    }
}
