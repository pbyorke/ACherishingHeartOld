//
//  SignInWithAppleVIew.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 4/30/21.
//

//import SwiftUI
//
//struct SignInWithAppleView: View {
//    @Environment(\.presentationMode) var presentationMode
//    
//    @State var coordinator: SignInWithAppleCoordinator?
//    
//    var body: some View {
//        VStack {
//            Text("Sign in with Apple to unlock more features")
//            SignInWithAppleButton()
//                .frame(width: 280, height: 45)
//                .onTapGesture {
//                    coordinator = SignInWithAppleCoordinator()
//                    if let coordinator = coordinator {
//                        coordinator.startSignInWithAppleFlow {
//                            print("* * *  You successfully signed in")
//                            presentationMode.wrappedValue.dismiss()
//                        }
//                    }
//                } // onTapGesture
//        } // VStack
//    } //  body
//}
//
//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInWithAppleView()
//    }
//}
