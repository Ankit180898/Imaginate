//
//  GameView.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var drawingGuess = ""
    @State var eraserEnabled = ""
    
    func makeGuess(){
        //TODO: submit the guess
        
    }

    var body: some View {
        ZStack{
            GeometryReader {
                _ in
                Image(matchManager.currentlyDrawing ? "drawBg" : "guesserBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .scaleEffect(1.2)
                VStack{
                    topBar
                    
                }
            }
        }
       
    }
    
    var topBar: some View{
        ZStack{
            HStack{
                Button(action: {
                    //Todo: disconnect from the game
                    
                }, label: {
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .font(.largeTitle)
                        .tint(Color(matchManager.currentlyDrawing ? "primaryYellow" : "primaryPurple"))
                })
                Spacer()
            
                Label("\(matchManager.remainingTime)", systemImage: "clock.fill")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color(Color(matchManager.currentlyDrawing ? "primaryYellow" : "primaryPurple")))
            }.padding(.horizontal,20)
        }
        .padding(.vertical,15)
    }
}

#Preview {
    GameView(matchManager: MatchManager())
}
