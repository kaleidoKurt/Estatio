//
//  PreliminaryScreenView.swift
//  Estatio
//
//  Created by Kurt Wimmers on 3/20/24.
//

import SwiftUI

struct InitialOptionsView: View {
    // Define your options with navigation destinations
    let options: [Option] = [
        Option(title: "Buy Land & Build", destination: AnyView(BuyAndBuildView())),
        Option(title: "Build on Owned Land", destination: AnyView(BuildOnOwnedLandView())), // not yet built
        Option(title: "Renovate or Expand", destination: AnyView(RenovateOrExpandView())), // not yet built
        Option(title: "Explore Investment", destination: AnyView(ExploreInvestmentOpportunitiesView())) // not yet built
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
               
                VStack {
                    Spacer()
                    ForEach(0..<2) { row in // 2 rows
                        HStack {
                            ForEach(0..<2) { column in // 2 columns per row
                                let index = row * 2 + column
                                let option = options[index]
                                OptionButton(option: option)
                            }
                        }
                    }
                    Spacer()
                }
                .navigationTitle("What would you like to do?")
                .padding()
            }
        }
    }
}

struct OptionButton: View {
    var option: Option
    
    var body: some View {
        NavigationLink(destination: option.destination) {
            Text(option.title)
                .frame(width: 150, height: 150)
                .background(Color.gray)
                .opacity(0.3)
                .cornerRadius(20)
        }
        .padding()
    }
}

struct Option {
    let title: String
    let destination: AnyView
}

struct BuildOnOwnedLandView: View {
    var body: some View { Text("Build on Owned Land") }
}

struct RenovateOrExpandView: View {
    var body: some View { Text("Renovate or Expand") }
}

struct ExploreInvestmentOpportunitiesView: View {
    var body: some View { Text("Explore Investment Opportunities") }
}



#Preview {
    InitialOptionsView()
}
