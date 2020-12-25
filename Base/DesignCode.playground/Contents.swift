//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let cardView = UIView()
    let titleLabel = UILabel()
    let backgroundImageView = UIImageView()
    let closeButton = UIButton()
    let captionLabel = UILabel()
    let descriptionLabel = UILabel()
    let coverImageView = UIImageView()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        
        
        titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
        titleLabel.text = "Learn Swift 4"
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        titleLabel.textColor = .white
        
        
        captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
        captionLabel.text = "Design directly in Playground"
        captionLabel.textColor = .white
        
        
        
        coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.image = UIImage(named: "Cover.jpg")
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 14
        
        
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        backgroundImageView.image = #imageLiteral(resourceName: "Chapters Screen@2x.png")
        
        
        descriptionLabel.frame = CGRect(x: 20, y: 448, width: 335, height: 132)
        descriptionLabel.text = "Three years ago, Apple completely revamped their design language for the modern user. It is now much simpler, allowing rather than intricate visual details."
        descriptionLabel.textColor = .black
        descriptionLabel.numberOfLines = 10
        descriptionLabel.alpha = 0
        
        closeButton.frame = CGRect(x: 328, y: 20, width: 28, height: 28)
        closeButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        closeButton.layer.cornerRadius = 14
        closeButton.setImage(#imageLiteral(resourceName: "Action-Close@2x.png"), for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.cardView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
            self.cardView.layer.cornerRadius = 0
            self.cardView.backgroundColor = UIColor.white
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 420)
            self.coverImageView.layer.cornerRadius = 0
            self.titleLabel.frame = CGRect(x: 20, y: 20, width: 374, height: 38)
            self.captionLabel.frame = CGRect(x: 20, y: 370, width: 272, height: 40)
            self.descriptionLabel.alpha = 1.0
            self.closeButton.alpha = 1.0
        }
        animator.startAnimation(afterDelay: 1)
        
        
        
        
        view.addSubview(backgroundImageView)
        cardView.addSubview(descriptionLabel)
        cardView.addSubview(coverImageView)
        cardView.addSubview(captionLabel)
        cardView.addSubview(titleLabel)
        cardView.addSubview(closeButton)
        view.addSubview(cardView)
        self.view = view
    }
    @objc func closeButtonTapped(){
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            self.cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
            self.cardView.layer.cornerRadius = 14
            self.titleLabel.frame = CGRect(x: 16, y: 16, width: 272, height: 38)
            self.captionLabel.frame = CGRect(x: 16, y: 204, width: 272, height: 40)
            self.descriptionLabel.alpha = 0
            self.coverImageView.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
            self.coverImageView.layer.cornerRadius = 14
            self.closeButton.alpha = 0
        }
        animator.startAnimation()
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


