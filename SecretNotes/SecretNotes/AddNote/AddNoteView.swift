//
//  AddNoteView.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 20/11/24.
//

import SwiftUI

struct AddNoteView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("Titulo")
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}

#Preview {
    AddNoteView()
}
