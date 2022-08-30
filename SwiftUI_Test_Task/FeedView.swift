//
//  FeedView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack(alignment: .center, spacing: 50) {
                Text("Feed View")
                    .modifier(TitleModifier())
                
                Text("""
    Vērum est an timidōs fābula dēcipit
    umbrās corporibus vīvere conditīs,
    cum coniūnx oculīs imposuit manum
    suprēmusque diēs sōlibus obstitit
    et trīstis cinerēs urna coercuit,
    Nōn prōdest animam trādere fūnerī,
    sed restat miserīs vīvere longius?
    An tōtī morimur nūllaque pars manet
    nostrī, cum profugō spīritus hālitū
    Immixtus nebulīs cessit in āerā
    et nūdum tetigit subdita fax latus?
    """)
                .modifier(TextModifier())
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            .previewDevice("iPhone 11")
    }
}
