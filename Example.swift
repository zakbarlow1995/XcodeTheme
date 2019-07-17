class Journey {
    private var duration: Int
    
    init(lengthInMinutes: Int) {
        self.duration = lengthInMinutes
    }
    
    // A comment and url: https://github.com/zakbarlow1995/XcodeTheme
    func getMinutes() -> Int {
        return self.duration
    }
    
    /// A markdown comment
    var formattedDuration: String {
        var hours = Float(getMinutes()) / 60.0
        hours.round(.down)
        
        switch getMinutes() % 60 {
        case 0:  return "\(Int(hours))h"
        default:  return "\(Int(hours))h \(getMinutes() % 60)m"
        }
    }
}
