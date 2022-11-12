//
//  CircleImage.swift
//  Landmarks
//
//  Created by Yasmin Garza on 27/10/22.
//

import SwiftUI

struct CircleImge: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImge_Previews: PreviewProvider {
    static var previews: some View {
        CircleImge(image: Image("turtlerock"))
    }
}
