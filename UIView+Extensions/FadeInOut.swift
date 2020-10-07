extension UIView {

    func fadeIn(with duration: TimeInterval = 0.5) {
        DispatchQueue.main.async { [weak self] in
            UIView.animate(withDuration: duration) {
                self?.alpha = 1.0
            }
        }
    }

    func fadeOut(with duration: TimeInterval = 0.5) {
        DispatchQueue.main.async { [weak self] in
            UIView.animate(withDuration: duration) {
                self?.alpha = 0.0
            }
        }
    }

}