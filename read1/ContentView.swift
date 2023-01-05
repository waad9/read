//
//  ContentView.swift
//  read1
//
//  Created by وعد عياد الرويلي on 12/06/1444 AH.
//

import SwiftUI
import CoreData

//struct ContentView: View {
    
    struct ContentView: View {
        @State private var showingConfirmation = false
        @State private var backgroundColor = Color.white
        
        var body: some View {
            Text("Hello, World!")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                    Button("Red") { backgroundColor = .red }
                    Button("Green") { backgroundColor = .green }
                    Button("Blue") { backgroundColor = .blue }
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("Select a new color ")
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

