//
//  AddGoal+GoalInformation.swift
//  Resolute
//
//  Created by Dylan Perry on 1/3/21.
//

import SwiftUI

extension AddGoal {
  struct GoalInformation {
    @Binding
    var viewModel: ViewModel
  }
}

extension AddGoal.GoalInformation: View {
    var body: some View {
      Section(header: Text("Goal Information")) {
        TextField("Goal Name", text: $viewModel.goalName)
        Picker(selection: $viewModel.type,
               label: Text("Goal Type")){
          ForEach( GoalType.allCases, id: \.self) { type in
            Text(type.rawValue).tag(type)
          }
        }
        Group {
        }
      }
    }
}
