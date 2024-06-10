//
//  MenuView.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchManager: MatchManager
    
    var body: some View {
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
                Spacer()
                Button {
                    print("adad")
                    
                } label: {
                    Text("PLAY")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)

                }
                .disabled(matchManager.authenticationState != .authenticated || matchManager.inGame)
                .padding(.vertical,20)
                .padding(.horizontal,100)
                .background(
                    Capsule(style: .circular)
                        .fill(matchManager.authenticationState != .authenticated || matchManager.inGame ?
                            .gray : Color("playBtn")
                        )
                )
                Text(matchManager.authenticationState.rawValue)
                    .font(.headline.weight(.semibold))
                    .foregroundColor(Color("primaryYellow"))
                    .padding()
                
                Spacer()
                    

            }
            .background(
            Image("menuBg")
                .resizable()
                .scaledToFill()
                .scaleEffect(1.2)

            )
            .ignoresSafeArea()
        
            }
    
       
        
        
        
}

#Preview {
    MenuView(matchManager: MatchManager())
}
