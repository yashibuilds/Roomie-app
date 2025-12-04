import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer().frame(height: 60)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160)
                    .padding(.bottom, 8)
                
                Text("Roomie")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(mainColor)
                
                Spacer()
                
                NavigationLink(destination: SelectStatusScreen()) {
                    Text("Get Started")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(mainColor)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 32)
                        .padding(.bottom, 40)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        WelcomeScreen()
    }
}
