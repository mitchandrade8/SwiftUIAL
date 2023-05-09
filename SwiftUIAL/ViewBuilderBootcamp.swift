//
//  ViewBuilderBootcamp.swift
//  SwiftUIAL
//
//  Created by Mitch Andrade on 5/9/23.
//

import SwiftUI

struct HeaderViewRegular: View {
    
    let title: String
    let description: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            if let description = description {
                Text(description)
                    .font(.callout)
            }
            
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct HeaderViewGeneric<Content:View>: View {
    
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            content
        
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct CustomHStack<Content:View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
        }
    }
    
}

struct ViewBuilderBootcamp: View {
    var body: some View {
        VStack {
            HeaderViewRegular(title: "Get Buckets", description: "Introduction course to getting buckets consistently")
            
            HeaderViewRegular(title: "Floor General", description: "Course to understand and utilize the best of your team")
            
            HeaderViewGeneric(title: "3 point specialist") {
                Text("All the requirements required to become a consistent threat from 3")
            }
            
            Spacer()
        }
    }
}

struct ViewBuilderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalViewBuilder(type: .one)
//        ViewBuilderBootcamp()
    }
}

struct LocalViewBuilder: View {
    
    enum ViewType {
        case one, two, three
    }
    
    let type: ViewType
    
    var body: some View {
        VStack {
            headerSection
        }
    }
    
    @ViewBuilder private var headerSection: some View {
        if type == .one {
            viewOne
        } else if type == .two {
            viewTwo
        } else if type == .three {
            viewThree
        }
    }
    
    private var viewOne: some View {
        Text("One!")

    }
    
    private var viewTwo: some View {
        VStack {
            Text("TWOOO")
            Image(systemName: "heart.fill")
        }
    }
    
    private var viewThree: some View {
        Image(systemName: "heart.fill")
    }
}

