//
//  ContentView.swift
//  WordScramble
//
//  Created by Hina Khan on 20/04/2024.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]

        var body: some View {
            List(people, id: \.self) {
                Text($0)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
