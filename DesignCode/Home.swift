//
//  Home.swift
//  DesignCode
//
//  Created by 姚熙 on 2022/3/29.
//

import SwiftUI

struct Home: View {
    
    var menuItems = ["My Account", "Billing", "Team", "Sign out"]
    var menu = menuData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
//            MenuRow(image: "person.crop.circle", text: "My Account")
//            MenuRow(image: "creditcard", text: "Billing")
//            MenuRow(image: "person.2", text: "Team")
//            MenuRow(image: "arrow.uturn.down", text: "Sign out")
            
            ForEach(menu) { item in
                MenuRow(image: item.icon, text: item.title)
            }
            Spacer()
        }
        .padding(.top, 20)
        .padding(30)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing, 60)
        .shadow(radius: 20)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct MenuRow: View {
    var image = "creditcard"
    var text = "My Account"
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            Text(text)
                .font(.headline)
            Spacer()
        }
    }
}

struct Menu: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
}

let menuData = [
    Menu(title: "My Account", icon: "person.crop.circle"),
    Menu(title: "Billing", icon: "creditcard"),
    Menu(title: "Team", icon: "person.2"),
    Menu(title: "Sign out", icon: "arrow.uturn.down"),
]
