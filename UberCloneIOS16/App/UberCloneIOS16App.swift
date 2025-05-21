//
//  UberCloneIOS16App.swift
//  UberCloneIOS16
//
//  Created by MacBookAir2019 on 16/5/25.
//

import SwiftUI

@main
struct UberCloneIOS16App: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
//            LocationSearchActivationView()
            HomeView()
                .environmentObject(locationViewModel)
//            ContentView()
        }
    }
}
