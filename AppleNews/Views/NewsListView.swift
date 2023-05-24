//
//  NewsListView.swift
//  AppleNews
//
//  Created by calum couch on 2023-05-23.
//

import SwiftUI

struct NewsListView: View {
    var body: some View {
        ScrollView {
                HStack {
                    NewsItemView(image: "Farming", headline: "Maritime farmers holding breath as recod-dry spring wrings region", TimeSincePosted: "1h ago", source:"GlobeAndMail")
                    
                    NewsItemView(image: "IcePatrol", headline: "After 100 years, the international Ice Patrol is winding down N.L. iceberg flights", TimeSincePosted: "1h ago", source:"CBCNEWS")
                }
            VStack {
                NewsItemView(image: "E.JeanCarroll", headline: "E. Jean Carroll seeks $10 million in damages from Trump over post verdict statements", TimeSincePosted: "1h ago", source:"Reuters")
                NewsItemView(image: "Sheep", headline: "New Zealand's ratio of sheep to humans at lowest point in 170 years", TimeSincePosted: "1h ago", source:"TheGuardian")
            }
            
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .preferredColorScheme(.dark)
    }
}
