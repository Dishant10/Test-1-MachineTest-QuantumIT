//
//  ItemCardView.swift
//  Sample Project
//
//  Created by Dishant Nagpal on 17/06/22.
//

import SwiftUI

struct ItemCardView: View {
        
        let image:Image
        let price : String
        let name : String
        let quantity : String
        
        var body: some View {
            VStack{
                
                image
                    .resizable()
                    .frame(width: 80, height: 80)
                
                Text("₹ \(price)")
                Text(name)
                Text(quantity)
                    .foregroundColor(.secondary)
            }
            .frame(width: 90)
            .padding()
            
            .background(Color.white)
            .cornerRadius(10)
        }
        
    }


