//
//  OnboardingScreen.swift
//  comida
//
//  Created by Abdallah on 08/09/2025.
//

import SwiftUI


struct OnboardingView: View {
    
    @State var currentPage: Int = 0
    @State private var scrollPosition: ScrollPosition?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                ScrollView(.horizontal){
                    OnboardingItemView(item: onboardingItems[currentPage], size: geometry.size, currentPage: $currentPage)
                }
                .onChange(of: scrollPosition){ oldPosition, newPosition in
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                
                OnboardingScrollButtons(size: geometry.size, currentPage: $currentPage)
                    .frame(height: geometry.size.height * 0.8, alignment: .bottom)
            }
        }
    }
}


struct OnboardingItemView: View {
    
    let item: OnboardingItem
    let size: CGSize
    @Binding var currentPage: Int
    
    var body: some View {
        ZStack {
            Color(item.backgroundColor)
            
            VStack(alignment: .leading){
                if currentPage == 1 {
                    Text(item.description)
                        .font(.custom("bebas_neue_regular", size: 24))
                        .foregroundStyle(Color.white)
                        .padding(.horizontal, size.width * 0.07)
                    
                    Image(item.image)
                        .resizable()
                        .frame(width: size.width, height: size.height * 0.6)
                    
                } else {
                    Image(item.image)
                        .resizable()
                        .frame(width: size.width, height: size.height * 0.6)
                    
                    Text(item.description)
                        .font(.custom("bebas_neue_regular", size: 24))
                        .foregroundStyle(Color.white)
                        .padding(.horizontal, size.width * 0.07)
                }
            }
            .frame(width: size.width, height: size.height, alignment: .top)
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}


struct OnboardingScrollButtons: View {
    
    let size: CGSize
    @Binding var currentPage: Int
    
    var body: some View {
        HStack{
            if currentPage != 0 {
                Button{
                    withAnimation(.easeIn) {
                        currentPage -= 1
                    }
                } label:{
                    Text("Prev")
                }
            }
            
            Spacer()
            
            if currentPage < 2 {
                Button{
                    withAnimation(.easeIn) {
                        currentPage += 1
                    }
                } label:{
                    Text("Next")
                }
            } else {
                Button{
                    if currentPage == 2 {
                        
                    }
                } label:{
                    Text("Get Started")
                }
            }
        }
        .padding(.horizontal, size.width * 0.07)
        .frame(width: size.width)
    }
}


struct OnboardingButtons: View {
    var body: some View {
        HStack{
            
        }
    }
}


#Preview {
    OnboardingView()
}
