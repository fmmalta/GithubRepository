import Foundation

struct User: Codable {
	var id: Int
	var name: String
	var avatar_url: String
	var repos_url: String
	var blog: String
	
//	init(id: Int, name: String, avatar_url: String, repos_url: String, blog: String) {
//		self.id = id
//		self.name = name
//		self.avatar_url = avatar_url
//		self.repos_url = repos_url
//		self.blog = blog
//	}
}
