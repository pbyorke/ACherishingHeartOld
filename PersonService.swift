//
//  PersonService.swift
//  ACherishingHeart
//
//  Created by Pete Yorke on 5/3/21.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class PersonRepository: ObservableObject {
    
    let db = Firestore.firestore()
    
    @Published var Persons = [Person]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        let userId = Auth.auth().currentUser?.uid

        db.collection("Persons")
            .order(by: "createdTime")
            .whereField("userId", isEqualTo: userId ?? "")
            .addSnapshotListener { querySnapshot, error in
                if let querySnapshot = querySnapshot {
                    self.Persons = querySnapshot.documents.compactMap { document in
                        do {
                            let x = try document.data(as: Person.self)
                            return x
                        }
                        catch {
                            print("* * *  \(error)")
                        }
                        return nil
                    }
                }
            }
    }
    
    func addPerson(_ Person: Person) {
        do {
            var addedPerson = Person
            addedPerson.userId = Auth.auth().currentUser?.uid
            let _ = try db.collection("Persons").addDocument(from: addedPerson)
        }
        catch {
            fatalError("Unable to encode Person: \(error.localizedDescription)")
        }
    }
    
    func updatePerson(_ Person: Person) {
        if let PersonID = Person.id {
            do {
                try db.collection("Persons").document(PersonID).setData(from: Person)
            }
            catch {
                fatalError("Unable to encode Person: \(error.localizedDescription)")
            }
        }
    }
    
}
