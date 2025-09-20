import SwiftUI

struct sussyfile: View {
    @State private var code = ""
    @State private var unlocked = false
    @State private var whoa = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Enter vault code:")
                TextField("Enter code", text: $code)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Unlock") {
                    if code == "5960" { // vault code
                        unlocked = true
                    } else if code == "Context" { // secret code
                        whoa = true
                    }
                }
                
                // NavigationLinks that trigger when the states change
                NavigationLink("", destination: incoinvault(), isActive: $unlocked)
                NavigationLink("", destination: secret(), isActive: $whoa)
            }
            .padding()
        }
    }
}

#Preview {
    sussyfile()
}
