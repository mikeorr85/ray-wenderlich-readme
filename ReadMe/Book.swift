//
//  Book.swift
//  ReadMe
//
//  Created by Orr, Mike on 4/12/22.
//

struct Book: Hashable {
  let title: String
  let author: String
  
  init(title: String = "Title", author: String = "Author") {
    self.title = title
    self.author = author
  }
}
