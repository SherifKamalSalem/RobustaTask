//
//  User.swift
//  RobustaTask
//
//  Created by sherif kamal on 15/04/2021.
//

import Foundation

// MARK: - Owner
struct Owner: Codable {
    let login: String
    let id: Int
    let nodeID: String
    let avatarURL: String
    let gravatarID: String
    let url, htmlURL, followersURL: String
    let followingURL, gistsURL, starredURL: String
    let subscriptionsURL, organizationsURL, reposURL: String
    let eventsURL: String
    let receivedEventsURL: String
    let type: UserType
    let siteAdmin: Bool
}

enum UserType: String {
    case organization = "Organization"
    case user = "User"
}
