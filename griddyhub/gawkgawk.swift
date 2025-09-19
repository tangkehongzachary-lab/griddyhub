import SwiftUI

struct GawkGawkView: View {
    @Environment(\.dismiss) var dismiss
    
    // 4 clue buttons with their text
    let clueButtons: [Int: String] = [
        2: "Clue 1: 3rd digit of Marina Bay Sands opening year + towers.",
        7: "Clue 2: OCBC Centre floors - Raffles City towers.",
        11: "Clue 3: 3rd digit of Esplanade Theatre year - Merlion statues.",
        16: "Clue 4: Letters in 'Singapore Flyer' ÷ 2."
    ]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                Text("🔒 Hidden Clues 🔒")
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
