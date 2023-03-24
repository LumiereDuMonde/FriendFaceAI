//
//  UserDetailView.swift
//  FriendFace
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.largeTitle)
                .padding(.bottom)
            Text("Age: \(user.age)")
            Text("Company: \(user.company)")
            Text("Email: \(user.email)")
            Text("Address: \(user.address)")
            Text("About: \(user.about)")
                .padding(.vertical)
            Text("Friends:").font(.headline)
            List(user.friends) { friend in
                Text(friend.name)
            }
        }
        .padding()
    }
}

//struct UserDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailView()
//    }
//}
