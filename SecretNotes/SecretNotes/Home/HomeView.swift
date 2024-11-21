//
//  HomeView.swift
//  SecretNotes
//
//  Created by Alejandro Vidal Gómez Alves on 20/11/24.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingAddNoteView = false
    var body: some View {
        NavigationStack{
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            FloatButton(onUpdate: {
                navigationDestination(isPresented: $isShowingAddNoteView) {
                    AddNoteView()
                }
            })
        }
        }
    }
}

#Preview {
    HomeView()
}
