//
//  Polciy.swift
//  Task
//
//  Created by Naveen Singh on 21/07/25.
//

import Foundation

struct Policy: Codable, Hashable {
    var policyName: String
    var policyNumber: String
    var policyStatus: PolicyStatusEnum
    var nextPremiumDueDate: Date
    var startDate: Date
    var maturityDate: Date
    var sumAssured: Double
    var premiumFrequency: String
    var lastPremiumPaid: Date
    var nextPremiumAmount: Double
    
    init(policyName: String, policyNumber: String, policyStatus: PolicyStatusEnum, nextPremiumDueDate: Date, startDate: Date, maturityDate: Date, sumAssured: Double, premiumFrequency: String, lastPremiumPaid: Date, nextPremiumAmount: Double) {
        self.policyName = policyName
        self.policyNumber = policyNumber
        self.policyStatus = policyStatus
        self.nextPremiumDueDate = nextPremiumDueDate
        self.startDate = startDate
        self.maturityDate = maturityDate
        self.sumAssured = sumAssured
        self.premiumFrequency = premiumFrequency
        self.lastPremiumPaid = lastPremiumPaid
        self.nextPremiumAmount = nextPremiumAmount
    }
    
    init () {
        self.policyName = "Policy Name"
        self.policyNumber = "POL12345"
        self.policyStatus = PolicyStatusEnum.ACTIVE
        self.nextPremiumDueDate = Date().addingTimeInterval(86400)
        self.startDate = Date().addingTimeInterval(-86400)
        self.maturityDate = Date().addingTimeInterval(86400 * 365)
        self.sumAssured = 50000
        self.premiumFrequency = "Yearly"
        self.lastPremiumPaid = Date().addingTimeInterval(-365 * 86400)
        self.nextPremiumAmount = 20000
    }
}
