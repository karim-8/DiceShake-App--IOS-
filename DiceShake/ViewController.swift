
import UIKit

class ViewController: UIViewController {

    var indeximage1 = 0
    var indexImage2 = 0
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
   
let diceArray = //images names
    ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateImage()  {
        //generating random numbers from 1...6
        indeximage1 = Int(arc4random_uniform(6))
        indexImage2 = Int(arc4random_uniform(6))
        
        //change images upon the random values
        imageView1.image = UIImage(named: diceArray[indeximage1])
        imageView2.image = UIImage(named: diceArray[indexImage2])
    }
    
    @IBAction func didButtonPressed(_ sender: Any) {
        updateImage()
    }
    //when device shaked
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
         updateImage()
            
        }
    }
    

}

