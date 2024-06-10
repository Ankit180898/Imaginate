//
//  GameOverView.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import SwiftUI

struct GameOverView: View {
    @ObservedObject var matchManager: MatchManager

    var body: some View {
        VStack{
            Spacer()
            Image("gameOver")
                .resizable()
                .scaledToFit()
                .padding(30)
            Text("Score: \(matchManager.score)")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("primaryYellow"))
            Spacer()
            
            Button {
                print("adad")
                
            } label: {
                Text("Menu")
                    .foregroundColor(Color("menuBtn"))
                    .brightness(-0.4)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)

            }
            .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
            .padding()
            .padding(.horizontal,50)
            .background(
                Capsule(style: .circular)
                    .fill(Color("menuBtn"))
                    
            )
           
            
            Spacer()
                

        }
        .background(
        Image("gameOverBg")
            .resizable()
            .scaledToFill()
            .scaleEffect(1.2)

        )
        .ignoresSafeArea()
    
        

    }
}

#Preview {
    GameOverView(matchManager: MatchManager())
}
