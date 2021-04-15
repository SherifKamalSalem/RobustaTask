//
//  RepositoriesGetway.swift
//  RobustaTask
//
//  Created by sherif kamal on 15/04/2021.
//

import Foundation

typealias FetchRepositoriesEntityGatewayCompletionHandler = (_ repositories: Result<[Repository], Error>) -> Void

protocol RepositoriesGetway {
    func fetchRepositories(completionHandler: @escaping FetchRepositoriesEntityGatewayCompletionHandler)
}
