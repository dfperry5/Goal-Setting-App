//
//  ResoluteApp.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI

@main
struct ResoluteApp: App {
    let viewModel = ResoluteAppContainer.ViewModel(title: "Resolute")
    let dependencies = Dependencies()
    var body: some Scene {
        WindowGroup {
          ResoluteAppContainer(viewModel: viewModel)
            .environmentObject(dependencies)
        }
    }
}
