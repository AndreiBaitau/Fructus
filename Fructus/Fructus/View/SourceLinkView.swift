//
//  SourseLinkView.swift
//  Fructus
//
//  Created by Андрей Баитов on 6.06.21.
//

import SwiftUI

struct SourseLinkView: View {
    //MARK: - PROPERTIES
    
   
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                
            }
            .font(.footnote)
            
            
        }
    }
}

struct SourseLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourseLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
