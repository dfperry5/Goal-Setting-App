//
//  Transformer+HomeScreen.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

extension Transformer {
  static func transform(goals: [Goal]) -> Home.ViewModel {
    let options = ["Active", "Completed"]
    let title = "Goals"
    let completedGoals = goals.filter { !$0.isActive }
    let activeGoals = goals.filter { $0.isActive }
    return Home.ViewModel(title: title, activeGoals: activeGoals, completedGoals: completedGoals, options: options)
  }
}
