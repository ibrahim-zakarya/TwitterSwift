//
//  UserProfileDatasourceController.swift
//  TwitterLBTA
//
//  Created by admin on 08/09/2017.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents
import SwiftyJSON
import TRON

class UserProfileDatasourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Service.sharedInstance.fetchUserProfileInfo { (userProfileDatasource, err) in
            if let err = err {
                
                if let apiError = err as? APIError<Service.JSONError> {
                    
                    if apiError.response?.statusCode != 200 {
                    }
                }
                
                return
            }
            
            self.datasource = userProfileDatasource
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 1000)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //first section of users
        if indexPath.section == 0 {
            
            return CGSize(width: view.frame.width, height: 200)
            
        }
        return CGSize(width: view.frame.width, height: 200)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        collectionView?.contentInset = UIEdgeInsets(top: -65, left: 0, bottom: 0, right: 0)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        setupNavBarButton()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    
    func setupNavBarButton() {
        self.navigationController?.navigationBar.topItem?.title = ""
        
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "left-arrow")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "left-arrow")
        navigationController?.navigationBar.tintColor = .white
        
        let infoImage = UIImage(named: "more-button")
        
//        let imgWidth = infoImage?.size.width
//        let imgHeight = infoImage?.size.height
        let button:UIButton = UIButton()
        button.setBackgroundImage(infoImage, for: .normal)
//        button.addTarget(self, action: Selector("openInfo"), for: UIControlEvents.touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)

    }
    
    
    
    
    
    
    
}
