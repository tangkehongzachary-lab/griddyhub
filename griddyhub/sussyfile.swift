import SwiftUI

struct sussyfile: View {
    @State private var code = ""
    @State private var unlocked = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if unlocked {
                    incoinvault() // Navigate to separate view
                } else {
                    Text("Enter vault code:")
                    TextField("Enter code", text: $code)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button("Unlock") {
                        if code == "1234" { // your secret code
                            unlocked = true
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    sussyfile()
}
