//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Yasmin Garza on 27/10/22.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImge(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .padding(.bottom, 4)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                        .padding(.leading, 2)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                        .foregroundColor(.secondary)
                }
                .font(.subheadline)
                Divider()
                    .padding([.top, .bottom], 6)
                Text("About \(landmark.name)")
                    .font(.title2)
                    .padding(.bottom, 4)
                Text(landmark.description)
            }.padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
