//
//  FruitHeaderBView.swift
//  Fructus
//
//  Created by Андрей Баитов on 6.06.21.
//

import SwiftUI

struct FruitHeaderBView: View {
    //MARK: - PROPERTIES
    var fruit:Fruit
    @State private var isAnimatingImage:Bool = false
    //MARK: - BODY
    var body: some View {
        ZStack(){

            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottomTrailing)
            

            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8 )
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        }//ZStack
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderBView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderBView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
