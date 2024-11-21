//
//  SecretNotesApp.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 19/11/24.
//

import SwiftUI

@main
struct SecretNotesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
