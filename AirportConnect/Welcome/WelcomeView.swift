//
//  WelcomeView.swift
//  AirportConnect
//
//  Created by Viet Nguyen Dinh on 19/07/2023.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Text("Airport Connect")
                    .font(.custom("Futura", size:40))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                Spacer()
                
                VStack {
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 180, height: 180)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                        
                        Image("airport")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 120)
                            .padding(20)
                    }
                    .padding(.top, 10)
                }
                
                Text("Connect yourself to the world of aviation")
                    .font(.custom("Futura", size:18))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Spacer()
                
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    Text("Get Started")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(30)
                        .padding()
                }
                
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
