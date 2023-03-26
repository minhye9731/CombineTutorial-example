//
//  NumbersSwiftUIContainerVC.swift
//  CombineTutorial-example
//
//  Created by 강민혜 on 3/27/23.
//

import Foundation
import UIKit
import SwiftUI

struct NumbersView: View {
    
    @State var input : String = ""
    
    var body: some View {
        VStack(alignment: .trailing) {
            TextField("", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Divider()
            
            Text("합계")
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 100)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
