
// EventType defines app events.
public protocol EventType {
    // Why does compiler consider the following as computed property?
    var name: String { get }
}

// Event implements EventType protocol.
public struct Event: EventType {
    public var name: String
}
