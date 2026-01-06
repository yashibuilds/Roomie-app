import SwiftUI
import FirebaseFirestore
import FirebaseAuth

class AuthManager: ObservableObject {
    @Published var currentUser: User? // nil if no user is logged in
    @Published var isAuthenticated: Bool = false // true if someone is logged in
    private let db = Firestore.firestore()
    
    /* signUp:
     Creates a Firebase account, converts account to User object, saves it to Firestore, updates app state, and reports success or failure
     */
    func signUp(email: String, password: String, name: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] (authResult: AuthDataResult?, error: Error?) in
            // Step 1: Check for error (bad password, email already used, etc)
            if let potentialError = error {
                completion(.failure(potentialError))
                return
            }
            
            // Step 2: Get user ID
            guard let firebaseUser = authResult?.user else {
                completion(.failure(NSError(
                    domain: "SignupError",
                    code: -1,
                    userInfo: [NSLocalizedDescriptionKey: "User not found"]
                )))
                return
            }

            let userID = firebaseUser.uid

            // Step 3: Create User object
            let user = User(
                id: userID,
                email: email,
                name: name,
                deviceToken: nil,
                roomID: nil,
                createdAt: Date()
            )
            
            // Step 4: Convert to dictionary
            let userData = user.toDictionary()
            
            // Step 5: Save to Firestore
            self?.db.collection("users").document(userID).setData(userData) { error in
                // Check if Firestore save failed
                if let potentialError = error {
                    completion(.failure(potentialError))
                    return
                }
                
                // Successfully saved to Firestore!
                // Update state on main thread
                DispatchQueue.main.async {
                    self?.currentUser = user
                    self?.isAuthenticated = true
                }
                
                // Call completion with success
                completion(.success(user))
            }
        }
    }
}
