//
//  datamodel.swift
//  MovieApp2
//
//  Created by azizah ahmed alshami on 30/08/1444 AH.
//

import Foundation

struct MoviesData: Codable {
let id, movieName: String
let moviePoster: String
let movieStory: String
let movieDuration: String
let movieGenres: [String]
let movieWatcherType: String
let movieIMDBRate: Double
let movieLanguage: String

enum CodingKeys: String, CodingKey {
case id
case movieName = "movie_name"
case moviePoster = "movie_poster"
case movieStory = "movie_story"
case movieDuration = "movie_duration"
case movieGenres = "movie_genres"
case movieWatcherType = "movie_watcher_type"
case movieIMDBRate = "movie_IMDb_rate"
case movieLanguage = "movie_language"

}
}

struct Actors: Codable {
let id, actorName: String
let actorImage: String

enum CodingKeys: String, CodingKey {
case id
case actorName = "actor_name"
case actorImage = "actor_image"
}
}

//typealias Welcome = [Actors]

struct Director: Codable {
let id, directorName: String
let directorImage: String

enum CodingKeys: String, CodingKey {
case id
case directorName = "director_name"
case directorImage = "director_image"
}
}

struct Reviewer: Codable {
let id: String
let rate: Int
let reviewText, createdAt, movieID, userID: String

enum CodingKeys: String, CodingKey {
    case id, rate
    case reviewText = "review_text"
    case createdAt = "created_at"
    case movieID = "movie_id"
    case userID = "user_id"
}
}

