//
//  File.swift
//  
//
//  Created by Abdul Chathil on 12/8/20.
//

import Core
import Game

typealias FakeGameInteractor = Interactor<Int32, GamesModel, GetGameRepository<FakeGetGameLocalDataSource, FakeGetGameRemoteDataSource, GameTransformer>>
