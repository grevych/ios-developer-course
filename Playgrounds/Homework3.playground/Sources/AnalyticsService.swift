import Foundation

// AnalyticsService is the protocol that defines the fundamental behaviour
// for services related to analytics
protocol AnalyticsService {
    var datetime: Date { get }
    mutating func logEvent<T:AnalyticEvent>(_ event: T)
}

// SomeAnalyticsService is an example of analytic service
public struct SomeAnalyticsService: AnalyticsService {
    let datetime = Date()
    private var logs = [String]()
    
    // How to make this function part of an extension to
    // have it by default? I failed to keep the logs variable
    // private
    mutating func addLog(_ log: String) {
        self.logs.append(log)
    }
    
    public mutating func logEvent<T:AnalyticEvent>(_ event: T) {
        let log = "\(datetime): \(event.name) \(event.parameters)"
        self.addLog(log)
        print(log)
    }
    
    public init() {}
}

