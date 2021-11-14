//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Chase Hardin on 11/13/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })

                ForEach(filteredLandmarks) {landmark in
                    NavigationLink(
                        destination: LandmarkDetail(landmark: landmark),
                        label: {
                            LandmarkRow(landmark: landmark)
                        })
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        let devices = [
            "iPhone SE (2nd generation)",
            "iPhone XS Max"
        ]

        
        ForEach(devices, id: \.self) {deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
