import Foundation

struct Operator: Codable, Comparable, Equatable,Identifiable {
    let id: String
    let name: String

    var avatar: String {
        "头像_"+name
    }

    var portraits: [String] {
        ["立绘_"+name+"_1","立绘_"+name+"_2"]
    }
    
    static func < (lhs: Operator, rhs: Operator) -> Bool {
        lhs.name < rhs.name
    }
    
    static let example = Operator(id: "CR01", name: "浊心斯卡蒂")
    
}
