//
//  CartView.swift
//  Sample Project
//
//  Created by Dishant Nagpal on 17/06/22.
//

import SwiftUI

struct CartView: View {
    var body: some View {
      
        ZStack{
            Color("white")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 10,height: 20)
                        Spacer()
                    Text("Cart")
                        .fontWeight(.heavy)
                        .font(.system(size: 22))
                        .bold()
                        
                    Spacer()
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(.red))
                        
                }
                .shadow(radius: 20)
                .padding([.horizontal])
                
                Section{
                    ShopCard1(shopName:"MINI BASKETS",totalCartPrice: "354")
                }
                .background(Color.white)
                .shadow(color: .secondary, radius: 8)
                .padding()
                
                Section{
                    ShopCard2(shopName:"DESIGNER HUB",totalCartPrice: "400")
                }
                .background(Color.white)
                .shadow(color: .secondary, radius: 8)
                .padding()
                Spacer()
            }
        }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
