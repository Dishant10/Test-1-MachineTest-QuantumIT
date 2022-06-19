



import Foundation
import SwiftUI

struct ButtonType:View{
    
    var title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View{
        
        Text(title)
            .bold()
            .frame(width: 100, height: 30, alignment: .center)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(5)
    }
}
