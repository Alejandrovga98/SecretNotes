//
//  SearchField.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 21/11/24.
//

import SwiftUI

struct SearchField: View {
            var placeholder: LocalizedStringKey
            @Binding var text: String
            
            var body: some View {
                VStack(alignment: .trailing) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                            .padding(.leading, 8)
                        
                            TextField(placeholder, text: $text)
                                .padding()
                                .onTapGesture {
                                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                }
                    }
                    .frame(height: 45)
                    .background(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 1)
                        .shadow(radius: 5))
                    .padding(.top, 0)
                    .padding(.horizontal, 20)
                    
                }
            }
        }

