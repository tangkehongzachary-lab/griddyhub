import SwiftUI

// Blank page shown when a box is tapped
struct EmptyPageView: View {
    var body: some View {
        Color.white
            .ignoresSafeArea()
    }
}

struct GawkgwakView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Text("whats ths?")
                    .font(.title)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 4), spacing: 10) {
                    ForEach(0..<20, id: \.self) { _ in
                        NavigationLink(destination: EmptyPageView()) {
                            Rectangle()
                                .fill(Color.blue.opacity(0.3))
                                .frame(height: 50)
                        }
                    }
                }
                
                Button("Close") {
                    dismiss()
                }
                .padding(.top)
            }
            .padding()
        }
    }
}

#Preview {
    GawkgwakView()
}
