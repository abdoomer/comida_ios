//
//  OnboardingItem.swift
//  comida
//
//  Created by Abdallah on 09/09/2025.
//

import Foundation
import SwiftUICore

struct OnboardingItem: Hashable, Identifiable {
    let id: String = UUID().uuidString
    let description: String
    let image: String
    let backgroundColor: Color
}


let onboardingItems: [OnboardingItem] = [
    OnboardingItem(
        description: "I don't feel like cooking. Let's order food delivery.",
        image: "onboarding_screen_image_1",
        backgroundColor: Color.onboardingBackgroundColor1
    ),
    OnboardingItem(
        description: "Donut worry, be happy and eat more donuts!",
        image: "onboarding_screen_image_2",
        backgroundColor: Color.onboardingBackgroundColor2
    ),
    OnboardingItem(
        description: "Good music and good food makes me happy.",
        image: "onboarding_screen_image_3",
        backgroundColor: Color.onboardingBackgroundColor3
    ),
]
