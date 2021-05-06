//
//  Person.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 5/3/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Person: Codable, Identifiable {
    @DocumentID var id: String?
    @ServerTimestamp var createdTime: Timestamp?
    var title: String
    var completed: Bool
    var userId: String?
}















