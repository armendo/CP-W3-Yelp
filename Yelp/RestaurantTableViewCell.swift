//
//  RestaurantTableViewCell.swift
//  Yelp
//
//  Created by Fer on 2/12/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

  @IBOutlet weak var labelTypeOfFood: UILabel!
  @IBOutlet weak var labelName: UILabel!
  @IBOutlet weak var labelDistance: UILabel!
  @IBOutlet weak var labelAddress: UILabel!
  @IBOutlet weak var labelReview: UILabel!
  @IBOutlet weak var imageThumbnail: UIImageView!
  @IBOutlet weak var imageRating: UIImageView!

  var business: Business! {
    didSet{
      labelName.text        = business.name
      labelAddress.text     = business.address
      labelTypeOfFood.text  = business.categories
      labelDistance.text    = business.distance
      labelReview.text      = "\(business.reviewCount!)"
      imageRating.setImageWithURL(business.ratingImageURL!)
      imageThumbnail.setImageWithURL(business.imageURL!)
    }
  }
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
