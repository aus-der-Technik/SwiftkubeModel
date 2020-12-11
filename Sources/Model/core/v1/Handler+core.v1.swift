//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.13
/// core.v1.Handler
///

import Foundation

public extension core.v1 {

	///
	/// Handler defines a specific action that should be taken
	///
	struct Handler: KubernetesResource {
		///
		/// One and only one of the following should be specified. Exec specifies the action to take.
		///
		public var exec: core.v1.ExecAction?
		///
		/// HTTPGet specifies the http request to perform.
		///
		public var httpGet: core.v1.HTTPGetAction?
		///
		/// TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
		///
		public var tcpSocket: core.v1.TCPSocketAction?
		///
		/// Default memberwise initializer
		///
		public init(
			exec: core.v1.ExecAction? = nil,
			httpGet: core.v1.HTTPGetAction? = nil,
			tcpSocket: core.v1.TCPSocketAction? = nil
		) {
			self.exec = exec
			self.httpGet = httpGet
			self.tcpSocket = tcpSocket
		}
	}
}

///
/// Codable conformance
///
extension core.v1.Handler {

	private enum CodingKeys: String, CodingKey {

		case exec = "exec"
		case httpGet = "httpGet"
		case tcpSocket = "tcpSocket"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.exec = try container.decodeIfPresent(core.v1.ExecAction.self, forKey: .exec)
		self.httpGet = try container.decodeIfPresent(core.v1.HTTPGetAction.self, forKey: .httpGet)
		self.tcpSocket = try container.decodeIfPresent(core.v1.TCPSocketAction.self, forKey: .tcpSocket)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.exec, forKey: .exec)
		try container.encode(self.httpGet, forKey: .httpGet)
		try container.encode(self.tcpSocket, forKey: .tcpSocket)
	}

}

