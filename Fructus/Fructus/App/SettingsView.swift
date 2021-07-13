//
//  SettingsView.swift
//  Fructus
//
//  Created by Андрей Баитов on 8.06.21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
   
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                
                    GroupBox(
                        label:
                       SettingsLabelView(labelText:
                        "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("This app is made by Andrei Baitau learning Udemy course ")
                                .font(.footnote)
                        }//:HSTACK
                }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                    label: SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")
                    )
                    {
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will se the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if (isOnboarding) {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                        )
                    }
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(label:
                        SettingsLabelView(labelText: "APPLICATION", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content:"Andrei Baitau")
                      
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        
                        SettingsRowView(name: "Feedback", linklabel: "Instagram", linkDestination: "www.instagram.com/baitov.andrew/")
                        
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        
                        SettingsRowView(name: "Version", content: "1.0")
                        
                        
                        
                    }//:BOX
                
                    
                
                    
                
                }//:VSTACK
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                                  }, label: {
                                    Image(systemName: "xmark")
                             })
                )
                .padding()
               
            }//:SCROLL
        }//:NAVIGATION
        
        
        
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
