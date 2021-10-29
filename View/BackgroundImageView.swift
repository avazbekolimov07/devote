//
//  BackgroundImageView.swift
//  Devote
//
//  Created by 1 on 17/06/21.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        
        Image("rocket")
            .antialiased(true) // should learn
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
        
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
