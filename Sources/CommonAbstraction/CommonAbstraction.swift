// The Swift Programming Language
// https://docs.swift.org/swift-book

import Combine
import Foundation

public enum ObservableServiceStatus {
    case stopped, running, notStarted, receivedInfo(Decodable)
}

public enum ObservableServiceError: Error {
    case unknown
}

public protocol ObservableServiceProtocol {
    var status: CurrentValueSubject<ObservableServiceStatus, ObservableServiceError> { get }

    func startObserving()
    func stopObserving()
}
