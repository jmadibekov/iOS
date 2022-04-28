//
//  EmojiArt_2021App.swift
//  EmojiArt_2021
//
//  Created by HY Chuang on 2021/6/13.
//

import SwiftUI

@main
struct EmojiArt_2021App: App {
    
    //@StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmijiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
