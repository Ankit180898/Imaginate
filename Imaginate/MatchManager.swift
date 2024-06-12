//
//  MatchManager.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import Foundation

class MatchManager:ObservableObject{
    @Published var inGame = false
    @Published var isGameOver = false
    @Published var authenticationState = PlayerAuthState.autenticating
    
    @Published var currentlyDrawing = true
    @Published var drawPrompt = ""
    @Published var pastGuess = [PastGuess]()
    
    @Published var score = 0
    @Published var remainingTime = maxRemainingTime
    
    
}
