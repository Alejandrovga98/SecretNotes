//
//  EmptyHomeView.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 21/11/24.
//

import SwiftUI

struct EmptyHomeView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: "book.pages")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .padding(25)
                    .foregroundColor(.white)
                
                Text("No hay notas")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 30))
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}

#Preview {
    EmptyHomeView()
}
