//
//  UserProfileHeader.swift
//  TwitterLBTA
//
//  Created by admin on 08/09/2017.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents

class UserProfileCell: DatasourceCell {
    
    
    
    
    
}



class UserProfileHeader: DatasourceCell {
    
    let userProfileCover: CachedImageView = {
        let image = CachedImageView()
        image.image = UIImage(named: "cover")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let profileImageView: CachedImageView = {
        let image = CachedImageView()
        image.image = UIImage(named: "profile_image")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 4
        return image
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(twitterBlue, for: .normal)
        return button
    }()
    
    let getNotificationButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()
    
    let userNameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Ibrahim Zakarya Full Name"
//        lbl.font = UIFont.boldSystemFont(ofSize: 22)
        lbl.font = UIFont.init(name: "Avenir Next", size: 24)
        return lbl
    }()
    
    let usernameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "@ibrahimzakarya"
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.textColor = .gray
        return lbl
    }()
    
    let userBioTV: UITextView = {
        let tv = UITextView()
//        tv.backgroundColor = .gray
        tv.textContainerInset = UIEdgeInsets.zero
        tv.textContainer.lineFragmentPadding = 0
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.text = "alsdjf asdlf jdsaf jlda sfdas sda a sdfdsa fdsa fd a  dsf sdfsdf sdf dsf dsf sd fsdf sdf    sdfsdfsd fs df sdfsdf sdsdfsdf dfs sdfsdf  fds  fdssdf."
        return tv
    }()
    
    let userAddressLabel: UILabel = {
        let label = UILabel()
        label.text = "Damascuse, Alqadam neborhood"
        label.font = UIFont.init(name: "Avenir", size: 16)
        label.textColor = UIColor(r: 136, g: 153, b: 166)
        return label
    }()
    
    let userWebsiteLabel: UILabel = {
        let label = UILabel()
        label.text = "www.tradinos.com"
        label.textColor = UIColor(r: 136, g: 153, b: 166)
        label.font = UIFont.init(name: "Avenir", size: 16)
        return label
    }()

    let userFollowingButton: UIButton = {
        let button = UIButton()
        button.setTitle("100M Following", for: .normal)
        button.titleLabel?.font = UIFont.init(name: "Avenir", size: 16)
        button.setTitleColor(.black, for: .normal)
        button.contentHorizontalAlignment = .left
        return button
    }()

    let userFollowersButton: UIButton = {
        let button = UIButton()
        button.setTitle("277K Followers", for: .normal)
        button.titleLabel?.font = UIFont.init(name: "Avenir", size: 16)
        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = .gray
        button.contentHorizontalAlignment = .left
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(userProfileCover)
        addSubview(profileImageView)
        addSubview(followButton)
        addSubview(getNotificationButton)
        addSubview(userNameLabel)
        addSubview(usernameLabel)
        addSubview(userBioTV)
        addSubview(userAddressLabel)
        addSubview(userWebsiteLabel)
        addSubview(userFollowersButton)
        addSubview(userFollowingButton)
        
        anchorSubViews()
    }
    
    func anchorSubViews() {
        
        userProfileCover.anchor(topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 150)
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 100, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 100)
        followButton.anchor(userProfileCover.bottomAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 90, heightConstant: 40)
        getNotificationButton.anchor(userProfileCover.bottomAnchor, left: nil, bottom: nil, right: followButton.leftAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 40, heightConstant: 40)
        userNameLabel.anchor(profileImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 0)
        usernameLabel.anchor(userNameLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        userBioTV.anchor(usernameLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 3, rightConstant: 8, widthConstant: 100, heightConstant: 55)
        userAddressLabel.anchor(userBioTV.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        userWebsiteLabel.anchor(userAddressLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        userFollowingButton.anchor(userWebsiteLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 125, heightConstant: 18)
        userFollowersButton.anchor(userWebsiteLabel.bottomAnchor, left: userFollowingButton.rightAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 25, bottomConstant: 0, rightConstant: 0, widthConstant: 125, heightConstant: 18)
        
    }
    
    
    
    
    
    
}





