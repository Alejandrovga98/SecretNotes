//
//  NoteModel.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 21/11/24.
//

import Foundation

struct NoteModel {
    let id: UUID
    var name:String
    var text:String?
    var date:Date
}
