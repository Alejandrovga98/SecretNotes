//
//  Floatbutton.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 20/11/24.
//

import Foundation
import SwiftUI

struct FloatButton: View {
    @State private var showingSheet = false
    var onUpdate: () -> Void
    var body: some View {
        Button {
            showingSheet.toggle()
            
        } label: {
            Image(systemName: "plus")
                .font(.title.weight(.semibold))
                .frame(width: 35, height: 35)
                .padding()
                .background(Color.white)
                .foregroundColor(.black)
                .clipShape(Circle())
        }
        .padding(35)
    }
}
