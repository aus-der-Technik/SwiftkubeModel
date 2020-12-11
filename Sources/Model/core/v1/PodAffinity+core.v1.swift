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
/// core.v1.PodAffinity
///

import Foundation

public extension core.v1 {

	///
	/// Pod affinity is a group of inter pod affinity scheduling rules.
	///
	struct PodAffinity: KubernetesResource {
		///
		/// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
		///
		public var preferredDuringSchedulingIgnoredDuringExecution: [core.v1.WeightedPodAffinityTerm]?
		///
		/// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
		///
		public var requiredDuringSchedulingIgnoredDuringExecution: [core.v1.PodAffinityTerm]?
		///
		/// Default memberwise initializer
		///
		public init(
			preferredDuringSchedulingIgnoredDuringExecution: [core.v1.WeightedPodAffinityTerm]? = nil,
			requiredDuringSchedulingIgnoredDuringExecution: [core.v1.PodAffinityTerm]? = nil
		) {
			self.preferredDuringSchedulingIgnoredDuringExecution = preferredDuringSchedulingIgnoredDuringExecution
			self.requiredDuringSchedulingIgnoredDuringExecution = requiredDuringSchedulingIgnoredDuringExecution
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PodAffinity {

	private enum CodingKeys: String, CodingKey {

		case preferredDuringSchedulingIgnoredDuringExecution = "preferredDuringSchedulingIgnoredDuringExecution"
		case requiredDuringSchedulingIgnoredDuringExecution = "requiredDuringSchedulingIgnoredDuringExecution"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.preferredDuringSchedulingIgnoredDuringExecution = try container.decodeIfPresent([core.v1.WeightedPodAffinityTerm].self, forKey: .preferredDuringSchedulingIgnoredDuringExecution)
		self.requiredDuringSchedulingIgnoredDuringExecution = try container.decodeIfPresent([core.v1.PodAffinityTerm].self, forKey: .requiredDuringSchedulingIgnoredDuringExecution)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.preferredDuringSchedulingIgnoredDuringExecution, forKey: .preferredDuringSchedulingIgnoredDuringExecution)
		try container.encode(self.requiredDuringSchedulingIgnoredDuringExecution, forKey: .requiredDuringSchedulingIgnoredDuringExecution)
	}

}

