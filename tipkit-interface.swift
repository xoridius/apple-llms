// swift-interface-format-version: 1.0
// swift-compiler-version: Apple Swift version 6.1 (swiftlang-6.1.0.110.5 clang-1700.0.13.3)
// swift-module-flags: -target arm64e-apple-ios18.4 -enable-objc-interop -enable-library-evolution -swift-version 6 -enforce-exclusivity=checked -Osize -library-level api -enable-experimental-feature IsolatedAny -enable-experimental-feature IsolatedAny -package-name com.apple.TipKit -target-min-inlining-version min -enable-experimental-feature DebugDescriptionMacro -enable-upcoming-feature ExistentialAny -user-module-version 92.4.19 -module-name TipKit
// swift-module-flags-ignorable:  -interface-compiler-version 6.1
import Foundation
import Swift
@_exported import SwiftUI
import _Concurrency
import _StringProcessing
import _SwiftConcurrencyShims
infix operator ++ : DefaultPrecedence
infix operator +- : DefaultPrecedence
infix operator -- : DefaultPrecedence
infix operator -+ : DefaultPrecedence
extension TipKit.Tips.Event {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @dynamicMemberLookup public struct Donation : Swift.Codable, Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public let date: Foundation.Date
    public subscript<Value>(dynamicMember keyPath: Swift.KeyPath<DonationInfo, Value>) -> Value {
      get
    }
    public func encode(to encoder: any Swift.Encoder) throws
    public init(from decoder: any Swift.Decoder) throws
  }
}
extension Swift.Sequence {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func donatedWithin<DonationInfo>(_ timeRange: TipKit.Tips.DonationTimeRange) -> [Self.Element] where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Self.Element == TipKit.Tips.Event<DonationInfo>.Donation
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func largestSubset<DonationInfo, Value>(groupedBy keyPath: Swift.KeyPath<DonationInfo, Value>) -> [Self.Element] where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Value : Swift.Hashable, Self.Element == TipKit.Tips.Event<DonationInfo>.Donation
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func smallestSubset<DonationInfo, Value>(groupedBy keyPath: Swift.KeyPath<DonationInfo, Value>) -> [Self.Element] where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Value : Swift.Hashable, Self.Element == TipKit.Tips.Event<DonationInfo>.Donation
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct EmptyDonation : Swift.Codable, Swift.Sendable {
    public func encode(to encoder: any Swift.Encoder) throws
    public init(from decoder: any Swift.Decoder) throws
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct DonationTimeRange : Swift.Hashable, Swift.Codable, Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var minute: TipKit.Tips.DonationTimeRange {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var hour: TipKit.Tips.DonationTimeRange {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var day: TipKit.Tips.DonationTimeRange {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var week: TipKit.Tips.DonationTimeRange {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func minutes(_ value: Swift.Int) -> TipKit.Tips.DonationTimeRange
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func hours(_ value: Swift.Int) -> TipKit.Tips.DonationTimeRange
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func days(_ value: Swift.Int) -> TipKit.Tips.DonationTimeRange
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func weeks(_ value: Swift.Int) -> TipKit.Tips.DonationTimeRange
    public static func == (a: TipKit.Tips.DonationTimeRange, b: TipKit.Tips.DonationTimeRange) -> Swift.Bool
    public func encode(to encoder: any Swift.Encoder) throws
    public func hash(into hasher: inout Swift.Hasher)
    public var hashValue: Swift.Int {
      get
    }
    public init(from decoder: any Swift.Decoder) throws
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct Event<DonationInfo> : Swift.Identifiable, Swift.Sendable where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public var id: Swift.String {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public var donations: [TipKit.Tips.Event<DonationInfo>.Donation] {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public init(id: Swift.String)
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public init(id: Swift.String) where DonationInfo == TipKit.Tips.EmptyDonation
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias ID = Swift.String
  }
}
extension TipKit.Tips.Event {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func donate() async where DonationInfo == TipKit.Tips.EmptyDonation
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func donate(_ donation: DonationInfo) async
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func sendDonation(_ completion: (@Sendable () -> Swift.Void)? = nil) where DonationInfo == TipKit.Tips.EmptyDonation
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func sendDonation(_ donation: DonationInfo, _ completion: (@Sendable () -> Swift.Void)? = nil)
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) public protocol EventPredicateExpression<Output> : Foundation.PredicateExpression {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) extension Foundation.PredicateExpressions.Equal : TipKit.EventPredicateExpression where LHS : TipKit.EventPredicateExpression, RHS : TipKit.EventPredicateExpression {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) extension Foundation.PredicateExpressions.NotEqual : TipKit.EventPredicateExpression where LHS : TipKit.EventPredicateExpression, RHS : TipKit.EventPredicateExpression {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) extension Foundation.PredicateExpressions.Comparison : TipKit.EventPredicateExpression where LHS : TipKit.EventPredicateExpression, RHS : TipKit.EventPredicateExpression {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) extension Foundation.PredicateExpressions.KeyPath : TipKit.EventPredicateExpression where Root : TipKit.EventPredicateExpression {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) extension Foundation.PredicateExpressions.Value : TipKit.EventPredicateExpression {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) extension Foundation.PredicateExpressions.Variable : TipKit.EventPredicateExpression {
}
extension Foundation.PredicateExpressions {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public struct DonationFilter<DonationInfo, Value, Input> : TipKit.EventPredicateExpression, Swift.Sendable where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation] {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public func evaluate(_ bindings: Foundation.PredicateBindings) throws -> [TipKit.Tips.Event<DonationInfo>.Donation]
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias Output = [TipKit.Tips.Event<DonationInfo>.Donation]
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public static func build_DonationFilter<DonationInfo, Input, Value>(_ input: Input, keyPath: Swift.KeyPath<DonationInfo, Value>, op: Foundation.PredicateExpressions.DonationFilterOperator, value: Value) -> Foundation.PredicateExpressions.DonationFilter<DonationInfo, Value, Input> where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Sendable, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation]
}
extension Foundation.PredicateExpressions {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public struct DonatedWithin<DonationInfo, Input> : TipKit.EventPredicateExpression, Swift.Sendable where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation] {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public func evaluate(_ bindings: Foundation.PredicateBindings) throws -> [TipKit.Tips.Event<DonationInfo>.Donation]
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias Output = [TipKit.Tips.Event<DonationInfo>.Donation]
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public static func build_donatedWithin<DonationInfo, Input>(_ input: Input, _ timeRange: TipKit.Tips.DonationTimeRange) -> Foundation.PredicateExpressions.DonatedWithin<DonationInfo, Input> where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation]
}
extension Foundation.PredicateExpressions {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public struct LargestSubset<DonationInfo, Value, Input> : TipKit.EventPredicateExpression, Swift.Sendable where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Hashable, Value : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation] {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public func evaluate(_ bindings: Foundation.PredicateBindings) throws -> [TipKit.Tips.Event<DonationInfo>.Donation]
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias Output = [TipKit.Tips.Event<DonationInfo>.Donation]
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public static func build_largestSubset<DonationInfo, Input, Value>(_ input: Input, groupedBy keyPath: Swift.KeyPath<DonationInfo, Value>) -> Foundation.PredicateExpressions.LargestSubset<DonationInfo, Value, Input> where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Hashable, Value : Swift.Sendable, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation]
}
extension Foundation.PredicateExpressions {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public struct SmallestSubset<DonationInfo, Value, Input> : TipKit.EventPredicateExpression, Swift.Sendable where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Hashable, Value : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation] {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public func evaluate(_ bindings: Foundation.PredicateBindings) throws -> [TipKit.Tips.Event<DonationInfo>.Donation]
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias Output = [TipKit.Tips.Event<DonationInfo>.Donation]
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public static func build_smallestSubset<DonationInfo, Input, Value>(_ input: Input, groupedBy keyPath: Swift.KeyPath<DonationInfo, Value>) -> Foundation.PredicateExpressions.SmallestSubset<DonationInfo, Value, Input> where DonationInfo : Swift.Decodable, DonationInfo : Swift.Encodable, DonationInfo : Swift.Sendable, Input : Swift.Sendable, Input : TipKit.EventPredicateExpression, Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Hashable, Value : Swift.Sendable, Input.Output == [TipKit.Tips.Event<DonationInfo>.Donation]
}
extension Foundation.PredicateExpressions {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public enum DonationFilterOperator : Swift.Codable, Swift.Sendable {
    case equal
    case notEqual
    case lessThan
    case lessThanOrEqual
    case greaterThan
    case greaterThanOrEqual
    public static func == (a: Foundation.PredicateExpressions.DonationFilterOperator, b: Foundation.PredicateExpressions.DonationFilterOperator) -> Swift.Bool
    public func encode(to encoder: any Swift.Encoder) throws
    public func hash(into hasher: inout Swift.Hasher)
    public var hashValue: Swift.Int {
      get
    }
    public init(from decoder: any Swift.Decoder) throws
  }
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
public struct MiniTipViewStyle : TipKit.TipViewStyle {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public func makeBody(configuration: TipKit.MiniTipViewStyle.Configuration) -> some SwiftUICore.View
  
  @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
  public typealias Body = @_opaqueReturnTypeOf("$s6TipKit04MiniA9ViewStyleV8makeBody13configurationQrAA0adE13ConfigurationV_tF", 0) __
}
extension TipKit.TipViewStyle where Self == TipKit.MiniTipViewStyle {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static var miniTip: TipKit.MiniTipViewStyle {
    get
  }
}
@available(*, unavailable)
extension TipKit.MiniTipViewStyle : Swift.Sendable {
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct Parameter<Value> : Swift.Identifiable, Swift.Sendable where Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public var id: Swift.String {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public var wrappedValue: Value {
      get
      set
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public init<T>(_ keyPath: Swift.KeyPath<T, Value>, _ initialValue: Value, _ options: TipKit.Tips.ParameterOption...)
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public init(_ enclosingInstance: (some Any).Type, _ name: Swift.String, _ initialValue: Value, _ options: TipKit.Tips.ParameterOption...)
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias ID = Swift.String
  }
}
extension TipKit.Tips.ParameterOption {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static var transient: TipKit.Tips.ParameterOption {
    get
  }
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) @attached(accessor, names: named(get), named(set)) @attached(peer, names: prefixed(`$`)) public macro Parameter(_ options: TipKit.Tips.ParameterOption...) = #externalMacro(module: "TipKitMacros", type: "ParameterMacro")
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct ParameterOption : Swift.Sendable {
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct Rule : Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public init<Donation>(_ event: TipKit.Tips.Event<Donation>, _ eventBuilder: (Foundation.PredicateExpressions.Variable<TipKit.Tips.Event<Donation>>) -> any TipKit.EventPredicateExpression<Swift.Bool>) where Donation : Swift.Decodable, Donation : Swift.Encodable, Donation : Swift.Sendable
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_documentation(visibility: private) public init<Value>(_ parameter: TipKit.Tips.Parameter<Value>, _ parameterBuilder: (Foundation.PredicateExpressions.Variable<Value>) -> any Foundation.StandardPredicateExpression<Swift.Bool>) where Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Sendable
  }
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) @freestanding(expression) public macro Rule<Donation>(_ event: TipKit.Tips.Event<Donation>, _ body: (TipKit.Tips.Event<Donation>) -> Swift.Bool) -> TipKit.Tips.Rule = #externalMacro(module: "TipKitMacros", type: "EventRuleMacro") where Donation : Swift.Decodable, Donation : Swift.Encodable, Donation : Swift.Sendable
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_documentation(visibility: private) @freestanding(expression) public macro Rule<Value>(_ parameter: TipKit.Tips.Parameter<Value>, _ body: (Value) -> Swift.Bool) -> TipKit.Tips.Rule = #externalMacro(module: "TipKitMacros", type: "ParameterRuleMacro") where Value : Swift.Decodable, Value : Swift.Encodable, Value : Swift.Sendable
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_functionBuilder public struct RuleBuilder {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildBlock() -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildExpression(_ child: TipKit.Tips.Rule) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_disfavoredOverload public static func buildExpression(_ child: TipKit.Tips.Rule?) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildExpression(_ child: [TipKit.Tips.Rule]) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_disfavoredOverload public static func buildExpression(_ child: [TipKit.Tips.Rule?]) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildEither(first: [TipKit.Tips.Rule]) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildEither(second: [TipKit.Tips.Rule]) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildOptional(_ component: TipKit.Tips.Rule?) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildOptional(_ component: [TipKit.Tips.Rule?]) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildPartialBlock(first: [TipKit.Tips.Rule]) -> [TipKit.Tips.Rule]
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildPartialBlock(accumulated: [TipKit.Tips.Rule], next: [TipKit.Tips.Rule]) -> [TipKit.Tips.Rule]
  }
}
@available(*, unavailable)
extension TipKit.Tips.RuleBuilder : Swift.Sendable {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_typeEraser(AnyTip) public protocol Tip : Swift.Identifiable, Swift.Sendable {
  var id: Swift.String { get }
  var title: SwiftUICore.Text { get }
  var message: SwiftUICore.Text? { get }
  var image: SwiftUICore.Image? { get }
  @TipKit.Tips.ActionBuilder var actions: [Self.Action] { get }
  @TipKit.Tips.RuleBuilder var rules: [Self.Rule] { get }
  @TipKit.Tips.OptionsBuilder var options: [any TipKit.TipOption] { get }
}
extension TipKit.Tip {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var status: Self.Status {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var shouldDisplay: Swift.Bool {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var statusUpdates: _Concurrency.AsyncStream<Self.Status> {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var shouldDisplayUpdates: _Concurrency.AsyncMapSequence<_Concurrency.AsyncStream<Self.Status>, Swift.Bool> {
    get
  }
}
extension TipKit.Tip {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public func invalidate(reason: Self.InvalidationReason)
}
extension TipKit.Tip {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var id: Swift.String {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var message: SwiftUICore.Text? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var image: SwiftUICore.Image? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var rules: [Self.Rule] {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var actions: [Self.Action] {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var options: [any TipKit.TipOption] {
    get
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct Action : Swift.Identifiable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public let id: Swift.String
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public let index: Swift.Int?
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public let handler: () -> Swift.Void
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public let label: @Sendable () -> SwiftUICore.Text
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public init(id: Swift.String? = nil, perform handler: @escaping () -> Swift.Void = {}, _ label: @escaping @Sendable () -> SwiftUICore.Text)
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    nonisolated public init(id: Swift.String? = nil, title: some StringProtocol, perform handler: @escaping () -> Swift.Void = {})
    @usableFromInline
    internal func with(index: Swift.Int) -> TipKit.Tips.Action
    @usableFromInline
    internal func with(index: Swift.Int, viewHandler: ((TipKit.Tips.Action) -> Swift.Void)? = nil) -> TipKit.Tips.Action
    @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
    public typealias ID = Swift.String
  }
}
@available(*, unavailable)
extension TipKit.Tips.Action : Swift.Sendable {
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_functionBuilder public struct ActionBuilder {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildExpression(_ element: TipKit.Tips.Action) -> [TipKit.Tips.Action] {
            [element]
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildExpression(_ component: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            component
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildPartialBlock(first: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            first
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildPartialBlock(accumulated: [TipKit.Tips.Action], next: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            accumulated + next
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildArray(_ components: [[TipKit.Tips.Action]]) -> [TipKit.Tips.Action] {
            components.reduce(into: [], { $0.append(contentsOf: $1) })
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildEither(first component: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            component
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildEither(second component: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            component
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildLimitedAvailability(_ component: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            component
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildOptional(_ component: [TipKit.Tips.Action]?) -> [TipKit.Tips.Action] {
            component ?? []
        }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @inlinable public static func buildFinalResult(_ component: [TipKit.Tips.Action]) -> [TipKit.Tips.Action] {
            component
                .enumerated()
                .map({ idx, action in action.with(index: idx) })
        }
  }
}
@available(*, unavailable)
extension TipKit.Tips.ActionBuilder : Swift.Sendable {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
public struct AnyTip : TipKit.Tip {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var id: Swift.String {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var title: SwiftUICore.Text {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var message: SwiftUICore.Text? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var image: SwiftUICore.Image? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var actions: [TipKit.AnyTip.Action] {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var rules: [TipKit.AnyTip.Rule] {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public var options: [any TipKit.TipOption] {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public init(_ tip: some Tip)
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_documentation(visibility: private) public init(erasing tip: some Tip)
  @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
  public typealias ID = Swift.String
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
public protocol TipOption : Swift.Sendable {
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct IgnoresDisplayFrequency : TipKit.TipOption {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public init(_ ignoresDisplayFrequency: Swift.Bool)
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct MaxDisplayCount : TipKit.TipOption {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public init(_ maxDisplayCount: Swift.Int)
  }
}
extension TipKit.Tips {
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  public struct MaxDisplayDuration : TipKit.TipOption {
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public init(_ maxDisplayDuration: Foundation.TimeInterval)
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_functionBuilder public struct OptionsBuilder {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildExpression(_ child: some TipOption) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_disfavoredOverload public static func buildExpression(_ child: (any TipKit.TipOption)?) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildExpression(_ child: [some TipOption]) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    @_disfavoredOverload public static func buildExpression(_ child: [(any TipKit.TipOption)?]) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildEither(first: some TipOption) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildEither(second: some TipOption) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildOptional(_ component: (any TipKit.TipOption)?) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildOptional(_ component: [(any TipKit.TipOption)?]) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildBlock() -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildPartialBlock(first: some TipOption) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildPartialBlock(accumulated: some TipOption, next: some TipOption) -> some TipKit.TipOption
    
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func buildFinalResult(_ component: some TipOption) -> [any TipKit.TipOption]
  }
}
@available(*, unavailable)
extension TipKit.Tips.OptionsBuilder : Swift.Sendable {
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public enum Status : Swift.Hashable, Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    case pending
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    case available
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    case invalidated(TipKit.Tips.InvalidationReason)
    public static func == (a: TipKit.Tips.Status, b: TipKit.Tips.Status) -> Swift.Bool
    public func hash(into hasher: inout Swift.Hasher)
    public var hashValue: Swift.Int {
      get
    }
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public enum InvalidationReason : Swift.Hashable, Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    case actionPerformed
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    case displayCountExceeded
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    case displayDurationExceeded
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    case tipClosed
    public static func == (a: TipKit.Tips.InvalidationReason, b: TipKit.Tips.InvalidationReason) -> Swift.Bool
    public func hash(into hasher: inout Swift.Hasher)
    public var hashValue: Swift.Int {
      get
    }
  }
}
extension TipKit.Tip {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias Status = TipKit.Tips.Status
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias InvalidationReason = TipKit.Tips.InvalidationReason
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias Action = TipKit.Tips.Action
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias Rule = TipKit.Tips.Rule
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias Event = TipKit.Tips.Event
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias Option = TipKit.TipOption
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias IgnoresDisplayFrequency = TipKit.Tips.IgnoresDisplayFrequency
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public typealias MaxDisplayCount = TipKit.Tips.MaxDisplayCount
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  public typealias MaxDisplayDuration = TipKit.Tips.MaxDisplayDuration
}
@available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
final public class TipGroup : Swift.Sendable {
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  @_Concurrency.MainActor final public var currentTip: (any TipKit.Tip)? {
    get
  }
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  final public var currentTipUpdates: some _Concurrency.AsyncSequence<any TipKit.Tip, Swift.Never> {
    get
  }
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  public init(_ priority: TipKit.TipGroup.Priority = .firstAvailable, @TipKit.Tips.GroupBuilder _ builder: () -> [any TipKit.Tip])
  @objc deinit
}
@available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
extension TipKit.TipGroup : Observation.Observable {
}
extension TipKit.Tips {
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  @_functionBuilder public struct GroupBuilder {
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildBlock() -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildBlock(_ components: any TipKit.Tip...) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildPartialBlock(first: any TipKit.Tip) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildPartialBlock(first: [any TipKit.Tip]) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildPartialBlock(accumulated: [any TipKit.Tip], next: any TipKit.Tip) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildPartialBlock(accumulated: [any TipKit.Tip], next: [any TipKit.Tip]) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildPartialBlock(first: Swift.Void) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildPartialBlock(first: Swift.Never) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildIf(_ element: [any TipKit.Tip]?) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildEither(first: [any TipKit.Tip]) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildEither(second: [any TipKit.Tip]) -> [any TipKit.Tip]
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func buildArray(_ components: [[any TipKit.Tip]]) -> [any TipKit.Tip]
  }
}
@available(*, unavailable)
extension TipKit.Tips.GroupBuilder : Swift.Sendable {
}
extension TipKit.TipGroup {
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  public enum Priority : Swift.Sendable {
    case firstAvailable
    case ordered
    public static func == (a: TipKit.TipGroup.Priority, b: TipKit.TipGroup.Priority) -> Swift.Bool
    public func hash(into hasher: inout Swift.Hasher)
    public var hashValue: Swift.Int {
      get
    }
  }
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
public struct TipKitError : Swift.Error, Foundation.LocalizedError, Swift.Hashable {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var description: Swift.String {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var errorDescription: Swift.String? {
    get
  }
  public static func == (a: TipKit.TipKitError, b: TipKit.TipKitError) -> Swift.Bool
  public func hash(into hasher: inout Swift.Hasher)
  public var hashValue: Swift.Int {
    get
  }
}
extension TipKit.TipKitError {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static let invalidPredicateValueType: TipKit.TipKitError
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static let missingGroupContainerEntitlements: TipKit.TipKitError
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static let tipsDatastoreAlreadyConfigured: TipKit.TipKitError
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@_Concurrency.MainActor @preconcurrency public struct TipView<Content> : SwiftUICore.View where Content : TipKit.Tip {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public var body: some SwiftUICore.View {
    get
  }
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  @_Concurrency.MainActor @preconcurrency public init(_ tip: (any TipKit.Tip)?, arrowEdge: SwiftUICore.Edge? = nil, action: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) where Content == TipKit.AnyTip
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public init(_ tip: Content, arrowEdge: SwiftUICore.Edge? = nil, action: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in })
  @available(iOS 17.0, tvOS 17.0, watchOS 10.0, visionOS 1.0, macOS 14.0, macCatalyst 17.0, *)
  public typealias Body = @_opaqueReturnTypeOf("$s6TipKit0A4ViewV4bodyQrvp", 0) __<Content>
}
@available(*, unavailable)
extension TipKit.TipView : Swift.Sendable {
}
extension SwiftUICore.View {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipBackground(_ style: some ShapeStyle) -> some SwiftUICore.View
  
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipCornerRadius(_ cornerRadius: CoreFoundation.CGFloat, antialiased: Swift.Bool = true) -> some SwiftUICore.View
  
}
extension SwiftUICore.View {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipImageSize(_ size: CoreFoundation.CGSize) -> some SwiftUICore.View
  
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipImageStyle<S>(_ style: S) -> some SwiftUICore.View where S : SwiftUICore.ShapeStyle
  
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipImageStyle<S1, S2>(_ primary: S1, _ secondary: S2) -> some SwiftUICore.View where S1 : SwiftUICore.ShapeStyle, S2 : SwiftUICore.ShapeStyle
  
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipImageStyle<S1, S2, S3>(_ primary: S1, _ secondary: S2, _ tertiary: S3) -> some SwiftUICore.View where S1 : SwiftUICore.ShapeStyle, S2 : SwiftUICore.ShapeStyle, S3 : SwiftUICore.ShapeStyle
  
}
extension SwiftUICore.View {
  @available(macOS 15.4, iOS 18.4, macCatalyst 18.4, tvOS 18.4, visionOS 2.4, *)
  @available(watchOS, unavailable)
  @_Concurrency.MainActor @preconcurrency public func popoverTip(_ tip: (any TipKit.Tip)?, arrowEdge: SwiftUICore.Edge? = nil, action: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> some SwiftUICore.View
  
}
extension SwiftUICore.View {
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, *)
  @available(watchOS, unavailable)
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency public func popoverTip(_ tip: (any TipKit.Tip)?, arrowEdge: SwiftUICore.Edge = .top, action: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> some SwiftUICore.View
  
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.1, visionOS 1.0, *)
  @available(watchOS, unavailable)
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency public func popoverTip<Content>(_ tip: Content, arrowEdge: SwiftUICore.Edge = .top, action: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> some SwiftUICore.View where Content : TipKit.Tip
  
  @available(tvOS 17.0, *)
  @available(iOS, unavailable)
  @available(macCatalyst, unavailable)
  @available(macOS, unavailable)
  @available(visionOS, unavailable)
  @available(watchOS, unavailable)
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency public func popoverTip<Content>(_ tip: Content, arrowEdge: SwiftUICore.Edge = .top) -> some SwiftUICore.View where Content : TipKit.Tip
  
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
public protocol TipViewStyle {
  typealias Configuration = TipKit.TipViewStyleConfiguration
  associatedtype Body : SwiftUICore.View
  @preconcurrency @_Concurrency.MainActor @SwiftUICore.ViewBuilder func makeBody(configuration: Self.Configuration) -> Self.Body
}
extension SwiftUICore.View {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  @_Concurrency.MainActor @preconcurrency public func tipViewStyle(_ style: some TipViewStyle) -> some SwiftUICore.View
  
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
public struct TipViewStyleConfiguration {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public let tip: any TipKit.Tip
}
extension TipKit.TipViewStyleConfiguration {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var image: SwiftUICore.Image? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var title: SwiftUICore.Text? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var message: SwiftUICore.Text? {
    get
  }
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public var actions: [TipKit.Tips.Action] {
    get
  }
}
@available(*, unavailable)
extension TipKit.TipViewStyleConfiguration : Swift.Sendable {
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
@frozen public enum Tips {
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func configure(_ configuration: [TipKit.Tips.ConfigurationOption] = []) throws
}
@available(watchOS, unavailable, introduced: 10.0)
@available(visionOS, unavailable, introduced: 1.0)
@available(tvOS, unavailable, introduced: 17.0)
@available(macCatalyst, unavailable, introduced: 17.0)
@available(iOS, unavailable, introduced: 17.0)
@available(macOS, unavailable, introduced: 14.0)
@available(*, unavailable)
extension TipKit.Tips : @unchecked Swift.Sendable {
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct ConfigurationOption : Swift.Sendable {
  }
}
extension TipKit.Tips.ConfigurationOption {
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  public static func cloudKitContainer(_ cloudKitContainer: TipKit.Tips.ConfigurationOption.CloudKitContainer?) -> TipKit.Tips.ConfigurationOption
  @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
  public struct CloudKitContainer : Swift.Equatable, Swift.Sendable {
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static var automatic: TipKit.Tips.ConfigurationOption.CloudKitContainer {
      get
    }
    @available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
    public static func named(_ containerName: Swift.String) -> TipKit.Tips.ConfigurationOption.CloudKitContainer
    public static func == (a: TipKit.Tips.ConfigurationOption.CloudKitContainer, b: TipKit.Tips.ConfigurationOption.CloudKitContainer) -> Swift.Bool
  }
}
extension TipKit.Tips.ConfigurationOption {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func displayFrequency(_ displayFrequency: TipKit.Tips.ConfigurationOption.DisplayFrequency) -> TipKit.Tips.ConfigurationOption
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct DisplayFrequency : Swift.Equatable, Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var immediate: TipKit.Tips.ConfigurationOption.DisplayFrequency {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var hourly: TipKit.Tips.ConfigurationOption.DisplayFrequency {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var daily: TipKit.Tips.ConfigurationOption.DisplayFrequency {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var weekly: TipKit.Tips.ConfigurationOption.DisplayFrequency {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var monthly: TipKit.Tips.ConfigurationOption.DisplayFrequency {
      get
    }
    public static func == (a: TipKit.Tips.ConfigurationOption.DisplayFrequency, b: TipKit.Tips.ConfigurationOption.DisplayFrequency) -> Swift.Bool
  }
}
extension TipKit.Tips.ConfigurationOption {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func datastoreLocation(_ storeLocation: TipKit.Tips.ConfigurationOption.DatastoreLocation) -> TipKit.Tips.ConfigurationOption
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public struct DatastoreLocation : Swift.Equatable, Swift.Sendable {
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static var applicationDefault: TipKit.Tips.ConfigurationOption.DatastoreLocation {
      get
    }
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func groupContainer(identifier: Swift.String) throws -> TipKit.Tips.ConfigurationOption.DatastoreLocation
    @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
    public static func url(_ url: Foundation.URL) -> TipKit.Tips.ConfigurationOption.DatastoreLocation
    public static func == (a: TipKit.Tips.ConfigurationOption.DatastoreLocation, b: TipKit.Tips.ConfigurationOption.DatastoreLocation) -> Swift.Bool
  }
}
extension TipKit.Tips {
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func resetDatastore() throws
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func showAllTipsForTesting()
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func showTipsForTesting(_ tips: [any TipKit.Tip.Type])
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func hideAllTipsForTesting()
  @available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
  public static func hideTipsForTesting(_ tips: [any TipKit.Tip.Type])
}
@objc @_inheritsConvenienceInitializers @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@_Concurrency.MainActor @preconcurrency final public class TipUICollectionReusableView : UIKit.UICollectionReusableView {
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var cornerRadius: CoreFoundation.CGFloat {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageSize: CoreFoundation.CGSize {
    get
    set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageStyle: (any SwiftUICore.ShapeStyle)? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var viewStyle: any TipKit.TipViewStyle {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc override final public var backgroundColor: UIKit.UIColor? {
    @objc get
    @objc set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @discardableResult
  @_Concurrency.MainActor @preconcurrency final public func configureTip(_ tip: any TipKit.Tip, arrowEdge: SwiftUICore.Edge? = nil, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> Self
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @discardableResult
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency final public func configureTip(_ tip: some Tip, arrowEdge: SwiftUICore.Edge? = nil, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> Self
  @objc deinit
  @_Concurrency.MainActor @preconcurrency @objc override dynamic public init(frame: CoreFoundation.CGRect)
  @_Concurrency.MainActor @preconcurrency @objc required dynamic public init?(coder: Foundation.NSCoder)
}
@objc @_inheritsConvenienceInitializers @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@_Concurrency.MainActor @preconcurrency final public class TipUICollectionViewCell : UIKit.UICollectionViewCell {
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var cornerRadius: CoreFoundation.CGFloat {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageSize: CoreFoundation.CGSize {
    get
    set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageStyle: (any SwiftUICore.ShapeStyle)? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var viewStyle: any TipKit.TipViewStyle {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency @objc override final public var backgroundColor: UIKit.UIColor? {
    @objc get
    @objc set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @discardableResult
  @_Concurrency.MainActor @preconcurrency final public func configureTip(_ tip: any TipKit.Tip, arrowEdge: SwiftUICore.Edge? = nil, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> Self
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @discardableResult
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency final public func configureTip(_ tip: some Tip, arrowEdge: SwiftUICore.Edge? = nil, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in }) -> Self
  @_Concurrency.MainActor @preconcurrency @objc override dynamic public init(frame: CoreFoundation.CGRect)
  @_Concurrency.MainActor @preconcurrency @objc required dynamic public init?(coder: Foundation.NSCoder)
  @objc deinit
}
@objc @_inheritsConvenienceInitializers @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@_Concurrency.MainActor @preconcurrency final public class TipUIPopoverViewController : UIKit.UIViewController {
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var backgroundColor: UIKit.UIColor? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageSize: CoreFoundation.CGSize {
    get
    set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageStyle: (any SwiftUICore.ShapeStyle)? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var viewStyle: any TipKit.TipViewStyle {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var presentationDelegate: (any UIKit.UIPopoverPresentationControllerDelegate)? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var sourceItem: (any UIKit.UIPopoverPresentationControllerSourceItem)? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc override final public var popoverPresentationController: UIKit.UIPopoverPresentationController? {
    @objc get
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @_Concurrency.MainActor @preconcurrency convenience public init(_ tip: any TipKit.Tip, sourceItem: any UIKit.UIPopoverPresentationControllerSourceItem, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in })
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency convenience public init(_ tip: some Tip, sourceItem: any UIKit.UIPopoverPresentationControllerSourceItem, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in })
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc override final public func loadView()
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc override final public func viewDidLoad()
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc override final public func viewDidLayoutSubviews()
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc override final public func viewWillAppear(_ animated: Swift.Bool)
  @_Concurrency.MainActor @preconcurrency @objc override dynamic public init(nibName nibNameOrNil: Swift.String?, bundle nibBundleOrNil: Foundation.Bundle?)
  @_Concurrency.MainActor @preconcurrency @objc required dynamic public init?(coder: Foundation.NSCoder)
  @objc deinit
}
@objc @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@_Concurrency.MainActor @preconcurrency final public class TipUIView : UIKit.UIView {
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency @objc override final public var backgroundColor: UIKit.UIColor? {
    @objc get
    @objc set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var cornerRadius: CoreFoundation.CGFloat {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageSize: CoreFoundation.CGSize {
    get
    set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @_Concurrency.MainActor @preconcurrency final public var imageStyle: (any SwiftUICore.ShapeStyle)? {
    get
    set
  }
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_Concurrency.MainActor @preconcurrency final public var viewStyle: any TipKit.TipViewStyle {
    get
    set
  }
  @available(iOS 18.0, macCatalyst 18.0, visionOS 2.0, *)
  @_Concurrency.MainActor @preconcurrency public init(_ tip: any TipKit.Tip, arrowEdge: SwiftUICore.Edge? = nil, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in })
  @available(iOS 17.0, macCatalyst 17.0, visionOS 1.0, *)
  @_disfavoredOverload @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency public init(_ tip: some Tip, arrowEdge: SwiftUICore.Edge? = nil, actionHandler: @escaping (TipKit.Tips.Action) -> Swift.Void = { _ in })
  @available(*, unavailable)
  @_documentation(visibility: private) @_Concurrency.MainActor @preconcurrency @objc required dynamic public init?(coder: Foundation.NSCoder)
  @objc deinit
}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
extension TipKit.Tips : Swift.BitwiseCopyable {}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
extension Foundation.PredicateExpressions.DonationFilterOperator : Swift.Equatable {}
@available(macOS 14.0, iOS 17.0, macCatalyst 17.0, tvOS 17.0, visionOS 1.0, watchOS 10.0, *)
extension Foundation.PredicateExpressions.DonationFilterOperator : Swift.Hashable {}
@available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
extension TipKit.TipGroup.Priority : Swift.Equatable {}
@available(macOS 15.0, iOS 18.0, macCatalyst 18.0, tvOS 18.0, visionOS 2.0, watchOS 11.0, *)
extension TipKit.TipGroup.Priority : Swift.Hashable {}
