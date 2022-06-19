//
//  ShopCard2.swift
//  Sample Project
//
//  Created by Dishant Nagpal on 17/06/22.
//

import Foundation
import SwiftUI

struct ShopCard2: View {
    
    var item = DesignerItem()
    let shopName : String
    let totalCartPrice : String
    
    var body: some View {
        VStack{
            HStack{
                Text(shopName)
                    .foregroundColor(Color.red)
                    .underline()
                Spacer()
                
                Text("(1 Product)")
                    .bold()
            }
            .padding([.leading,.trailing,.top])
            
            ScrollView(.horizontal){
                HStack(spacing:15){
                    
                    ForEach(0 ..< item.itemNames.count) { i in
                        ItemCardView(image:Image("Kurti"),price: item.itemPrices[i],name: item.itemNames[i],quantity: item.quantities[i])
                    }
                }
                .padding([.leading,.trailing,.top])
                
            }
            
            HStack{
                Text("₹ \(totalCartPrice)")
                    .foregroundColor(.red)
                    .font(.system(size: 20))
                Spacer()
                Button(action: {
                    
                }, label: {ButtonType(title: "Delete Cart", textColor: .white, backgroundColor: .red)
            })
                .padding(.bottom)
                
                Button {
                    
                } label: {
                    ButtonType(title: "Checkout", textColor: .white, backgroundColor: .red)
                }
                .padding(.bottom)

        }
            .padding(.horizontal)
    }
       // .frame(width: 350, height: 400)
}
}
