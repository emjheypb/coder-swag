//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Mariah Baysic on 3/24/20.
//  Copyright © 2020 SpacedOut. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryTitle.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
    }

}
