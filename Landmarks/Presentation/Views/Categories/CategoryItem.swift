//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Yasmin Garza on 06/11/22.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(6)
            Text(landmark.name)
                .font(.caption)
                .lineLimit(1)
                .foregroundColor(Color(uiColor: UIColor(red: 0.06, green: 0.08, blue: 0.08, alpha: 1.00)))
                .frame(width: 100, alignment: .leading)
            Text(landmark.state)
                .font(.caption2)
                .foregroundColor(Color(uiColor: UIColor(red: 0.36, green: 0.38, blue: 0.38, alpha: 1.00)))
                .frame(width: 100, alignment: .leading)
        }
        .padding(.vertical, 6)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
