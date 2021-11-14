//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Chase Hardin on 11/13/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(IconOnlyLabelStyle())
                .foregroundColor(isSet ? .orange : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteButton(isSet: .constant(true))
            FavoriteButton(isSet: .constant(false))
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
