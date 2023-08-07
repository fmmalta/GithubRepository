import SwiftUI

struct ProfileTitleView: View {
	@State var scale = 1.0
	
	var user: User
	
	var body: some View {
		VStack {
			AsyncImage(url: URL(string: user.avatar_url)) { image in
				image
					.resizable()
					.frame(width: 150, height: 150)
					.clipShape(
						RoundedRectangle(
						cornerRadius: 200,
						style: .continuous)
					)
					.background(
						RoundedRectangle(
						cornerRadius: 200.0,
						style: .continuous)
						.shadow(color: .black.opacity(0.4), radius: 5.0)
					)
					.scaleEffect(scale)
					.onAppear {
						let baseAnimation = Animation.easeInOut(duration: 1.5)
						let repeated = baseAnimation.repeatForever(autoreverses: true)
						
						withAnimation(repeated) {
							scale = 0.95
						}
					}
			} placeholder: {
				ProgressView()
			}
			
			Text(user.name)
				.font(.title)
			
			Text(user.blog)
				.font(.caption)
				.foregroundColor(.secondary)
		}
		
	}
}
