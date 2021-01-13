//
//  File.swift
//  
//
//  Created by Abdul Chathil on 12/1/20.
//

import Core

public typealias GameInteractor = Interactor<Int32, GamesModel, GetGameRepository<GetGameLocalDataSource, GetGameRemoteDataSource, GameTransformer>>
