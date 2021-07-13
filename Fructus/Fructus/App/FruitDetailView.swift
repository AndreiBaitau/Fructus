//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Андрей Баитов on 6.06.21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit:Fruit
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    //HEADER
                    FruitHeaderBView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                    SourseLinkView()
                        .padding(.top,10)
                        .padding(.bottom,40)
                    }//:VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }//:VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//:ScrollView
            .edgesIgnoringSafeArea(.top)
        }//:NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}



//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}