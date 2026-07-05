//
//  EmptyListView.swift
//  Watchlist
//
//  Created by Jasmine Kaur on 05/07/26.
//

import SwiftUI

struct EmptyListView: View {
    var body: some View {
        ContentUnavailableView {
            Circle()
                .fill(.blue.gradient)
                .stroke(.blue.gradient.opacity(0.15), lineWidth: 30)
                .stroke(.blue.gradient.opacity(0.15), lineWidth: 60)
                .stroke(.blue.gradient.opacity(0.15), lineWidth: 90)
                .frame(width: 180)
                .overlay {
                    Image(systemName: "movieclapper")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100)
                        .foregroundStyle(Color(UIColor.systemBackground))
                }
                .padding(.bottom, 90)
        } description: {
            GroupBox {
                TabView {
                    PageTabView(icon: "1.circle", description: "Add movies to watchlist if you wish to wath them later")
                        .padding(.bottom, 36)
                    PageTabView(icon: "2.circle", description: "You can later on watch any random moview from the list")
                        .padding(.bottom, 36)

                }
                .tabViewStyle(PageTabViewStyle())
                .frame(minWidth: 0, maxWidth: 560, minHeight: 120, maxHeight: 180)
            }
        }
        
    }
}

#Preview {
    EmptyListView()
}
