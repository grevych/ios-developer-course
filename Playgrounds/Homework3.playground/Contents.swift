// Homework 3

var svc = SomeAnalyticsService()

// Log events with random parameters
svc.logEvent(UserActionEvent([
    "x": 0,
    "y": "value"
]))
svc.logEvent(ScreenViewEvent([
    "a": 1.5,
    "b": ["1", "2", "3"]
]))

/*
 Output:
 
 2024-05-06 19:07:42 +0000: userActionEvent ["y": "value", "x": 0]
 2024-05-06 19:07:42 +0000: screenViewEvent ["a": 1.5, "b": ["1", "2", "3"]]
 
 */
