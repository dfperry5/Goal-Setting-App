//
//  Transformer+ActiveGoals.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

extension Transformer {
  static func transformToCompletedGoalsViewModel(from viewModel: Home.ViewModel) -> CompletedGoals.ViewModel{
    return CompletedGoals.ViewModel(goals: viewModel.completedGoals, title: "Completed Goals")
  }
}
