import SwiftUI

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
        let names = ["Aria", "Dante", "Elena", "Finn", "Greta", "Hugo", "Iris", "Juno", "Kai"]
        var allNames = names
        allNames.insert("Kesler", at: Int.random(in: 0...names.count))
        return allNames.map { Contact(name: $0, isThief: $0 == "Kesler") }
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
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add Contact") {}
                }
            }
        }
    }
}

struct ChatView: View {
    let contact: Contact
    @State private var messages: [ChatMessage] = []
    @State private var inputText = ""
    @State private var showSecret = false
    
    var body: some View {
        VStack {
            List(messages) { message in
                HStack {
                    if message.sender == contact.name {
                        if contact.isThief && message.text == "Hello" {
                            Text("\(message.sender): \(message.text)")
                                .contextMenu {
                                    Button("shewasafairy") {
                                        showSecret = true
                                    }
                                }
                        } else {
                            Text("\(message.sender): \(message.text)")
                        }
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
            messages.append(ChatMessage(sender: contact.name, text: "Hello"))
        }
        .sheet(isPresented: $showSecret) {
            GawkGawkView()
        }
    }
}

#Preview {
    ContactView()
}
