//
//  AtprotoSyncCrawler.swift
//
//
//  Created by Christopher Jr Riley on 2024-03-14.
//

import Foundation

/// The main data model definition for notifying the crawling service to start or resume crawling.
///
/// - Note: According to the AT Protocol specifications: "Notify a crawling service of a recent update, and that crawling should resume. Intended use is after a
/// gap between repo stream events caused the crawling service to disconnect. Does not require auth; implemented by Relay."
///
/// - SeeAlso: This is based on the following lexicons:\
///  \- [`com.atproto.sync.notifyOfUpdate`][notifyOfUpdate]\
///  \- [`com.atproto.sync.requestCrawl`][requestCrawl]
///
/// [notifyOfUpdate]: https://github.com/bluesky-social/atproto/blob/main/lexicons/com/atproto/sync/notifyOfUpdate.json
/// [requestCrawl]: https://github.com/bluesky-social/atproto/blob/main/lexicons/com/atproto/sync/requestCrawl.json
public struct SyncCrawler: Codable {
    /// The hostname that the crawling service resides in.
    ///
    /// - Note: According to the AT Protocol specifications: "Hostname of the current service (usually a PDS) that is notifying of update."
    public let crawlingHostname: URL

    enum CodingKeys: String, CodingKey {
        case crawlingHostname = "hostname"
    }
}