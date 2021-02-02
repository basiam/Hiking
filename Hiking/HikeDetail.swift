//
//  HikeDetail.swift
//  Hiking
//
//  Created by basia on 02/02/2021.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    @State private var zoomed: Bool = false

    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fit : .fill)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            Text("\(String(format: "%.2f", hike.miles)) miles")
        }.navigationBarTitle(Text(hike.name),  displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all().first!)
    }
}
