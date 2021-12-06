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
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Text("LESSONS")
                
                List {
                    
                    LazyVStack {
                        
                        ForEach(model.lessons) { lesson in
                            
                            VStack(spacing: 20) {
                                
                                NavigationLink(destination: DetailView())
                                { RowView(title: lesson.title) }
                                
                            }
                            
                        }
                        
                    }
                }
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ViewModel())
    }
}
