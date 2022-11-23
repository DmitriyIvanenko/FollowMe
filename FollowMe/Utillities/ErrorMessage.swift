//
//  ErrorMessage.swift
//  FollowMe
//
//  Created by Dmytro Ivanenko on 10.11.2022.
//

import Foundation

enum ErrorMessage: String, Error {
    
    case invalidUsername = "This username created an invalid request. Please try again!"
    case unableToComplete = "Unable to complete your request. Please check your internet conection!"
    case invalidResponse = "Invald response from the server. Please try again!"
    case invalidData = "The data recieved from the server is invalid. Please try again!"
    case unableToFavorite = "Error saving user to favorite. Please try again!"
    case alreadyInFavorites = "Already added to favorite!"
}
