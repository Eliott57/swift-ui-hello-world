//
//  ContentView.swift
//  SwiftHelloWorld
//
//  Created by Eliott Oblinger on 12/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false;
    
    private func showAlert() -> Void {
        showingAlert = true;
    }
    
    var body: some View {
        VStack {
            Button(action: showAlert) {
                Label("Hello, world!", systemImage: "globe")
            }
            .background(Color.blue)
            .foregroundColor(Color.white)
            .buttonStyle(.bordered)
            .alert("Hello, SwiftUI!", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
