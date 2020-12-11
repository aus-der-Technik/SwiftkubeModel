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
/// core.v1.EnvVarSource
///

import Foundation

public extension core.v1 {

	///
	/// EnvVarSource represents a source for the value of an EnvVar.
	///
	struct EnvVarSource: KubernetesResource {
		///
		/// Selects a key of a ConfigMap.
		///
		public var configMapKeyRef: core.v1.ConfigMapKeySelector?
		///
		/// Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
		///
		public var fieldRef: core.v1.ObjectFieldSelector?
		///
		/// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
		///
		public var resourceFieldRef: core.v1.ResourceFieldSelector?
		///
		/// Selects a key of a secret in the pod's namespace
		///
		public var secretKeyRef: core.v1.SecretKeySelector?
		///
		/// Default memberwise initializer
		///
		public init(
			configMapKeyRef: core.v1.ConfigMapKeySelector? = nil,
			fieldRef: core.v1.ObjectFieldSelector? = nil,
			resourceFieldRef: core.v1.ResourceFieldSelector? = nil,
			secretKeyRef: core.v1.SecretKeySelector? = nil
		) {
			self.configMapKeyRef = configMapKeyRef
			self.fieldRef = fieldRef
			self.resourceFieldRef = resourceFieldRef
			self.secretKeyRef = secretKeyRef
		}
	}
}

///
/// Codable conformance
///
extension core.v1.EnvVarSource {

	private enum CodingKeys: String, CodingKey {

		case configMapKeyRef = "configMapKeyRef"
		case fieldRef = "fieldRef"
		case resourceFieldRef = "resourceFieldRef"
		case secretKeyRef = "secretKeyRef"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.configMapKeyRef = try container.decodeIfPresent(core.v1.ConfigMapKeySelector.self, forKey: .configMapKeyRef)
		self.fieldRef = try container.decodeIfPresent(core.v1.ObjectFieldSelector.self, forKey: .fieldRef)
		self.resourceFieldRef = try container.decodeIfPresent(core.v1.ResourceFieldSelector.self, forKey: .resourceFieldRef)
		self.secretKeyRef = try container.decodeIfPresent(core.v1.SecretKeySelector.self, forKey: .secretKeyRef)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.configMapKeyRef, forKey: .configMapKeyRef)
		try container.encode(self.fieldRef, forKey: .fieldRef)
		try container.encode(self.resourceFieldRef, forKey: .resourceFieldRef)
		try container.encode(self.secretKeyRef, forKey: .secretKeyRef)
	}

}

