//
//  DisplayRepositoriesList.swift
//  RobustaTask
//
//  Created by sherif kamal on 15/04/2021.
//

import Foundation

typealias DisplayRepositoriesUseCaseCompletionHandler = (_ repositories: Result<[Repository], Error>) -> Void

protocol DisplayRepositoriesUseCase {
    func displayRepositories(name: String, pageNumber: Int, countPerPage: Int, completionHandler: @escaping DisplayRepositoriesUseCaseCompletionHandler)
}

class DisplayRepositoriesUseCaseImplementation: DisplayRepositoriesUseCase {

    let repositoriesGetway: RepositoriesGetway

    init(repositoriesGetway: RepositoriesGetway) {
        self.repositoriesGetway = repositoriesGetway
    }

    func displayRepositories(name: String, pageNumber: Int, countPerPage: Int, completionHandler: @escaping DisplayRepositoriesUseCaseCompletionHandler) {
        self.repositoriesGetway.fetchRepositories { (result) in
            completionHandler(result)
        }
    }
}
