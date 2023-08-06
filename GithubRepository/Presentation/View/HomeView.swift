import SwiftUI

struct HomeView: View {
	@EnvironmentObject private var homeVM: HomeViewModel
	
	var body: some View {
		NavigationView {
			List {
				if let user = homeVM.user {
					ProfileTitleView(user: user)
						.frame(maxWidth: .infinity)
						.listRowSeparator(.hidden)
				}
				if let repositories = homeVM.repositories {
					var sortedByMostRecent = repositories.sorted {$0.updated_at > $1.updated_at}
					ForEach(sortedByMostRecent) { repository in
						NavigationLink {
							RepositoryDetail(repository: repository)
						} label: {
							RepositoryItemView(repository: repository)
						}
					}
				}
			}
			.navigationTitle("My Profile")
			}
		}
		
	}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
			.environmentObject(HomeViewModel(networkService: Network()))
	}
}
