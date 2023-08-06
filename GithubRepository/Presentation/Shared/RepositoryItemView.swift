import SwiftUI

struct RepositoryItemView: View {
	var repository: Repository
	
    var body: some View {
			VStack(alignment: .leading, spacing: 5) {
				Text(repository.name
					.replacingOccurrences(of: "_", with: " ")
					.replacingOccurrences(of: "-", with: " ")
					.capitalized
				)
				Text(repository.description ?? "")
					.font(.caption)
					.foregroundColor(.secondary)
					.lineLimit(3)
			}
    }
}
