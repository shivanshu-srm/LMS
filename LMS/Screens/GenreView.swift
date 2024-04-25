//
//  GenreView.swift
//  LMS
//
//  Created by shivanshu on 24/04/24.
//

import SwiftUI

struct GenreView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
            List {
                Section(header: HStack {
                    Text("Fantasy")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black) // Set color to black
                        .font(.system(size: 16)) // Set font size
                    
                }) {
                    BookCategoryRow(categoryName: "Fantasy")
                }
                Section(header: HStack {
                    Text("Horror")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black) // Set color to black
                        .font(.system(size: 16)) // Set font size
                    
                })  {
                    BookCategoryRow(categoryName: "Horror")
                }
                Section(header: HStack {
                    Text("Crime")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black) // Set color to black
                        .font(.system(size: 16)) // Set font size
                    
                })  {
                    BookCategoryRow(categoryName: "Crime")
                }
                Section(header: HStack {
                    Text("Fiction")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black) // Set color to black
                        .font(.system(size: 16)) // Set font size
                    
                })  {
                    BookCategoryRow(categoryName: "Fiction")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            // Ensure title is displayed inline
            .navigationBarItems(trailing:
                                    HStack(spacing: 20) { // Add HStack to align items horizontally
                Text("Categories")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color.black)
                    .offset(x:-63)
                
                NavigationLink(destination: Profile_Screen()){
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 24)) // Adjust the size of the profile icon
                        .foregroundColor(.black)
                }
                
                
            }
            )
        }
    }
    
}
    
    struct BookCategoryRow: View {
        var categoryName: String
        
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ForEach(0..<13) { index in
                        BookCard()
                    }
                }
                .padding(.vertical)
                .padding(.leading, 10)
            }
        }
    }
    
    struct BookCard: View {
        var body: some View {
            VStack {
                Image(systemName: "book")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                
                Text("Book Title")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                
                Text("Author Name")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
            }
            .frame(width: 120)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}


#Preview {
    GenreView()
}
