//
//  Home+Helpers.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

extension Home {
  func makeActiveGoalsViewModel(viewModel: ViewModel) -> ActiveGoals.ViewModel{
    return Transformer.transformToActiveGoalsViewModel(from: viewModel)
  }
  
  func makeCompletedGoalsViewModel(viewModel: ViewModel) -> CompletedGoals.ViewModel{
    return Transformer.transformToCompletedGoalsViewModel(from: viewModel)
  }
}
