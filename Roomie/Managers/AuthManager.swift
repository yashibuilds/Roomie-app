import SwiftUI
import FirebaseFirestore
import FirebaseAuth

class AuthManager: ObservableObject {
    @Published var currentUser: User? // nil if no user is logged in
    @Published var isAuthenticated: Bool = false // true if someone is logged in
    private let db = Firestore.firestore()
    
    // tell Firebase to create a new account with the given email and password. completion handler tells us if it succeeded or failed after signUp returns.
    func signUp(email: String, password: String, name: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult: AuthDataResult?, error: Error?) in
            // check for error
            if let potentialError = error {
                completion(.failure(potentialError))
                return
            }
            
            // get the user from Firebase
            
        }
    }
}
