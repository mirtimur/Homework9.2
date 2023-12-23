import UIKit

class ThirdViewController: UIViewController {
    
    var x: CGFloat = 0
    var y: CGFloat = 100
    let side: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func addSquares() {
        let squares = UIView(frame: CGRect(x: self.x, y: self.y, width: self.side, height: self.side))
        squares.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        view.addSubview(squares)
    }
    
    func canCreateSquares() -> Bool {
        if self.x + self.side > view.bounds.width {
            return false
        }
        if self.y + self.side > view.bounds.height {
            return false
        }
        return true
    }
    
    func createSquares() {
        if canCreateSquares() {
            addSquares()
            self.x += self.side
            createSquares()
        }
        else if self.x + self.side > view.bounds.width {
            self.x = 0
            self.y += self.side
            if canCreateSquares() {
                createSquares()
            }
        }
    }
    
    @IBAction func createSquaresButtonPressed(_ sender: UIButton) {
        createSquares()
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
