//
//  Dependencies.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

class Dependencies: ObservableObject {
  @Published
  var goalsService: GoalsService
  
  @Published
  var dateFormatter: DateFormatter
  
  public init() {
    goalsService = GoalsService()
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    formatter.locale = Locale(identifier: "en_US")
    
    dateFormatter = formatter
    
  }
}
