//
//  CoreDataManager.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 21/11/24.
//

import Foundation
import CoreData

class CoreDataManager: CoreDataProtocol {
    func fetchItems() -> [NoteModel] {
        let fetchRequest: NSFetchRequest<Note> = Note.fetchRequest()
        do {
            // Recuperar los objetos Note del contexto
            let notes = try viewContext.fetch(fetchRequest)
            // Mapear los objetos Note a NoteModel
            return notes.map { note in
                NoteModel(
                    id: note.id ?? UUID() ,
                    name: note.name ?? "",
                    text: note.text ?? "",
                    date: note.date ?? Date()
                )
            }
        } catch {
            print("Error fetching notes: \(error)")
            return []
        }
    }
    
    func addItem(data: Date) {
        print("hola")
    }
    
    func deleteItems(at offsets: IndexSet) {
        print("Holi")
    }
    
    func saveContext() {
        print("hola2")
    }
    
    private let viewContext: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.viewContext = context
    }
    
    
}
