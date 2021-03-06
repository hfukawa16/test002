
import SwiftUI

struct LoginView: View {
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("SwiftUI App")
                    .font(.system(size: 48,
                                  weight: .heavy))

                VStack(spacing: 24) {
                    TextField("Mail address", text: $inputEmail)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)

                    SecureField("Password", text: $inputPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)

                }
                .frame(height: 200)

                Button(action: {
                   print("Login処理")
                },
                label: {
                    Text("Login")
                        .fontWeight(.medium)
                        .frame(minWidth: 160)
                        .foregroundColor(.white)
                        .padding(12)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                })

                Spacer()
            }
        }
    }
}
