
import UIKit

protocol ContainerViewDelegate: class {

    func scrubberTapped()

}

class ContainerView: UIStackView, StoryboardNestable {

    enum ContentType {
        case streamable
        case image
    }

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var playerView: UIView!

    weak var delegate: ContainerViewDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()

        loadViewFromNib()
    }

    func configure(contentType: ContentType) {
    }

}
