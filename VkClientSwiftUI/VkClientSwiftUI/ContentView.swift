//
//  ContentView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 14.01.2022.
//

import SwiftUI
import Combine



struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true
    @State private var showIncorrentCredentialWarning = false
    @Binding var shouldShowMainView: Bool 
    
    @State private var isUserLoggedIn: Bool = false
    
    private let keyboardIsOnPublisher = Publishers.Merge(NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
        .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
        .map { _ in false })
        .removeDuplicates()
    
    private func verifyLogData() {
        if login == "Admin" && password == "Admin" {
            isUserLoggedIn = true
            shouldShowMainView = isUserLoggedIn
            // authorizing user
        } else {
            showIncorrentCredentialWarning = true
        }
        password = ""
    }
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                Image("")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
            ScrollView( showsIndicators: false) {
                VStack {
                    if shouldShowLogo {
                        Text("VkClient ")
                            .font(.largeTitle)
                            .padding(.top, 32)
                    }
                    VStack {
                        HStack {
                            Text("Login:")
                            Spacer()
                            TextField("", text: $login)
                                .frame(maxWidth: 150)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("Password:")
                            Spacer()
                            SecureField("", text: $password)
                                .frame(maxWidth: 150)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }.frame(maxWidth: 250)
                        .padding(.top, 50)
                    Button(action: verifyLogData) {
                        Text("Log in")
                    }.padding(.top, 50)
                        .padding(.bottom, 20)
                        .disabled(login.isEmpty || password.isEmpty)
                }
            }
            .onReceive(keyboardIsOnPublisher) {
                isKeyboardOn in
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.shouldShowLogo = !isKeyboardOn
                }
            }
        }.onTapGesture {
            UIApplication.shared.endEditing()
        }.alert(isPresented: $showIncorrentCredentialWarning, content: {
            Alert(
            title: Text("Error"),
            message: Text("Incorrect Login/Password was entered"))})
    }
}
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
