//
//  UsreProfileDataSource.swift
//  TwitterLBTA
//
//  Created by admin on 08/09/2017.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import LBTAComponents
import SwiftyJSON
import TRON

class UserProfileDatasource: Datasource, JSONDecodable {
    
    let users: [User]
    let tweets: [Tweet]
    
    required init(json: JSON) throws {
        guard let usersJsonArray = json["users"].array, let tweetsJsonArray = json["tweets"].array else {
            throw NSError(domain: "com.letsbuildthatapp", code: 1, userInfo: [NSLocalizedDescriptionKey: "Parsing JSON was not valid."])
        }
        
        //        self.users = usersJsonArray.map{User(json: $0)}
        //        self.tweets = tweetsJsonArray.map{Tweet(json: $0)}
        
        self.users = try usersJsonArray.decode()
        self.tweets = try tweetsJsonArray.decode()
        
    }
    
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserProfileHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    override func numberOfItems(_ section: Int) -> Int {
        
        return tweets.count
    }
}
