
import SwiftUI

struct SendView: View {
    @State private var inputText: String = ""
    let specificString: String = "2ij8mhE"

    var body: some View {
        Text("Sending system is down as of now")
        VStack {
            TextField("To", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Message", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Send") {
                if inputText == specificString {

                    // Perform actions for a match
                } else {
                   
                    // Perform actions for a mismatch
                }
            }
        }
    }
}
#Preview {
    SendView()
}

}
