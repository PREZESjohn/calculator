//
//  CustomButton.swift
//  calculator
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct CustomButton: View {
    
    @State var value: String
    @Binding var currentValue: Int
    @Binding var output: String
    
    @State var width: Int
    @State var heigt: Int
    var body: some View {
        Button(value){
            
            output += value
            var temp = ""
            temp = String(currentValue)
            temp += "2"
            currentValue=Int(temp)!
        }
        .foregroundColor(.blue)
        .frame(width:100,height:60, alignment:.center)
        .clipShape(Rectangle())
        .border(Color.black)
    }
}

//#Preview {
//    CustomButton(value: "", currentValue: 0, lastValue: 0, output: "")
//}
