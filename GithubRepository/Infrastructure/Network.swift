import Foundation

class Network {
	
	func getUser(_ completion: @escaping(_ user: User) -> ()) {
		let url = URL(string: "https://api.github.com/users/fmmalta")
		
		URLSession.shared.dataTask(with: url!) { (data, response, error) in
			let decodedUser = try! JSONDecoder().decode(User.self, from: data!)
			completion(decodedUser)
		}.resume()
	}
	
	func getRepositories(_ completion: @escaping(_ repos: [Repository]) -> ()) {
		let url = URL(string: "https://api.github.com/users/fmmalta/repos")
		
		URLSession.shared.dataTask(with: url!) { data, response, error in
			
			
			let decodedList = try! JSONDecoder().decode([Repository].self, from: data!)
			completion(decodedList)
		}.resume()
	}
}

