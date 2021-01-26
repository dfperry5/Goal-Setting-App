import SwiftUI

extension Details {
  struct Row: View, Identifiable {
    let id: UUID = UUID()
    let title: String
    let value: String
    
    let columns: [GridItem] = [
      GridItem(.flexible(minimum: 25), spacing: 16, alignment: .leading),
      GridItem(.flexible(minimum: 150), alignment: .leading)
    ]
    
    var body: some View {
      Section {
        LazyVGrid(columns: columns) {
          Text(title)
            .bold()
          Text(value)
        }
        Divider()
      }
    }
  }
}
