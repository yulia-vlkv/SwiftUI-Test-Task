//
//  ProfileView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack(alignment: .center, spacing: 50) {
                Text("Profile View")
                    .modifier(TitleModifier())
                
                Text("""
    Quidquid sōl oriēns, quidquid et occidēns
    nōvit, caeruleīs Ōceanus fretīs
    quidquid bis veniēns et fugiēns lavat,
    aetās Pēgaseō corripiet gradū.
    Quō bis sēna volant sīdera turbine,
    quō cursū properat volvere saecula
    astrōrum dominus, quō properat modo
    oblīquīs Hecatē currere flexibus:
    hōc omnēs petimus fāta, nec amplius,
    iūrātōs superīs quī tetigit lacūs,
    usquam est. Ut calidīs fūmus ab ignibus
    vānēscit, spatium per breve sordidus;
    ut nūbēs, gravidās quās modo vīdimus,
    arctōī Boreae dissicit impetus:
    sīc hic, quō regimur, spīritus effluet.
    """)
                .modifier(TextModifier())
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 11")
    }
}
