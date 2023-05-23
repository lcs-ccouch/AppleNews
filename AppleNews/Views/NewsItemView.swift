//
//  NewsItemView.swift
//  AppleNews
//
//  Created by calum couch on 2023-05-23.
//

import SwiftUI

struct NewsItemView: View {
    // MARK: Stored properties
    let image: String
    let headline:String
    let TimeSincePosted:String
    let source: String
   // MARK: Computed properties
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
            Image(source)
                .scaledToFit()
            
            Text(headline)
                .font(.title)
                .fontWeight(.semibold)
               
            
            Divider()
            
            HStack {
                Text(TimeSincePosted)
                Spacer()
                Image(systemName: "ellipsis")
            }
            .foregroundColor(.secondary)
            .padding(15)
        }
        .background(Color("ArticleSlugBackground"))
                
            
    }
}

struct NewsItemView_Previews: PreviewProvider {
    static var previews: some View {
      NewsItemView(image: "E.JeanCarroll", headline: "E. Jean Carroll seeks $10 million in damages from Trump over post verdict statements", TimeSincePosted: "1h ago", source:"Reuters")
            .preferredColorScheme(.dark)
    }
}
