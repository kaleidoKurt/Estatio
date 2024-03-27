//
//  BuyAndBuildView.swift
//  Estatio
//
//  Created by Kurt Wimmers on 3/21/24.
//

import SwiftUI

struct BuyAndBuildView: View {
    @State private var city: String = ""
    @State private var state: String = ""
    @State private var zipCode: String = ""
    @State private var landCostString: String = ""
    @State private var landSizeString: String = ""
    @State private var additionalDetails: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Land Details")) {
                TextField("City", text: $city)
                TextField("State", text: $state)
                TextField("Zip Code", text: $zipCode)
                    .keyboardType(.numberPad)
                TextField("Cost (USD)", text: $landCostString)
                    .keyboardType(.decimalPad)
                
                TextField("Size (in acres)", text: $landSizeString)
                    .keyboardType(.decimalPad)
                
                TextField("Additional Details", text: $additionalDetails)
            }
            
            Button("Analyze Property") {
                submitLandDetails()
            }
        }
        .navigationTitle("Buy Land & Build")
    }
    
    private func analyzeLink() {
        // Here, you would implement your logic to analyze the property link.
        // This might involve making an API call to a service that can parse the link,
        // and then extract and process property details from Zillow or Redfin.
        
        // For demonstration, this is a placeholder function.
    }
    
    private func submitLandDetails() {
        let landCost = Double(landCostString) ?? 0.0
        let landSize = Double(landSizeString) ?? 0.0
        
        // Ensure values are positive or within expected ranges as part of your validation
        // Proceed with using `landCost` and `landSize` for further logic
        
        print("Submitted manual details: Cost - \(landCost), Size - \(landSize)")
    }
}

#Preview {
    BuyAndBuildView()
}

