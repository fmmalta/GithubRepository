import SwiftUI

@main
struct GithubRepositoryApp: App {
	var body: some Scene {
		WindowGroup {
			HomeView()
				.environmentObject(HomeViewModel(networkService: Network()))
		}
	}
}
