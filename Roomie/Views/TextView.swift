//
//  TextView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/1/25.
//

import SwiftUI

struct TextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 20, weight: .semibold))
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.horizontal, 20)
    }
}

#Preview() {
    TextView(text: "Hi!")
}
