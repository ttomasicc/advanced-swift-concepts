//
//  ContentView.swift
//  EmojiHunter
//
//  Created by FOI on 12.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State var searchQuery: String = ""
    @State var emojis: [Emoji] = []
    
    let baseURL = "https://emoji-api.com/emojis"
    let accessKey = "access_key=e51a0758f01cbf378fa12b0f8a54b667c78de1df"
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Search emoji", text: $searchQuery)
                            .onSubmit {
                                if searchQuery.count != 0 {
                                    Task {
                                        await fetchEmojis(by: searchQuery)
                                        searchQuery = ""
                                    }
                                }
                            }
                    }
                    ForEach(emojis) { emoji in
                        let emojiDisplay = String(
                            UnicodeScalar(
                                Int(emoji.codePoint.split(separator: " ")[0], radix: 16)!
                            )!
                        )
                        Text("\(emojiDisplay) \(emoji.unicodeName.capitalized)")
                    }
                }
            }
            .navigationTitle("Emoji Hunter")
        }
    }
    
    func fetchEmojis(by keywords: String) async -> Void {
        let keywordParam = keywords.split(separator: " ").joined(separator: "-")
        let fullUrl = "\(baseURL)?search=\(keywordParam)&\(accessKey)"
        
        guard let url = URL(string: fullUrl ) else {
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            emojis = try JSONDecoder().decode([Emoji].self, from: data)
        } catch {
            return
        }
    }
}

struct Emoji: Codable {
    let slug: String
    let character: String
    let unicodeName: String
    let codePoint: String
    let group: String
    let subGroup: String
}

extension Emoji: Identifiable {
    var id: String { return unicodeName }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
