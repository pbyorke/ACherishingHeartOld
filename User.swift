//
//  User.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 5/3/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct User: Codable, Identifiable {
    @DocumentID var id: String?
    @ServerTimestamp var createdTime: Timestamp?
//    var title: String
//    var completed: Bool
//    var userId: String?
    var email: String
}
