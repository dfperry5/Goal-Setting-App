//
//  Goal.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

struct Goal {
  let id: UUID
  let name: String
  let description: String
  let isActive: Bool
  let targettedCompletion: Date
  let completedDate: Date?

  public init(id: UUID, name: String, description: String, isActive: Bool, targettedCompletion: Date, completedDate: Date? = nil) {
    self.id = id
    self.name = name
    self.description = description
    self.isActive = isActive
    self.targettedCompletion = targettedCompletion
    self.completedDate = completedDate
  }
}
