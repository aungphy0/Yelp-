//
//  BusinessesViewController.swift
//  Yelp
//
//  Created by AUNG PHYO on 8/3/18.
//  Copyright © 2018 AUNG PHYO. All rights reserved.
//

import UIKit

class BusinessesViewController: UIViewController {
    
    var businesses: [Business]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Business.searchWithTerm(term: "Thai", completion: { (businesses: [Business]?, error: Error?) -> Void in
            
            self.businesses = businesses
            if let businesses = businesses {
                for business in businesses {
                    print(business.name!)
                    print(business.address!)
                }
            }
            
        }
        )
        
        /* Example of Yelp search with more search options specified
         Business.searchWithTerm(term: "Restaurants", sort: .distance, categories: ["asianfusion", "burgers"]) { (businesses, error) in
         self.businesses = businesses
         for business in self.businesses {
         print(business.name!)
         print(business.address!)
         }
         }
         */    }

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
