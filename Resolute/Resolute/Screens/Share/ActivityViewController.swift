//
//  ActivityViewController.swift
//  Resolute
//
//  Created by Dylan Perry on 2/6/21.
//

import SwiftUI
import UIKit

struct ActivityViewController: UIViewControllerRepresentable {
  var activityItems: [Any]
  var applicationActivities: [UIActivity]? = nil
  var completionHandler: ((UIActivity.ActivityType?, Bool, [Any]?, Error?) -> Void)? = nil
  
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewController>) -> UIActivityViewController {
    let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
    controller.completionWithItemsHandler = completionHandler
    return controller
  }
  
  func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityViewController>) {}
  
  private func execute(activity: UIActivity.ActivityType?, completed: Bool, returnedItems: [Any]?, activityError: Error?) {
    print("Woohoo")
  }
  
}
