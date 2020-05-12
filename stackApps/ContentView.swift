//
//  ContentView.swift
//  stackApps
//
//  Created by Sayan Nath on 12/05/20.
//  Copyright © 2020 Sayan Nath. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var courses:[Course] = courseList
    var tests:[Test] = testList
    var body: some View {
        ScrollView{
            VStack{
                Text("Courses")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing: 20){
                               ForEach(courses) { item in
                                   card(course: item)
                               }
                           }
                       }
            }
            VStack{
                Text("Tests")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing: 20){
                               ForEach(tests) { item in
                                   test(test: item)
                               }
                           }
                       }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courses: courseList, tests: testList)
    }
}
