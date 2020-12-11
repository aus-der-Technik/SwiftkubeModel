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
/// core.v1.PersistentVolumeClaimSpec
///

import Foundation

public extension core.v1 {

	///
	/// PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
	///
	struct PersistentVolumeClaimSpec: KubernetesResource {
		///
		/// AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
		///
		public var accessModes: [String]?
		///
		/// This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot - Beta) * An existing PVC (PersistentVolumeClaim) * An existing custom resource/object that implements data population (Alpha) In order to use VolumeSnapshot object types, the appropriate feature gate must be enabled (VolumeSnapshotDataSource or AnyVolumeDataSource) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the specified data source is not supported, the volume will not be created and the failure will be reported as an event. In the future, we plan to support more data source types and the behavior of the provisioner may change.
		///
		public var dataSource: core.v1.TypedLocalObjectReference?
		///
		/// Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
		///
		public var resources: core.v1.ResourceRequirements?
		///
		/// A label query over volumes to consider for binding.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
		///
		public var storageClassName: String?
		///
		/// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
		///
		public var volumeMode: String?
		///
		/// VolumeName is the binding reference to the PersistentVolume backing this claim.
		///
		public var volumeName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			accessModes: [String]? = nil,
			dataSource: core.v1.TypedLocalObjectReference? = nil,
			resources: core.v1.ResourceRequirements? = nil,
			selector: meta.v1.LabelSelector? = nil,
			storageClassName: String? = nil,
			volumeMode: String? = nil,
			volumeName: String? = nil
		) {
			self.accessModes = accessModes
			self.dataSource = dataSource
			self.resources = resources
			self.selector = selector
			self.storageClassName = storageClassName
			self.volumeMode = volumeMode
			self.volumeName = volumeName
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PersistentVolumeClaimSpec {

	private enum CodingKeys: String, CodingKey {

		case accessModes = "accessModes"
		case dataSource = "dataSource"
		case resources = "resources"
		case selector = "selector"
		case storageClassName = "storageClassName"
		case volumeMode = "volumeMode"
		case volumeName = "volumeName"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.accessModes = try container.decodeIfPresent([String].self, forKey: .accessModes)
		self.dataSource = try container.decodeIfPresent(core.v1.TypedLocalObjectReference.self, forKey: .dataSource)
		self.resources = try container.decodeIfPresent(core.v1.ResourceRequirements.self, forKey: .resources)
		self.selector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .selector)
		self.storageClassName = try container.decodeIfPresent(String.self, forKey: .storageClassName)
		self.volumeMode = try container.decodeIfPresent(String.self, forKey: .volumeMode)
		self.volumeName = try container.decodeIfPresent(String.self, forKey: .volumeName)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.accessModes, forKey: .accessModes)
		try container.encode(self.dataSource, forKey: .dataSource)
		try container.encode(self.resources, forKey: .resources)
		try container.encode(self.selector, forKey: .selector)
		try container.encode(self.storageClassName, forKey: .storageClassName)
		try container.encode(self.volumeMode, forKey: .volumeMode)
		try container.encode(self.volumeName, forKey: .volumeName)
	}

}

