//
//  FavoriteMoviesList.swift
//  103-Project-c8
//
//  Created by Oscar Brito on 11/04/26.
//


import SwiftUI

struct FavoriteMoviesList: View {
    
    @State private var movieList: Set<String> = ["La La Land", "Everything Everywhere All At Once"]
    @State private var newItem = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                List(movieList.sorted(), id: \.self){ movie in
                    Text(movie)
                
                }
                
                HStack{
                    TextField("Add a new movie", text: $newItem)
                        .padding()
                    Button{
                        if !newItem.isEmpty{
                            movieList.insert(newItem)
                            newItem = ""
                        }
                    } label: {
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.largeTitle)
                    }

                    
                }
            }
            
        }
        .navigationTitle(Text("Favorite Movies"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FavoriteMoviesList()
}

