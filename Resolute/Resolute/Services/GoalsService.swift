//
//  GoalsService.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

struct GoalsService {
  func getListOfGoals() -> [Goal] {
    return [
      Goal(id: UUID(), name: "Run a 5k", description: "In less than 30 minutes, by June 19, 2021", isActive: true, targettedCompletion: Date()),
      Goal(id: UUID(), name: "Exercise 4 days a week", description: "For all of 2021", isActive: true, targettedCompletion: Date()),
      Goal(id: UUID(), name: "Learn iOS", description: "Become above average iOS Engineer", isActive: false, targettedCompletion: Date(), completedDate: Date())
    ]
  }
}
