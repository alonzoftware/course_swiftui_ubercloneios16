//
//  LocationSearchView.swift
//  UberCloneIOS16
//
//  Created by MacBookAir2019 on 18/5/25.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var showLocationSearchView : Bool
//    @State private var destinationLocationText = ""
    @EnvironmentObject var viewModel : LocationSearchViewModel
    var body: some View {
        VStack {
            // MARK: - Header View
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                }
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .frame(height: 32)
                        .background(
                            Color(
                                .systemGroupedBackground
                            )
                        )
                        .padding(.trailing)
                    TextField("Where to?", text: $viewModel.queryFragment)
                        .frame(height: 32)
                        .background(
                            Color(
                                .systemGray4
                            )
                        )
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 70)
            Divider()
                .padding(.vertical)

            // MARK: - List View
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.results, id: \.self) { result in
                        LocationSearchResultCell(title: result.title , subtitle: result.subtitle)
                            .onTapGesture {
                                viewModel.selectLocation(result.title)
                                showLocationSearchView.toggle()
                            }
                    }
                }
            }
        }
        .background(.white)
    }
}

//#Preview {
//    LocationSearchView()
//}
