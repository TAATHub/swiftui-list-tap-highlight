import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.contentView.backgroundColor = .clear
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = .init(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        self.backgroundView = backgroundView
        
        let selectedBackgroundView = UIView()
        selectedBackgroundView.backgroundColor = .init(red: 255/255, green: 192/255, blue: 203/255, alpha: 1)
        self.selectedBackgroundView = selectedBackgroundView
    }
    
//    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
//        super.setHighlighted(highlighted, animated: animated)
//
//        let backGroundColor: UIColor = .init(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
//        let highlightedBackGroundColor: UIColor = .init(red: 255/255, green: 192/255, blue: 203/255, alpha: 1)
//        self.contentView.backgroundColor = highlighted ? highlightedBackGroundColor : backGroundColor
//    }
}
