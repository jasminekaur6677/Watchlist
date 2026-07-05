//
//  WatchlistApp.swift
//  Watchlist
//
//  Created by Jasmine Kaur on 09/05/26.
//

import SwiftUI
import SwiftData

@main
struct WatchlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Movie.self)
        }
    }
}
