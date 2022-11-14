//
//  EmojiHunterApp.swift
//  EmojiHunter
//
//  Created by FOI on 12.11.2022..
//

import SwiftUI

@main
struct EmojiHunterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
