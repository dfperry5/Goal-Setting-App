//
//  ResoluteAppContainer.swift
//  Resolute
//
//  Created by Dylan Perry on 12/26/20.
//

import SwiftUI

struct ResoluteAppContainer {
  let viewModel: ViewModel
  
  @State
  var homeViewModel: Home.ViewModel? = nil
 
  @EnvironmentObject
  var dependencies: Dependencies

}

extension ResoluteAppContainer: View {
    var body: some View {
      NavigationView {
        Home(viewModel: homeViewModel)
          .navigationBarTitle(viewModel.title, displayMode: .inline)
      }
      .onAppear(perform: getGoals)
    }
}

struct ResoluteAppContainer_Previews: PreviewProvider {
    static var previews: some View {
      let viewModel = ResoluteAppContainer.ViewModel(title: "Resolute")

        ResoluteAppContainer(viewModel: viewModel)
    }
}
