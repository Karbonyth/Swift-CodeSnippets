extension UIView {

    func applyBoundsConstraints(to views: UIView..., withSafeAreas: Bool = false, withInset: CGFloat = .zero) {
        applyBoundsConstraints(to: views, withSafeAreas: withSafeAreas, withInset: withInset)
    }

    func applyBoundsConstraints(to views: [UIView], withSafeAreas: Bool, withInset: CGFloat) {
        views.forEach {
            NSLayoutConstraint.activate([
                $0.topAnchor.constraint(equalTo: withSafeAreas ? safeAreaLayoutGuide.topAnchor : topAnchor, constant: withInset),
                $0.bottomAnchor.constraint(equalTo: withSafeAreas ? safeAreaLayoutGuide.bottomAnchor : bottomAnchor, constant: -withInset),
                $0.leadingAnchor.constraint(equalTo: withSafeAreas ? safeAreaLayoutGuide.leadingAnchor : leadingAnchor, constant: withInset),
                $0.trailingAnchor.constraint(equalTo: withSafeAreas ? safeAreaLayoutGuide.trailingAnchor : trailingAnchor, constant: -withInset)
            ])
        }
    }

}