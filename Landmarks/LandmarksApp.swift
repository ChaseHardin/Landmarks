//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Chase Hardin on 11/13/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
