//
//  OpenIssuesView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI


struct OpenIssuesView: View {
    
    @ObservedObject var githubIssues: GitHubIssues

    
    var body: some View {
        NavigationView {
            List (githubIssues.openIssues) { item in
                // NavigationLink to detail page
                // ref: https://martinlasek.medium.com/swiftui-detail-view-44772246fa2a
                NavigationLink(destination: IssueDetail(issue: item)) {
                    HStack {
                        Image(systemName: "questionmark.app.fill")
                            .foregroundColor(Color.red)
                            .padding(.trailing)

                        VStack(alignment: .leading) {
                            Text("\(item.title ?? "Unknown Title")")
                                .font(.title3)
                                .lineLimit(2)
                            Text("@\(item.user.login)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            }
                        }
                    }
                    
                }
                .navigationTitle("Open Issues")
            
        }
    }
}

struct OpenIssuesView_Previews: PreviewProvider {
    static var previews: some View {
        OpenIssuesView(githubIssues: GitHubIssues())
    }
}
