import Foundation


// Classes are slow!
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference types
// Reference types point to an object in memory and update it


// All de data needed for some screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    // Classes have not implicit init like Structs do
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the object is being removed from memory
        // Classes have deinit, Structs don't
    }
    
    func hideButton() {
        showButton = false
    }
}

// Notice that we are using a "let", because:
// the object itself is not changing
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
viewModel.hideButton()
