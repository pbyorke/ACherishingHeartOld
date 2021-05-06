//
//  Authenticator.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 5/6/21.
//

import SwiftUI
//import FirebaseAuth

enum AuthenticatorAction {
    case signIn
    case signUp
    case signOut
}

enum AuthenticatorError: Error {
//    case cannotCreate(String)
    case cannotCreate(String)
    case bad1
    case bad2
}

// MARK: - Authenticator

class Authenticator: Identifiable, ObservableObject {
    
    @Published var currentUser: User?
    
//    init() {
//        establishCurrentPerson()
//    }
    
//    private func establishCurrentPerson() {
//
//    }
    
    var isSignedIn: Bool {
//        currentPerson != nil
        false
    }

//    var isMedia: Bool {
//        guard let person = currentPerson else { return false }
//        return person.isMedia
//    }
//
//    var isMaster: Bool {
//        guard let person = currentPerson else { return false }
//        return person.isMaster
//    }
//
//    func signIn() {
//        currentPerson = Person()
//    }
//
//    func signOut() {
//        currentPerson = nil
//    }
    
    
    // 1. Auth signup
    // 2. FB create Person record
    // 3. Sign in:
    //   a. add Person to UserDefaults
    //   b. put Person in currentPerson
    
//    func signUp(emailAddress: String, password: String, done: @escaping (Result<Person, AuthenticatorError>) -> Void) {
//        Auth.auth().createUser(withEmail: emailAddress, password: password) { AuthDataResult, error in
//            if error == nil {
//                AuthDataResult!.user.sendEmailVerification { error in
//                    if error == nil {
//                    } else {
//                        done(.failure(AuthenticatorError.cannotCreate(error?.localizedDescription ?? "unknown error")))
//                    }
//                }
//            } else {
//                done(.failure(AuthenticatorError.cannotCreate(error?.localizedDescription ?? "unknown error")))
//            }
//        }
//
//////            print("\(type(of: error))")
//////            print("\(error)")
//////            print("\(error.debugDescription)")
////            let x = error?.localizedDescription ?? "unknown error"
////            print("\(x)")
//////            let x = error.Code
////
////
////
////            if error == nil {
////                AuthDataResult!.user.sendEmailVerification { error in
////
//////                    let x = error
//////                    print("\(type(of: x))")
////
////                    if error == nil {
////                        done(.success(Person()))
////                    } else {
////                        done(.failure(.bad2))
////                    }
////                }
////            } else {
////                print(error)
//////                done(.failure(AuthenticatorError.cannotCreate(error?.localizedDescription ?? "unknown error")))
////                done(.failure(.bad1))
////            }
////        }
//    }
//
}
