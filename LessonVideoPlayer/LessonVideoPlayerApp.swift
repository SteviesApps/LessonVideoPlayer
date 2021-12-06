//
//  LessonVideoPlayerApp.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/4/21.
//

import SwiftUI

@main
struct LessonVideoPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            ListView().environmentObject(ViewModel())
        }
    }
}
