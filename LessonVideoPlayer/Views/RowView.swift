//
//  RowView.swift
//  LessonVideoPlayer
//
//  Created by Steven Kaiser on 12/5/21.
//

import SwiftUI

struct RowView: View {
    
    var title: String
    
    var body: some View {
        
        Text(title)
            .font(.caption)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(title: "Lesson One")
    }
}
