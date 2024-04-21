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
    
    func testBundle() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt"){
            if let fileContents = try? String(contentsOf: fileURL){
                print(fileContents)
            }
        }
    }
    
    
    func testString() {
        let input = """
                    a
                    b
                    c
                    """
        let letters = input.components(separatedBy: " ")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
