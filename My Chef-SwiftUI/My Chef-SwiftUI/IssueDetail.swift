//
//  IssueDetail.swift
//  GitHub Issues
//
//  Created by Zach Huang on 2022/2/25.
//

import SwiftUI

struct IssueDetail: View {
    let issue: GitHubIssue
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(issue.title ?? "Unknown Title")")
                .font(.largeTitle)
            HStack {
                // chagne AsyncImage size
                // ref: https://swiftwithmajid.com/2021/07/07/mastering-asyncimage-in-swiftui/
                AsyncImage(url: URL(string: issue.user.avatarUrl ?? "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png")) { image in
                       image
                           .resizable()
                           .scaledToFill()
                   } placeholder: {
                       ProgressView()
                   }
                   .frame(width: 120, height: 120)
                   .background(Color.gray)
                   .clipShape(Circle())
                        
                Text("@\(issue.user.login)")
            }
            .padding(.vertical)
            HStack {
                // split date string to display only yyyy-mm-dd
                // ref: https://www.hackingwithswift.com/example-code/strings/how-to-split-a-string-into-an-array-componentsseparatedby
                Text("Date: \(issue.createdAt?.components(separatedBy: "T")[0] ?? "2020-01-01")")
                
                Image(systemName: "questionmark.app.fill")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                        .foregroundColor(Color.red)
            }
            .padding(.top)
            
            Text("Description")
                .font(.title)
                .padding(.vertical)
            Text("\(issue.body ?? "No description")")
            
        }
        .padding(.horizontal)
    }
}

struct IssueDetail_Previews: PreviewProvider {
    static var previews: some View {
        IssueDetail(issue: testData[0])
    }
}
