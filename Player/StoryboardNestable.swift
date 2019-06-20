
import UIKit

protocol NibRepresentable: class {}

extension UINib {

    typealias Name = String

}

extension NibRepresentable {

    public static var nibName: UINib.Name { return String(describing: self) }

    public static func instantiateFromNib() -> Self {
        return instantiateFromNib(withName: nibName)
    }

    public static func instantiateFromNib(withName nibName: String) -> Self {
        return Bundle(for: self).loadNibNamed(nibName, owner: self, options: nil)?.first as! Self
    }

}

protocol StoryboardNestable: NibRepresentable {

    var contentView: UIView! { get }

}

extension StoryboardNestable where Self: UIView {

    func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed(Self.nibName, owner: self, options: [:])
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}


