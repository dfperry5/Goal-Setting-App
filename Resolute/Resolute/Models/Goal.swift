//
//  Goal.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

struct Goal {
  var id: UUID
  var name: String
  var description: String
  var isActive: Bool
  var targettedCompletion: Date
  var completedDate: Date?
  static let empty = Goal(id: UUID(), name: "Test", description: "test", isActive: true, targettedCompletion: Date())


  public init(id: UUID, name: String, description: String, isActive: Bool, targettedCompletion: Date, completedDate: Date? = nil) {
    self.id = id
    self.name = name
    self.description = description
    self.isActive = isActive
    self.targettedCompletion = targettedCompletion
    self.completedDate = completedDate
  }
  
}
