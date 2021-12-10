//
//  ViewModel.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/5/21.
//

import Foundation

class ViewModel: ObservableObject {
    
//    Initialize variable lessons to be an empty array of Lesson to parse with data from data.json.
    
    @Published var lessons = [Lesson]()
    
    @Published var currentVideo: Lesson?
    
    var currentVideoIndex: Int = 0
    
//    MARK: - Data Method
    
    init() {
        
        getRemoteData()
        
    }
    
    func getRemoteData() {
        
        // String path
        let urlString = "https://codewithchris.github.io/Module5Challenge/Data.json"
        
        // Create a url object
        let url = URL(string: urlString)
        
        guard url != nil else {
            // Couldn't create url
            return
        }
        
        // Create a URLRequest object
        let request = URLRequest(url: url!)
        
        // Get the session and kick off the task
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            // Check if there's an error
            guard error == nil else {
                // There was an error
                return
            }
            
            do {
                // Create json decoder
                let decoder = JSONDecoder()
            
                // Decode
                let lessons = try decoder.decode([Lesson].self, from: data!)
                
                DispatchQueue.main.async {
                    
                    // Append parsed lessons into lessons property
                    self.lessons += lessons
                }
                
               
            }
            catch {
                // Couldn't parse json
            }
        }
        
        // Kick off data task
        dataTask.resume()
        
    }
    
    func nextVideo() {
        
        currentVideoIndex += 1
        
        if currentVideoIndex < currentVideo!.title.count {
            
            currentVideo = currentVideo!.title[currentVideoIndex]
            
        }
        
    }
    
}
