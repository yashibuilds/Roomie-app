import SwiftUI
import FirebaseFirestore
import FirebaseAuth

class AuthManager: ObservableObject {
    @Published var currentUser: User? // nil if no user is logged in
    @Published var isAuthenticated: Bool = false // true if someone is logged in
    private let db = Firestore.firestore()
    
    /* signUp:
    1. Ask Firebase Auth to create a new user with the given email and password
    2. Check if there was an error from Firebase. If so, stop and return the failure.
    3. Get the user object from Firebase (UID and email).
     
     
     */
    
    
    
    func signUp(email: String, password: String, name: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult: AuthDataResult?, error: Error?) in
            // check for error
            if let potentialError = error {
                completion(.failure(potentialError))
                return
            }
            
            // get the user from Firebase
            if let firebaseUser = authResult?.user {
                let userID = firebaseUser.uid
                
                // create the User object
                let user = User(id: userID, email: email, name: name, deviceToken: nil, roomID: nil, createdAt: Date())
                
                // convert User object to dictionary
                user.toDictionary()
            }
        
        }
    }
}
