//
//  RecorderView.swift
//  SwiftUI_Test_Task
//
//  Created by Iuliia Volkova on 30.08.2022.
//

import SwiftUI

struct RecorderView: View {
    var body: some View {
        ZStack {
            Color.indigo
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack(alignment: .center, spacing: 50) {
                Text("Player View")
                    .modifier(TitleModifier())
                
                Text("""
    Sicelides Musae, paulo maiora canamus.
    non omnis arbusta iuvant humilesque myricae;
    si canimus silvas, silvae sint consule dignae.
    ultima Cumaei venit iam carminis aetas;
    magnus ab integro saeclorum nascitur ordo.
    iam redit et Virgo, redeunt Saturnia regna,
    iam nova progenies caelo demittitur alto.
    tu modo nascenti puero, quo ferrea primum
    desinet ac toto surget gens aurea mundo,
    casta fave Lucina; tuus iam regnat Apollo.
    teque adeo decus hoc aevi, te consule, inibit,
    Pollio, et incipient magni procedere menses;
    te duce, si qua manent sceleris vestigia nostri
    inrita perpetua solvent formidine terras.
    ille deum vitam accipiet divisque videbit
    permixtos heroas et ipse videbitur illis
    pacatumque reget patriis virtutibus orbem.
    """)
                .modifier(TextModifier())
            }
        }
    }
}

struct RecorderView_Previews: PreviewProvider {
    static var previews: some View {
        RecorderView()
            .previewDevice("iPhone 11")
    }
}

