//
//  TitleDetailView1.swift
//  blossom movie
//
//  Created by mac on 3/5/26.
//

import SwiftUI

struct TitleDetailView1: View {
    @Environment(\.dismiss) var dismiss
    let title: Title
    var titleName: String {
        return (title.name ?? title.title) ?? ""
    }
    let viewModel = ViewModel()
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        GeometryReader { geometry in
            switch viewModel.videoIdStatus {
            case .notStarted:
                EmptyView()
            case .fetching:
                ProgressView()
                    .frame(width: geometry.size.width, height: geometry.size.height)
            case .success:
                    
                ScrollView{
                    LazyVStack(alignment: .leading){
                        YoutubePlayer(videoId: "pbiQKOmsIKg")
                            .aspectRatio(1.3, contentMode: .fit)
                        
                        Text((title.name ?? title.title) ?? "")
                            .bold()
                            .font(.title2)
                            .padding(5)
                            
                        
                        Text(title.overview ?? "")
                            .padding(5)
                        
                        HStack{
                            Spacer()
                            
                            Button{
                                let saveTitle = title
                                saveTitle.title = titleName
                                modelContext.insert(saveTitle)
                                try? modelContext.save()
                                dismiss()
                            }label: {
                                Text(Constants.downloadString).fullButton()
                            }
                            
                            Spacer()
                        }
                        
                    }
                }
            case .failed(let underlyingError):
                Text(underlyingError.localizedDescription)
                    .errorMessage()
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .task {
            await viewModel.getVideoId(for: titleName)
        }
    }
}


#Preview {
    TitleDetailView1(title: Title.previewTitles[0])
}
