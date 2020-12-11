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
/// flowcontrol.v1alpha1.PriorityLevelConfigurationList
///

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// PriorityLevelConfigurationList is a list of PriorityLevelConfiguration objects.
	///
	struct PriorityLevelConfigurationList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = flowcontrol.v1alpha1.PriorityLevelConfiguration
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "flowcontrol.apiserver.k8s.io/v1alpha1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PriorityLevelConfigurationList"
		///
		/// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// `items` is a list of request-priorities.
		///
		public var items: [flowcontrol.v1alpha1.PriorityLevelConfiguration]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [flowcontrol.v1alpha1.PriorityLevelConfiguration]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.PriorityLevelConfigurationList {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case items = "items"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ListMeta.self, forKey: .metadata)
		self.items = try container.decode([flowcontrol.v1alpha1.PriorityLevelConfiguration].self, forKey: .items)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.metadata, forKey: .metadata)
		try container.encode(self.items, forKey: .items)
	}

}

///
/// Sequence iterator for KubernetesResourceList items
///
extension flowcontrol.v1alpha1.PriorityLevelConfigurationList: Sequence {

	public typealias Element = flowcontrol.v1alpha1.PriorityLevelConfiguration

	public func makeIterator() -> AnyIterator<flowcontrol.v1alpha1.PriorityLevelConfiguration> {
		return AnyIterator(self.items.makeIterator())
	}
}

