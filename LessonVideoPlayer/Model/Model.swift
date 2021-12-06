//
//  Model.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/5/21.
//

import Foundation

struct Lesson: Decodable, Identifiable {
    
    var id: Int
    var title: String
    var url: String
    
}
