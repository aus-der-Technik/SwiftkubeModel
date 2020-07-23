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

public extension meta.v1 {

	///
	/// APIResource specifies the name of a resource and whether it is namespaced.
	///
	struct APIResource: KubernetesResource {
		///
		/// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
		///
		public var kind: String

		///
		/// categories is a list of the grouped resources this resource belongs to (e.g. 'all')
		///
		public var categories: [String]?

		///
		/// group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
		///
		public var group: String?

		///
		/// name is the plural name of the resource.
		///
		public var name: String

		///
		/// namespaced indicates if a resource is namespaced or not.
		///
		public var namespaced: Bool

		///
		/// shortNames is a list of suggested short names of the resource.
		///
		public var shortNames: [String]?

		///
		/// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
		///
		public var singularName: String

		///
		/// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
		///
		public var storageVersionHash: String?

		///
		/// verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
		///
		public var verbs: [String]

		///
		/// version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
		///
		public var version: String?

	}
}
