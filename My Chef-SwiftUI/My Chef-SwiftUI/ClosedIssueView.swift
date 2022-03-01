//
//  ClosedIssueView.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

struct ClosedIssueView: View {
    @ObservedObject var githubIssues: GitHubIssues
    
    var body: some View {
        NavigationView {
            List(githubIssues.closedIssues) { item in
                NavigationLink(destination: IssueDetail(issue: item)) {
                    HStack {
                        Image(systemName: "checkmark.diamond.fill")
                            .foregroundColor(Color.green)
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
            .navigationTitle("Closed Issues")
        }
    }
}

struct ClosedIssueView_Previews: PreviewProvider {
    static var previews: some View {
        ClosedIssueView(githubIssues: GitHubIssues())
    }
}
