//
//  GoalDetails+ViewModel.swift
//  Resolute
//
//  Created by Dylan Perry on 1/24/21.
//

import Foundation

extension GoalDetails {
  class ViewModel: ObservableObject {
    @Published
    var goal: Goal
    public init(goal: Goal) {
      self.goal = goal
    }
  }
}
