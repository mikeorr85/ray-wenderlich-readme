//
//  DetailView.swift
//  ReadMe
//
//  Created by Orr, Mike on 4/12/22.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct DetailView: View {
  let book: Book
  @Binding var image: Image?
  @State var showImagePicker = false
  
  var body: some View {
    VStack(alignment: .leading) {
      TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
      VStack {
        Book.Image(title: book.title)
        Button("Update Image…") {
          showImagePicker = true
        }
        .padding()
      Spacer()
    }
    .padding()
      .sheet(isPresented: $showImagePicker) {
        PHPickerViewController.View(image: $image)
      }
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(book: .init(), image: .constant(nil))
  }
}
