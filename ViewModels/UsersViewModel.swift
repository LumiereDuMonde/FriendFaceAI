//
//  UsersViewModel.swift
//  FriendFace
//


import Foundation

class UsersViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func fetchUsers() {
        guard users.isEmpty else { return } // Check if users array is empty to avoid repeated fetches
        
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            }
            
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            if let decodedData = try? decoder.decode([User].self, from: data) {
                DispatchQueue.main.async {
                    self.users = decodedData
                }
            }
        }.resume()
    }
}

