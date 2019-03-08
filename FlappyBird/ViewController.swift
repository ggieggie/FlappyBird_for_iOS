import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    let gameScene = GameScene(fileNamed: "GameScene")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する
        //let skView = self.view as! SKView
        
        // SKViewをgameSceneに合わせる
        if let skView = view as? SKView {
            gameScene?.scaleMode = .aspectFill
            skView.presentScene(gameScene)
            skView.showsFPS = true
        }
        
        // FPSを表示する
        //skView.showsFPS = true
        
        // ノードの数を表示する
        //skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        //let scene = GameScene(size:skView.frame.size) // ←GameSceneクラスに変更する
        
        // ビューにシーンを表示する
        //skView.presentScene(scene)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    } // --- ここまで追加 ---
}
