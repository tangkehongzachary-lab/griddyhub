import SwiftUI

struct GawkGawkView: View {
    @Environment(\.dismiss) var dismiss
    
    // Clue button positions and text (fixed at 5, 6, 9, 10)
    let clueButtons: [Int: String] = [
        5: "Clue 1: 3rd digit of Marina Bay Sands opening year + towers.(+4)",
        6: "Clue 2: OCBC Centre floors - Raffles City towers.(+7)",
        9: "Clue 3: 3rd digit of Esplanade Theatre year - Merlion statues.(times 2)",
        10: "Clue 4: Letters in 'Singapore Flyer'(-4)."
    ]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Text("whats this?")
                    .font(.title)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 4), spacing: 10) {
                    ForEach(0..<20, id: \.self) { index in
                        NavigationLink {
                            if let clueText = clueButtons[index] {
                                ClueView(clueText: clueText)
                            } else {
                                BlankView()
                            }
                        } label: {
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

struct ClueView: View {
    let clueText: String
    
    var body: some View {
        VStack {
            Text("🔑 Clue 🔑")
                .font(.title)
                .padding()
            Text(clueText)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .padding()
    }
}

struct BlankView: View {
    var body: some View {
        Color.white
            .ignoresSafeArea()
    }
}

#Preview {
    GawkGawkView()
}
