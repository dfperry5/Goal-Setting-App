import SwiftUI

extension EditGoal {
  var titleSection: some View {
    Section {
      LazyVGrid(columns: EditGoal.columns) {
        Text("Goal Title")
          .bold()
        TextField("Goal Title", text: $goal.name)
      }
      Divider()
    }
  }
  
  var descriptionSection: some View {
    Section {
      LazyVGrid(columns: EditGoal.columns) {
        Text("Description")
          .bold()
        TextEditor(text: $goal.description)
          .frame(minHeight: 75)
      }
      Divider()
    }
  }
  
  var isActiveSection: some View {
    Section {
      LazyVGrid(columns: EditGoal.columns) {
        Text("Is Active")
          .bold()
        Toggle("", isOn: $goal.isActive)
          .labelsHidden()
      }
      Divider()
    }
  }
  
  var datePickerSection: some View {
    Section {
      LazyVGrid(columns: EditGoal.columns) {
        Text("Targetted Completion")
          .bold()
        DatePicker("", selection: $goal.targettedCompletion, displayedComponents: [.date])
          .labelsHidden()
      }
      Divider()
    }
  }
}
