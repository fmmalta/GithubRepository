import SwiftUI

struct RepositoryDetail: View {
	var repository: Repository
	
    var body: some View {
			VStack(spacing: 15) {
				Text(repository.name
					.replacingOccurrences(of: "-", with: " ")
					.replacingOccurrences(of: "_", with: " ")
					.capitalized)
					.font(.title)
				
				Text(repository.description ?? "")
			}
    }
}
