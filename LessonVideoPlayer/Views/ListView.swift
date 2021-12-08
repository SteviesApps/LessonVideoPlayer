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
    
    @State private var searchText = ""
    
    
    
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
            }
            .searchable(text: $searchText)
            .listStyle(InsetListStyle())
            .navigationTitle("Learn SwiftUI")
            
        }
    }
    
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ViewModel())
    }
}
