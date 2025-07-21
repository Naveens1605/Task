//
//  PolicyCard.swift
//  Task
//
//  Created by Naveen Singh on 21/07/25.
//

import SwiftUI

struct PolicyCard: View {
    
    @State private var isExpanded: Bool = false
    var policy: Policy
 
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Policy Name: \(policy.policyName)")
                Text("Policy Number: \(policy.policyNumber)")
                Text("Policy Status: \(policy.policyStatus.rawValue)")
                Text("Next Premium Due: \(policy.nextPremiumDueDate.toDateString)")
                
                if isExpanded {
                    expandedContent()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            
            Button {
                isExpanded.toggle()
            } label: {
                if isExpanded {
                    Text("See Less")
                } else {
                    Text("See More")
                }
            }
        }
        .background(.policyRed)
        .foregroundColor(.policyBlue)
    }
}

extension PolicyCard {
    
    @ViewBuilder
    func expandedContent() -> some View {
        Text("Start Date: \(policy.startDate.toDateString)")
        Text("Maturity Date: \(policy.maturityDate.toDateString)")
        Text("Sum Assured: \(policy.sumAssured)")
        Text("Premium Frequency: \(policy.premiumFrequency)")
        Text("Last Premium Paid: \(policy.lastPremiumPaid.toDateString)")
        Text("Next Premium Amount: \(policy.nextPremiumAmount)")
    }
}

#Preview {
    PolicyCard(policy: Policy())
}
