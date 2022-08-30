//
//  VideoView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack(alignment: .center, spacing: 50) {
                Text("Player View")
                    .modifier(TitleModifier())
                
                Text("""
    Arma virumque cano, Troiae qui primus ab oris
    Italiam fato profugus Lavinaque venit
    litora, multum ille et terris iactatus et alto
    vi superum, saevae memorem Iunonis ob iram,
    multa quoque et bello passus, dum conderet urbem
    inferretque deos Latio, genus unde Latinum
    Albanique patres atque altae moenia Romae.
    Musa, mihi causas memora, quo numine laeso
    quidve dolens regina deum tot volvere casus
    insignem pietate virum, tot adire labores
    impulerit. tantaene animis caelestibus irae?
    """)
                .modifier(TextModifier())
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
            .previewDevice("iPhone 11")
    }
}

