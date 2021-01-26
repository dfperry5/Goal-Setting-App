//
//  Details.swift
//  Resolute
//
//  Created by Dylan Perry on 1/25/21.
//

import SwiftUI

struct Details {
  let goal: Goal
  let formatter = DateFormatter()
}

extension Details {
  private func makeRows() -> [Row] {
    let titleRow = Row(title: "Goal Title", value: goal.name)
    let descRow = Row(title: "Description", value: goal.description)
    let isActiveRow = Row(title: "Is Active", value: goal.isActive.description)
    
    formatter.dateStyle = .medium
    let dateString = formatter.string(from: goal.targettedCompletion)
    let completionDateRow = Row(title: "Target Completion", value: dateString)
    return [titleRow, descRow, isActiveRow, completionDateRow]
  }
}

extension Details : View {
  var body: some View {
    ScrollView {
      ForEach(makeRows(), id: \.id) { row in
        row
      }
      .padding()
    }
  }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
      Details(goal: Goal.empty)
    }
}
