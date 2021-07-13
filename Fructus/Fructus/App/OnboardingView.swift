//
//  OnbordingView.swift
//  Fructus
//
//  Created by Андрей Баитов on 28.05.21.
//

import SwiftUI
//MARK: - PROPERTIES

var fruits: [Fruit] = fruitsData

//MARK: - BODY
struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                
                FruitCardView(fruit: item)
               
            }//: LOOP
            
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}


//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
