//
//  CheckoutView.swift
//  IDine
//
//  Created by ramil on 28/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = 0
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(0 ..< Self.paymentTypes.count) {
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
            .navigationBarTitle(Text("Payment"), displayMode: .inline)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    
    static let order = Order()
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
