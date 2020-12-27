//
//  ResoluteAppContainer+Helpers.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

extension ResoluteAppContainer {
  func getGoals() {
    homeViewModel = Transformer.transform(goals: dependencies.goalsService.getListOfGoals())
  }
}
