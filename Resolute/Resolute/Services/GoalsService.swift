//
//  GoalsService.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import Foundation

protocol GoalsService {
  func getListOfGoals() -> [Goal]
}
