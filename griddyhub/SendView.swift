import SwiftUI

struct SendView: View {
    @State var TextText: String = ""
    @State var RNAText: String = "No Mail"
    let specificString: String = "2ij8mhE"
    var body: some View {

        Text("Mail system is down as of now")
        VStack {
            TextField("To", text: $TextText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Message", text: $TextText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Send") {
                print(RNAText)
                if TextText == specificString {
                    func MessageText() {
                        RNAText = "Hello, it appears you are trying to sabotage me. A clue is [insert clue here]"
                    }
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
