//
//  PlayerView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack(alignment: .center, spacing: 50) {
                Text("Player View")
                    .modifier(TitleModifier())
                
                Text("""
    Post mortem nihil est ipsaque mors nihil,
    vēlōcis spatiī mēta novissima.
    Spem pōnant avidī, sollicitī metum:
    Tempus nōs avidum dēvorat et Chaos.
    Mors indīvidua est, noxia corporī
    nec parcēns animae. Taenara et asperō
    rēgnum sub dominō līmen et obsidēns
    custōs nōn facilī Cerberus ōstiō
    rūmōrēs vacuī verbaque inānia
    et pār sollicitō fābula somniō.
    Quaeris quō iaceās post obitum locō?
    Quō nōn nāta iacent.
    """)
                .modifier(TextModifier())
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .previewDevice("iPhone 11")
    }
}
