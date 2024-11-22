//
//  CoreDataProtocol.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 21/11/24.
//

import Foundation

protocol CoreDataProtocol {
    func fetchItems() -> [NoteModel]
    func addItem(data: Date)
    func deleteItems(at offsets: IndexSet)
    func saveContext()
}
