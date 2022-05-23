//
//  ModelView.swift
//  SwiftJsone_2
//
//  Created by admin on 18.05.2022.
//

import Foundation
import Swift

struct Course: Codable, Hashable {
    let name: String
    let image: String
    
    
}
class ViewModel: ObservableObject {
    @Published var courses: [Course] = []
    
    func fetch() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php")else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,
            error in
            guard let data = data, error == nil else{return}
            
            do {
                let corses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    self?.courses = corses
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}

