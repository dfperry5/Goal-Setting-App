//
//  EditGoal.swift
//  Resolute
//
//  Created by Dylan Perry on 1/25/21.
//

import SwiftUI

struct EditGoal {
  @Binding
  var goal: Goal

}

extension EditGoal: View {
  var body: some View {
    ScrollView {
      Group {
        titleSection
        descriptionSection
        isActiveSection
        datePickerSection
      }
      .padding()
    }
  }
}

struct EditGoal_Previews: PreviewProvider {
    static var previews: some View {
      let goal = Binding.constant( Goal.empty)
        
      return EditGoal(goal: goal)
    }
}
