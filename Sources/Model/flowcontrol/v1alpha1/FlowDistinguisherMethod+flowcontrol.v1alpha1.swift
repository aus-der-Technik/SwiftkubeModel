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
/// flowcontrol.v1alpha1.FlowDistinguisherMethod
///

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
	///
	struct FlowDistinguisherMethod: KubernetesResource {
		///
		/// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			type: String
		) {
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.FlowDistinguisherMethod {

	private enum CodingKeys: String, CodingKey {

		case type = "type"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.type = try container.decode(String.self, forKey: .type)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.type, forKey: .type)
	}

}

