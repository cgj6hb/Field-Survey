//
//  FieldObservationDetailViewController.swift
//  Field Survey
//
//  Created by Chris Jansson on 11/3/17.
//  Copyright © 2017 Chris Jansson. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    var fieldObservation: FieldObservation?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var classificationImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"

        // Update the classification image, title label and description label
        classificationImageView.image = fieldObservation?.classification.image
        titleLabel.text = fieldObservation?.title
        descriptionLabel.text = fieldObservation?.description
        
        // Update the date label after converting it to a String
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        if let date = fieldObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
