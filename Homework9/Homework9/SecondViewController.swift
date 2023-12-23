import UIKit

class SecondViewController: UIViewController {
    
    var circleView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createCircleView()
        tapGesture()
        circleTapped()
    }
    
    func createCircleView() {
        let circleSize: CGFloat = 100
        let randomCoordinateX = CGFloat.random(in: 0...(view.bounds.width - circleSize))
        let randomCoordinateY = CGFloat.random(in: 0...(view.bounds.height - circleSize))
        circleView = UIView(frame: CGRect(x: randomCoordinateX, y: randomCoordinateY, width: circleSize, height: circleSize))
        circleView?.backgroundColor = UIColor.green
        circleView?.layer.cornerRadius = circleSize/2
        view.addSubview(circleView!)
    }
    
    func tapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(circleTapped))
        circleView?.addGestureRecognizer(tapGesture)
    }
    
    @objc func circleTapped() {
        let circleSize: CGFloat = 100
        let randomCoordinateX = CGFloat.random(in: 0...(view.bounds.width - circleSize))
        let randomCoordinateY = CGFloat.random(in: 0...(view.bounds.height - circleSize))
        UIView.animate(withDuration: 0.5){
            self.circleView?.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
            self.circleView?.frame = CGRect(x: randomCoordinateX, y: randomCoordinateY, width: circleSize, height: circleSize)
        }
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
