//
//  test.swift
//  stackApps
//
//  Created by Sayan Nath on 13/05/20.
//  Copyright © 2020 Sayan Nath. All rights reserved.
//

import SwiftUI

struct test: View {
    var test:Test
    var body: some View {
        ZStack{
            Image(test.testImage).offset(y: 40)
            
            VStack{
                Text(test.testName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(test.testPrice)
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            }.offset(y: -220)
            
            Button(action: ({
                print("Button is Clicked.")
            }), label:{
                
                HStack{
                    Text("Buy Now")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("UniRed"))
                    Image(systemName: "arrow.right.square")
                    .accentColor(Color("UniRed"))
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(Color.white)
            .clipShape(Capsule())
            }).offset(y: -150)
            
            Text("LearnCodeOnline.in")
            .frame(width: 410, height: 30)
            .foregroundColor(Color("UniRed"))
                .background(Color.white)
                .offset(y: 240)
                .rotationEffect(.init(degrees: 20))
        }
        .frame(width: 335,height: 550)
        .background(test.testColor)
    .cornerRadius(18)
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test(test: testList[3])
    }
}
