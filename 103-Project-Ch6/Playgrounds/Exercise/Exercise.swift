//
//  Exercise.swift
//  103-Project-Ch6
//
//  Created by jeffrey lullen on 3/5/26.
//

import SwiftUI

struct Exercise: View {
    
    @State var favoriteMovies: Set<String> = ["movie", "scary"]
    @State var movie: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                List(Array(favoriteMovies), id: \.self){ movieList in
                    Text(movieList)
                }
                HStack{
                    TextField("Add Movie", text: $movie)
                        .padding()
                    Button{
                        addMovie()
                    } label: {
                        Image(systemName: "plus.circle")
                            .padding()
                            .font(.title)
                            .foregroundStyle(.blue)
                    }
                }
                .padding(4)
            }
            .navigationTitle("Movie List")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    func addMovie(){
        favoriteMovies.insert(movie)
        movie = ""
    }
}

#Preview{
    Exercise()
}
