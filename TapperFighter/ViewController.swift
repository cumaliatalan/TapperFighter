//
//  ViewController.swift
//  TapperFighter
//
//  Created by Cumali Atalan on 13.11.2022.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var userNameTextField: UITextField!
  @IBOutlet weak var highScoreLabel: UILabel!
  @IBOutlet weak var scoreTableView: UITableView!

  var score: [String : Int] = [:]

  override func viewDidLoad() {
    super.viewDidLoad()
    scoreTableView.dataSource = self
    scoreTableView.delegate = self
  }

  @IBAction func startButton(_ sender: Any) {
  }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    score.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = scoreTableView.dequeueReusableCell(withIdentifier: "ScoreCell", for: indexPath) as! ScoreTableViewCell

//    cell?.nameLabel.text =

    return cell

  }


}
