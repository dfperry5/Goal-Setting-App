//
//  GoalDetails.swift
//  Resolute
//
//  Created by Dylan Perry on 1/24/21.
//

import SwiftUI

struct GoalDetails {
  
  @EnvironmentObject
  var viewModel: ViewModel
  
  @State
  private var editMode: EditMode = .inactive
  
  @State
  var draftGoal: Goal = Goal.empty

  
  @State
  var testString = "Test"
}

extension GoalDetails {
  private func shareGoal(){
    print("Share this goal")
  }
}

extension GoalDetails: View {
    var body: some View {
      VStack {
        HStack {
          Text("Goal Details")
            .font(.title2)
            .padding()
          if self.editMode != .active {
            Button(action: shareGoal) {
              Image(systemName: "square.and.arrow.up.fill")
            }
          }
         
        }
        
        
        Divider()
        
        if self.editMode == .active {
          EditGoal(goal: $draftGoal)
            .onAppear {
              draftGoal = viewModel.goal
            }
            .onDisappear {
              viewModel.goal = draftGoal
            }
        } else {
          Details(goal: viewModel.goal)
        }
      }
      .navigationBarTitle(viewModel.goal.name)
      .navigationBarItems(trailing: EditButton())
      .environment(\.editMode, $editMode)
    }
}

extension GoalDetails {
  func firstView() -> AnyView {
    if self.editMode == .active {
      return AnyView(TextField("Text:", text: self.$testString))
    }
    return AnyView(Text(testString))
  }
}

struct GoalDetails_Previews: PreviewProvider {
    static var previews: some View {
      let goal =  Goal(id: UUID(), name: "Run a 5k", description: "In less than 30 minutes, by June 19, 2021", isActive: true, targettedCompletion: Date())
      let viewModel = GoalDetails.ViewModel(goal: goal)
      return GoalDetails().environmentObject(viewModel)
    }
}
