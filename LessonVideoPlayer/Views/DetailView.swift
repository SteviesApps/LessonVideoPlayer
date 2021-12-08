//
//  DetailView.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/5/21.
//

import SwiftUI
import AVKit

struct DetailView: View {
    
    var lesson: Lesson
    
    var body: some View {
        
        VStack {
            
            let url = URL(string: lesson.url)
            
            if url != nil {
                
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
            Button(action: {}, label: {
                
                ZStack {
                    
                    Rectangle()
                        .frame(height:48)
                        .foregroundColor(Color.green)
                        .cornerRadius(10)
                        .shadow(radius:5)
                    Text("Next Video")
                        .foregroundColor(Color.white)
                        .bold()
                    
                }
            })
        }
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        let model = ViewModel()
//        DetailView(lesson: model.lessons[0])
//    }
//}
