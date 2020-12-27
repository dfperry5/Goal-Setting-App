//
//  Transformer+ActiveGoals.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

extension Transformer {
  static func transformToActiveGoalsViewModel(from viewModel: Home.ViewModel) -> ActiveGoals.ViewModel{
    return ActiveGoals.ViewModel(goals: viewModel.activeGoals, title: "Active Goals")
  }
}
