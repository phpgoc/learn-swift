//
//  ContentView.swift
//  FistSingleView
//
//  Created by 杨殿擎 on 2022/11/12.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack  {
            MapView()
                .edgesIgnoringSafeArea(.all)
                .frame(height:400)
        
            CirleImage().offset(y:-130)
                .padding(.bottom, -130)
                
            
            VStack(alignment: .leading){
                Text("圆明园")
                    .font(.title)
                    .foregroundColor(Color.red)
                HStack {
                    Text("皇家园林").font(.subheadline)
                    Spacer()
                    Text("北京").font(.subheadline)
                }
            }
          
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
