//
//  ActiveGoals.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI

struct ActiveGoals {
  let viewModel: ViewModel
  @State
  var showAddScreen: Bool = false
}
extension ActiveGoals: View {
    var body: some View {
      VStack {
        List(viewModel.goals, id: \.id) { goal in
          NavigationLink(
            destination: Text("Destination"),
            label: {
              Row(goal: goal)
            })
        }
        .navigationTitle(viewModel.title)
        .navigationBarItems(trailing:
          Button(action: {
            self.showAddScreen = true
          }, label: {
            Image(systemName: "plus.circle.fill")
          })
        )
      }
      .sheet(isPresented: $showAddScreen, content: {
        AddGoal()
      })
    }
}

struct ActiveGoals_Previews: PreviewProvider {
    static var previews: some View {
      let viewModel = ActiveGoals.ViewModel(goals: [], title: "Active")
      ActiveGoals(viewModel: viewModel)
    }
}
