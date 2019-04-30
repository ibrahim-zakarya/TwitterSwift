//
//  FriendsSuggestionsDatasourceController.swift
//  TwitterLBTA
//
//  Created by admin on 08/09/2017.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON

class FriendsSuggestionsDatasourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Friedns suggestions vc")
        
        Service.sharedInstance.fetchFriendsSuggestionsFeed { (homeDatasource, err) in
            if let err = err {
//                self.errorMessageLabel.isHidden = false
                
                if let apiError = err as? APIError<Service.JSONError> {
                    
                    if apiError.response?.statusCode != 200 {
//                        self.errorMessageLabel.text = "Status code was not 200"
                    }
                }
                
                return
            }
            
            self.datasource = homeDatasource
        }
    }
    
    
}
