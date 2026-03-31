//
//  ContentView.swift
//  reverbapp
//
//  Created by Aluno-01 on 31/03/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showToast: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Button("Show Toast") {
                    showToast.toggle()
                }
                .dynamicIslandToast(isPresented: $showToast, value: .example1)
            }
            .navigationTitle("Dynamic Island Toast")
        }
    }
}

#Preview {
    ContentView()
}
