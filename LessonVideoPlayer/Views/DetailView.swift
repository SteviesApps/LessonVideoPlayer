//
//  DetailView.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/5/21.
//

import SwiftUI
import AVKit

struct DetailView: View {
    
    @EnvironmentObject var model: ViewModel
    
    
    
    var body: some View {
        
        let url = URL(string: "https://codewithchris.github.io/Module5Challenge/Lesson%201.mp4")
        
        if url != nil {
        
        VideoPlayer(player: AVPlayer(url: url!))
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView().environmentObject(ViewModel())
    }
}
