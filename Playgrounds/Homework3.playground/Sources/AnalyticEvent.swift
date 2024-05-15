
// AnalyticEvent defines an event that will be used by an
// analytics service.
public protocol AnalyticEvent {
    associatedtype T: EventType
    
    var type: T { get }
    var parameters: [String: Any] { get }
}

extension AnalyticEvent {
    var name: String {
        return self.type.name
    }
}


// ScreenViewEvent implements the AnalyticEvent protocol for
// events related to the screen view.
public struct ScreenViewEvent: AnalyticEvent {
    public let type: Event = Event(name: "screenViewEvent")
    public var parameters: [String: Any]
    
    public init(_ parameters: [String : Any]) {
        self.parameters = parameters
    }
}

// UserActionEvent implements the EventType protocol for
// events related to actions triggered by the user.
public struct UserActionEvent: AnalyticEvent {
    public let type: Event = Event(name: "userActionEvent")
    public var parameters: [String: Any]
    
    public init(_ parameters: [String : Any]) {
        self.parameters = parameters
    }
}

