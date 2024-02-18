//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Muhammad Abdul Ghani on 18/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 140)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                HStack {
                    WeatherDayView(day: "TUE", weatherImage: "cloud.sun.fill", temperature: 76)
                    
                    WeatherDayView(day: "WED", weatherImage: "sun.max.fill", temperature: 76)
                    
                    WeatherDayView(day: "THU", weatherImage: "wind.snow", temperature: 76)
                    
                    WeatherDayView(day: "FRI", weatherImage: "sunset.fill", temperature: 76)
                    
                    WeatherDayView(day: "SAT", weatherImage: "snow", temperature: 76)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var day: String
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 15, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
