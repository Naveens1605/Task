//
//  PolicyView.swift
//  Task
//
//  Created by Naveen Singh on 21/07/25.
//

import SwiftUI

struct PolicyView: View {
    
    @State private var isExpanded: Bool = false
    private var policies: [Policy] = [Policy(), Policy(),  Policy(), Policy(), Policy(), Policy()]

    var body: some View {
        NavigationStack {
            VStack {
                List(policies, id: \.self) { policy in
                    PolicyCard(policy: policy)
                }
            }
            .navigationTitle(Text("Policies"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    PolicyView()
}
