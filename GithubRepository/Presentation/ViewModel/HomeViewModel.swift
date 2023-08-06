import Foundation

class HomeViewModel: ObservableObject {
	
	private var networkService: Network
	@Published var repositories: [Repository]?
	@Published var user: User?
	
	
	init(networkService: Network) {
		self.networkService = networkService
		
		
		networkService.getUser { user in
			self.user = user
		}
		
		
		networkService.getRepositories { repositories in
			self.repositories = repositories
		}
	}
	
	var repository: Repository {
		self.repositories![0]
	}
}
