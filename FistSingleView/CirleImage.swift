//
//  CirleImage.swift
//  FistSingleView
//
//  Created by 杨殿擎 on 2022/11/12.
//

import SwiftUI

struct CirleImage: View {
    var body: some View {
        Image("1")
            .resizable()
//            .aspectRatio(contentMode: .fit)
        
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth:5))
            .shadow(radius: 111)
            
    }
}

struct CirleImage_Previews: PreviewProvider {
    static var previews: some View {
        CirleImage()
    }
}
