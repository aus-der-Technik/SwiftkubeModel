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

import Foundation

public extension settings.v1alpha1 {

	///
	/// PodPresetList is a list of PodPreset objects.
	///
	struct PodPresetList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = settings.v1alpha1.PodPreset
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "settings.k8s.io/v1alpha1"

		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PodPresetList"

		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		public var metadata: meta.v1.ListMeta?

		///
		/// Items is a list of schema objects.
		///
		public var items: [settings.v1alpha1.PodPreset]

	}
}

extension settings.v1alpha1.PodPresetList: Sequence {

	public typealias Element = settings.v1alpha1.PodPreset

	public func makeIterator() -> AnyIterator<settings.v1alpha1.PodPreset> {
		return AnyIterator(self.items.makeIterator())
	}
}
