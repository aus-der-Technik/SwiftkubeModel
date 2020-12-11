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
/// storage.v1.VolumeNodeResources
///

import Foundation

public extension storage.v1 {

	///
	/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
	///
	struct VolumeNodeResources: KubernetesResource {
		///
		/// Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
		///
		public var count: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			count: Int32? = nil
		) {
			self.count = count
		}
	}
}

///
/// Codable conformance
///
extension storage.v1.VolumeNodeResources {

	private enum CodingKeys: String, CodingKey {

		case count = "count"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.count = try container.decodeIfPresent(Int32.self, forKey: .count)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.count, forKey: .count)
	}

}

