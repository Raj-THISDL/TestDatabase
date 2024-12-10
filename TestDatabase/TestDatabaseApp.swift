//
//  TestDatabaseApp.swift
//  TestDatabase
//
//  Created by Raja Marwah on 3/12/2024.
//

import SwiftUI
import SwiftData

@main
struct TestDatabaseApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    // Hello Git
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
       .modelContainer(sharedModelContainer)
       // .modelContainer(for: DataItem.self)
    }
}
