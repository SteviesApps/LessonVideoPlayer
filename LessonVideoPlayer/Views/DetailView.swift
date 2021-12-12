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
    
    var lesson: Lesson
    
    let aspectRatio: CGFloat = 478 / 849
    
    var body: some View {
        
        VStack {
            
            let url = URL(string: lesson.url)
            
            if url != nil {
                
                GeometryReader { geo in
                    VideoPlayer(player: AVPlayer(url: url!))
                        .frame(height: geo.size.width * aspectRatio)
                        .cornerRadius(10)
                }
            }
            
            Text(String(lesson.id))
            
            Button(action: {
                
                model.nextVideo()
                
            }, label: {
                
                ZStack {
                    
                    Rectangle()
                        .frame(height:48)
                        .foregroundColor(Color.green)
                        .cornerRadius(10)
                        .shadow(radius:5)
                    
                    if model.currentVideo != nil {
                    
                    Text("Next Video: \(model.currentVideo!.title)")
                        .foregroundColor(Color.white)
                        .bold()
                        
                    }
                    
                }
            })
                .padding()
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        let model = ViewModel()
//        DetailView(lesson: model.lessons[0])
//    }
//}
