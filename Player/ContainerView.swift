
import UIKit

class ContainerView: UIStackView, StoryboardNestable {

    enum ContentType {
        case streamable
        case image
    }

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var playerView: UIView!
    @IBOutlet weak var commentsTrackView: UIView!
    @IBOutlet weak var playerControlsView: UIView!
    @IBOutlet weak var speedScrubber: UIView!

    @IBOutlet weak var playerHeightLayoutConstraint: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()

        loadViewFromNib()
    }

    func configure(contentType: ContentType) {
        if contentType == .streamable {
            removeConstraint(playerHeightLayoutConstraint)
            playerHeightLayoutConstraint = playerView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: CGFloat(9/16))
            playerHeightLayoutConstraint.isActive = true
        }

        commentsTrackView.isHidden = contentType == .image
        playerControlsView.isHidden = contentType == .image
    }

    @IBAction func showSpeedScrubber(_ sender: Any) {
        speedScrubber.isHidden = !speedScrubber.isHidden
    }

}
