import Foundation

struct Dataset: Codable {
    let table: String
    let no: String
    let effectiveDate: String
    let rates: [Fields]

    struct Fields: Codable {
        let currency: String
        let code: String
        let mid: Double
}
}
