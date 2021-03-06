/*
 * Copyright (C) 2017 - present Instructure, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

/* This is an auto-generated file. */

struct Conversation {
    static let read = "read"
    static let unread = "unread"
    static let starred = "starred"
    static let archived = "archived"

    let id: Int
    let subject: String
    let workflowState: String
    let lastMessage: String
    let lastMessageAt: String
    let lastAuthoredMessage: String
    let lastAuthoredMessageAt: String
    let messageCount: Int
    let isPrivate: Bool
    let starred: Bool
    let messages: [ConversationMessage]
    let participatingUserIds: [Int]
    let contextCode: String
}
