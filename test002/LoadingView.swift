import Foundation
import SwiftUI
import UIKit

struct LoadingView: View {
    var text: String = "読み込み中..."

    var body: some View {
        ZStack {
            Color(UIColor.clear)
            VStack {
                ActivityIndicator(style: .large)
                Text(text)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            }.frame(minWidth: 130, idealWidth: 130, minHeight: 130, idealHeight: 130)
            .compositingGroup()
            .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black))
            .shadow(radius: 6)
            .edgesIgnoringSafeArea(.all)
        }
        .transition(AnyTransition.opacity.animation(.easeOut(duration: 0.3)))
    }
}

struct ActivityIndicator: UIViewRepresentable {

    typealias UIViewType = UIActivityIndicatorView

    var style: UIActivityIndicatorView.Style = .medium

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: style)
        indicator.color = .white
        return indicator
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }
}
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
