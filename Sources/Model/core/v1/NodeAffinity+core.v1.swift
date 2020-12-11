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
/// core.v1.NodeAffinity
///

import Foundation

public extension core.v1 {

	///
	/// Node affinity is a group of node affinity scheduling rules.
	///
	struct NodeAffinity: KubernetesResource {
		///
		/// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
		///
		public var preferredDuringSchedulingIgnoredDuringExecution: [core.v1.PreferredSchedulingTerm]?
		///
		/// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
		///
		public var requiredDuringSchedulingIgnoredDuringExecution: core.v1.NodeSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			preferredDuringSchedulingIgnoredDuringExecution: [core.v1.PreferredSchedulingTerm]? = nil,
			requiredDuringSchedulingIgnoredDuringExecution: core.v1.NodeSelector? = nil
		) {
			self.preferredDuringSchedulingIgnoredDuringExecution = preferredDuringSchedulingIgnoredDuringExecution
			self.requiredDuringSchedulingIgnoredDuringExecution = requiredDuringSchedulingIgnoredDuringExecution
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NodeAffinity {

	private enum CodingKeys: String, CodingKey {

		case preferredDuringSchedulingIgnoredDuringExecution = "preferredDuringSchedulingIgnoredDuringExecution"
		case requiredDuringSchedulingIgnoredDuringExecution = "requiredDuringSchedulingIgnoredDuringExecution"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.preferredDuringSchedulingIgnoredDuringExecution = try container.decodeIfPresent([core.v1.PreferredSchedulingTerm].self, forKey: .preferredDuringSchedulingIgnoredDuringExecution)
		self.requiredDuringSchedulingIgnoredDuringExecution = try container.decodeIfPresent(core.v1.NodeSelector.self, forKey: .requiredDuringSchedulingIgnoredDuringExecution)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.preferredDuringSchedulingIgnoredDuringExecution, forKey: .preferredDuringSchedulingIgnoredDuringExecution)
		try container.encode(self.requiredDuringSchedulingIgnoredDuringExecution, forKey: .requiredDuringSchedulingIgnoredDuringExecution)
	}

}

