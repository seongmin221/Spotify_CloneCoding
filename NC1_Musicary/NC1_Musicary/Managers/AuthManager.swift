//
//  AuthManager.swift
//  NC1_Musicary
//
//  Created by 이성민 on 2022/04/28.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "a35f198bf41e4bd1977026c8eafe34a1"
        static let clientSecret = "b5c83eae85c84a7c977dcb481e33cc11"
    }
    
    private init() {}
    
    public var signInURL: URL?{
        let scopes = "user-read-private"
        let redirectURI = "https://github.com/seongmin221/Spotify_CloneCoding"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ){
        // Get Token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cahceToken(){
        
    }
}
