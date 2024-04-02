//
//  ContentView.swift
//  first app
//
//  Created by Keyur Khambhadiya on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tippersent = 15.0
    var body: some View {
        VStack {
            HStack {
                Image (systemName: "rupeesign.circle.fill")
                    .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.largeTitle)
                
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
            }
            HStack {
                Text("Rs.")
                TextField("Amount", text: $total)
            }
            HStack {
                Slider(value: $tippersent, in: 1...50, step: 1.0)
                Text("\(Int(tippersent))")
                Text("%")
            }
            //in here first if statement is meant to check that textfiled is not empty or with white characters if its not continue with other two statements
            if total.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                Text("Please add bill amount")
            }else{
                if let totalNum = Double(total) {
                    Text("Tip amount is Rs.\(totalNum * tippersent / 100, specifier: "%0.2f")")
                }else {
                    Text("please add only numeric")
                }
            }
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
