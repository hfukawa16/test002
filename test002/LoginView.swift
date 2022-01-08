import SwiftUI

struct LoginView: View {
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""
    @State private var flag = true
    
    var body: some View {
        VStack {
            HStack {
//                NavigationView {
                    VStack(alignment: .center) {
                        Text("勤怠入力支援")
                            .font(.system(size: 48,
                                          weight: .heavy))
                        
                        VStack(spacing: 24) {
                            TextField("UserIDを入力してください", text: $inputEmail)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(maxWidth: 280)
                            
                            SecureField("Passwordを入力してください", text: $inputPassword)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(maxWidth: 280)
                            
                        }
                        .frame(height: 100)
                        
                        Toggle(isOn: $flag) {
                            Text(flag ? "入力内容を記憶する" : "入力内容を記憶しない")
                        }
                        .padding(16.0)

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
 //               }
            }
        }
    }
}

//プレビュー機能
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
        }
    }
}
