//
//  AddGoal.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI


struct AddGoal {
  @State
  private var goalInformation = AddGoal.GoalInformation.ViewModel(goalName: "", type: .other, description: "")
}
extension AddGoal: View {
    var body: some View {
      NavigationView {
        Form {
          GoalInformation(viewModel: $goalInformation)
          Section(header: Text("Goal Description")) {
            TextEditor(text: $goalInformation.description)
          }
          Section {
            Button("Submit") {
              buttonClicked()
            }
          }
        }
        .navigationBarTitle(Text("Add A Goal"))
      }
    }
}

extension AddGoal {
  func buttonClicked() {
    print(goalInformation)
  }
}

struct AddGoal_Previews: PreviewProvider {
    static var previews: some View {
        AddGoal()
    }
}
