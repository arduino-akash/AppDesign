//
//  Details.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 09/11/22.
//

import SwiftUI

struct Details: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    let news: News
    var body: some View {
        // use GeometryReader to get current frame
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false, content: {
                Image(news.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width, height: geo.size.width)
                    .padding()
                
                VStack(alignment: .leading, spacing: 8.0, content: {
                    Text(news.title).font(.largeTitle).lineLimit(4)
                    
                })
                .padding(24)
            })
            .navigationBarTitle("News", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            // add custom back button and share button
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left")
            }, trailing:
                Button(action: {
                    print("Share button pressed")
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
            )
            // enable swipe back
            .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                if (value.startLocation.x < 20 && value.translation.width > 100) {
                    self.mode.wrappedValue.dismiss()
                }
            }))
        }
        .padding(0)
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        let news = NewsStore.shared.getAll().first!
        DetailView(news: news)
    }
}
