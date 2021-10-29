//
//  ChechBoxStyle.swift
//  Devote
//
//  Created by 1 on 18/06/21.
//

import SwiftUI

struct ChechBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                    
                    feedback.notificationOccurred(.success)
                    
                    if configuration.isOn {
                        playSound(sound: "sound-rise", type: "mp3")
                        
                    } else {
                        playSound(sound: "sound-tap", type: "mp3")
                    }
                }
            configuration.label
        }//: HStack
    }
}

struct ChechBoxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label", isOn: .constant(false))
            .toggleStyle(ChechBoxStyle())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
