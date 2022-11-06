//
//  AppDesignApp.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 06/11/22.
//

import SwiftUI

@main
struct AppDesignApp: App {
    var body: some Scene {
            WindowGroup {
                ContentView()
                .onOpenURL { url in
                  print("URL: \(url)")
                }
            }
        }
}
