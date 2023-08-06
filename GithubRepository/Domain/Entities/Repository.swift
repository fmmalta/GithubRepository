import Foundation

struct Repository: Identifiable, Codable, Hashable {
	var id: Int
	var name: String
	var description: String?
	var updated_at: String
	
//	init(id: Int, name: String, description: String, updated_at: String) {
//		self.id = id
//		self.name = name
//		self.description = description
//		self.updated_at = updated_at
//	}
}
