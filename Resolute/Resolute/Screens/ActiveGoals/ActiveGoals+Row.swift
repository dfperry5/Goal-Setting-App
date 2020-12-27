//
//  GoalRow.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI

extension ActiveGoals {
  struct Row {
    let goal: Goal
    
    @EnvironmentObject
    var dependencies: Dependencies
  }
}

extension ActiveGoals.Row: View {
    var body: some View {
      HStack {
        Text(goal.name)
          .bold()
        Spacer()
        Text(dependencies.dateFormatter.string(from: goal.targettedCompletion))
      }
    }
}

