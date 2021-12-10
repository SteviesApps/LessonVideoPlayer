//
//  ListView.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/5/21.
//

import SwiftUI

struct ListView: View {
    
    //    Pass in data from the ViewModel file using a state property.
    
    @EnvironmentObject var model: ViewModel
    
//    var lesson: Lesson
    
//    @State private var searchText = ""
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Text("LESSONS")
                
                List {
                    
                    ForEach(model.lessons) { lesson in
                            
                        NavigationLink(destination: DetailView(lesson: lesson))
                            { RowView(title: lesson.title) }
                            
                        }
                }
                .listStyle(InsetListStyle())
                .navigationTitle("Learn SwiftUI")
//                .searchable(text: $searchText){
                    
//                    ForEach(searchResults, id: \.self) { result in
                        
//                        Text(result)
//                            .searchCompletion(result)
                        
//                    }
                    
                }
            }
        }
    }
//    var searchResults: [Lesson] {

//        if searchText.isEmpty {
            
//            return model.lessons
            
//        } else {
            
//            return model.lessons.filter {_ in
//                model.lessons.contains(where: searchText)}
//        }
//    }
    
//}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ViewModel())
    }
}
