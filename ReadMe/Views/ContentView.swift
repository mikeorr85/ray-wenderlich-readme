//
//  ContentView.swift
//  ReadMe
//
//  Created by Orr, Mike on 4/12/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List(Library().sortedBooks, id: \.title) { book in
        BookRow(book: book)
      }
      .navigationTitle("My Title")
    }
  }
}

struct BookRow: View {
  let book: Book
  var body: some View {
    NavigationLink(
      destination: DetailView(book: book)) {
      HStack {
        Book.Image(title: book.title, size: 80)
        TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3)
          .lineLimit(1)
      }
    }
    .padding(.vertical)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
