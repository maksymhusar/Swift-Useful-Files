// UIView+Extension.swift used

class TestView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        fromNib()
        configure()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fromNib()
        configure()
    }
    
    private func configure() {
        // view's setup
        
    }

}
