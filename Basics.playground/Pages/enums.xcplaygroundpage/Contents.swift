import Foundation

enum CardBrandOption {
    case ford
    case toyota
    case honda
    
    // case ford, toyota, honda
    
    var title: String {
        switch self {
        case .ford: return "Ford"
        case .toyota: return "Toyota"
        case .honda: return "Honda"
        }
    }
}

struct CardModel {
    let brand: CardBrandOption
    let model: String
}

var car1 = CardModel(brand: .ford, model: "Focus")
var car2 = CardModel(brand: .toyota, model: "Camry")

print(car1.brand.title)
