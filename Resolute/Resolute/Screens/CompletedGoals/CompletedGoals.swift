//
//  CompletedGoals.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI

struct CompletedGoals {
  let viewModel: ViewModel
}

extension CompletedGoals: View {
    var body: some View {
      List(viewModel.goals, id: \.id) { goal in
        NavigationLink(
          destination: Text("Destination"),
          label: {
            Row(goal: goal)
          })
      }
      .navigationTitle(viewModel.title)
      .navigationBarItems(trailing: EmptyView())
    }
}

struct CompletedGoals_Previews: PreviewProvider {
    static var previews: some View {
      CompletedGoals(viewModel: .init(goals: [], title: "Completed"))
    }
}
