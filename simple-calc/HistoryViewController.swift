//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Nicholas Olds on 10/22/18.
//  Copyright © 2018 Nicholas Olds. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Navigation
    public var incomingText: [String] = []
    
    @IBOutlet weak var viewLabels: UIView!
    
    public func setIncomingText(incoming: [String]) {
        self.incomingText = incoming
    }
    
    @IBOutlet weak var txtLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let dataArr = incomingText
        var yPos = 90
        for i in 0..<dataArr.count {
            let labelNum = UILabel()
            labelNum.text = dataArr[i]
            labelNum.textAlignment = .center
            labelNum.frame = CGRect( x:10, y:yPos, width:250, height: 80)
            yPos += 80
            viewLabels.addSubview(labelNum)
        }

        
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //Get the new view controller using segue.destination.
         //Pass the selected object to the new view controller.
    }
 

}
