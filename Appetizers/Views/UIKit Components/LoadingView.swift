//
//  LoadingView.swift
//  Appetizers
//
//  Created by Jasman Arora on 4/28/23.
//

import SwiftUI


struct AcitvityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
  
    
    
}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            AcitvityIndicator()
        }
    }
}
