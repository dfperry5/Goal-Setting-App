//
//  Home.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI

struct Home {
  let viewModel: ViewModel?
  @State
  var selectedOption: Int = 0
}

extension Home: View {
    @ViewBuilder
    var body: some View {
      if let viewModel = viewModel {
        buildView(viewModel: viewModel)
      } else {
        VStack {
          Text("Loading...")
          ProgressView()
        }
      }
    }
}

extension Home {
  func buildView(viewModel: ViewModel) -> some View {
    VStack {
      Picker("Goals: ", selection: $selectedOption) {
        ForEach(0..<viewModel.options.count) {
          Text(viewModel.options[$0])
        }
      }
      .pickerStyle(SegmentedPickerStyle())
      
      if selectedOption == 0 {
        ActiveGoals(viewModel: makeActiveGoalsViewModel(viewModel: viewModel))
      } else {
        CompletedGoals(viewModel: makeCompletedGoalsViewModel(viewModel: viewModel))
      }
    }
  }
}

struct Home_Previews: PreviewProvider {

    static var previews: some View {
      let viewModel = Home.ViewModel(title: "Goals", activeGoals: [
        Goal(id: UUID(), name: "Run a 5k", description: "In less than 30 minutes, by June 19, 2021", isActive: true, targettedCompletion: Date()),
        Goal(id: UUID(), name: "Exercise 4 days a week", description: "For all of 2021", isActive: true, targettedCompletion: Date()),
      ],
      completedGoals: [
        Goal(id: UUID(), name: "Learn iOS", description: "Become above average iOS Engineer", isActive: false, targettedCompletion: Date())
      ],
      options: ["Active", "Completed"])
      
      return Home(viewModel: viewModel)
    }
}
