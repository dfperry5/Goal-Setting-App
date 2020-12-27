//
//  Home+ViewModel.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

extension Home {
  struct ViewModel {
    let title: String
    let activeGoals: [Goal]
    let completedGoals: [Goal]
    let options: [String]
  }
}
