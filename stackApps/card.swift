//
//  card.swift
//  stackApps
//
//  Created by Sayan Nath on 12/05/20.
//  Copyright © 2020 Sayan Nath. All rights reserved.
//

import SwiftUI

struct card: View {
    var course:Course
    var body: some View {
        ZStack{
            Image(course.courseImage).offset(y: 40)
            
            VStack{
                Text(course.courseName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(course.coursePrice)
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
        .background(course.courseColor)
    .cornerRadius(18)
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card(course: courseList[0])
    }
}
