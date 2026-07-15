import Inject
import SwiftUI

struct ContentView: View {
	@ObserveInjection var redraw

	@State private var counter = 0

	var body: some View {
		VStack(spacing: 20) {
			Text("Counter2: \(counter)")
				.font(.headline)

			Button("Increment") {
				counter += 1
			}
			.buttonStyle(.borderedProminent)
			.highPriorityGesture(
				LongPressGesture(minimumDuration: 1).onEnded { _ in
					counter = 0
				})
		}
		.padding()
		.enableInjection()
	}
}
