import SwiftUI

// MARK: - Models
struct Contact: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let isThief: Bool
}

struct ChatMessage: Identifiable {
    let id = UUID()
    let sender: String
    let text: String
}

struct ContactView: View {
    let contacts: [Contact] = {
        let names = ["Joshua (shvvn)", "Dhanush", "Mr Chua", "Mr Yeo", "Kesler", "Kevin", "Kai", "Ms Ross"]
        let sortedNames = names.sorted()
        return sortedNames.map { Contact(name: $0, isThief: $0 == "Ms ross") }
    }()
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(contact.name, value: contact)
            }
            .navigationTitle("Contacts")
            .navigationDestination(for: Contact.self) { contact in
                ChatView(contact: contact)
            }
        }
    }
}

struct ChatView: View {
    let contact: Contact
    @State private var messages: [ChatMessage] = []
    @State private var inputText = ""
    @State private var showGawkGawk = false
    @State private var showGawkgwak = false

    var body: some View {
        VStack {
            List(messages) { message in
                HStack {
                    if message.sender == contact.name && message.text == "Hello" {
                        Text("\(message.sender): \(message.text)")
                            .contextMenu {
                                Button("shewasafairy") {
                                    if contact.isThief {
                                        showGawkGawk = true // Mrs ross → GawkGawkView
                                    } else {
                                        showGawkgwak = true // Everyone else → GawkgwakView
                                    }
                                }
                            }
                    } else if message.sender == contact.name {
                        Text("\(message.sender): \(message.text)")
                    } else {
                        Text("You: \(message.text)")
                    }
                }
            }
            
            HStack {
                TextField("Type a message...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Send") {
                    if !inputText.isEmpty {
                        messages.append(ChatMessage(sender: "You", text: inputText))
                        inputText = ""
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle(contact.name)
        .onAppear {
            if messages.isEmpty {
                messages.append(ChatMessage(sender: contact.name, text: "Hello"))
            }
        }
        // Present the correct view based on contact
        .sheet(isPresented: $showGawkGawk) {
            GawkGawkView()
        }
        .sheet(isPresented: $showGawkgwak) {
            GawkgwakView()
        }
    }
}

#Preview {
    ContactView()
}
