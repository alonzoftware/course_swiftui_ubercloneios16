//
//  LocationSearchResultCell.swift
//  UberCloneIOS16
//
//  Created by MacBookAir2019 on 18/5/25.
//

import SwiftUI

struct LocationSearchResultCell: View {
    let title: String
    let subtitle: String
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.body)
                Text(subtitle)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                Divider()
            }
            .padding(.leading,8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

//#Preview {
//    LocationSearchResultCell()
//}
