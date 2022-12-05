//
// Copyright 2020 Swiftkube Project
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
/// Kubernetes v1.22.7
///

import Foundation

///
/// A type-erased `KubernetesAPIResource` that wraps the actual resource instance.
///
public struct AnyKubernetesAPIResource: KubernetesAPIResource {

	private enum CodingKeys: String, CodingKey {
		case apiVersion
		case kind
	}

	/// The concrete wrapped resource instance.
	public let resource: KubernetesAPIResource

	/// This resource's `apiVersion`.
	public var apiVersion: String

	/// This resource's `kind`.
	public var kind: String

	/// This resource's `meta.v1.ObjectMeta` object.
	public var metadata: meta.v1.ObjectMeta?

	/// Creates a new type-erased `AnyKubernetesAPIResource` instance wrapping the given resource.
	///
	/// - Parameter resource: The resource to wrap/type-erase
	public init(_ resource: KubernetesAPIResource) {
		self.resource = resource
		self.apiVersion = resource.apiVersion
		self.kind = resource.kind
		self.metadata = resource.metadata
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		let decodedAPIVersion: String?
		if container.contains(.apiVersion) {
			decodedAPIVersion = try container.decode(String.self, forKey: .apiVersion)
		} else {
			decodedAPIVersion = decoder.userInfo[CodingUserInfoKey.apiVersion] as? String
		}

		let decodedKind: String?
		if container.contains(.kind) {
			decodedKind = try container.decode(String.self, forKey: .kind)
		} else {
			decodedKind = decoder.userInfo[CodingUserInfoKey.kind] as? String
		}

		let decodedPluralName = decoder.userInfo[CodingUserInfoKey.resources] as? String

		if let apiVersion = decodedAPIVersion, let kind = decodedKind {
			try self.init(gvk: GroupVersionKind(apiVersion: apiVersion, kind: kind), decoder: decoder)
		} else if let apiVersion = decodedAPIVersion, let pluralName = decodedPluralName {
			try self.init(gvr: GroupVersionResource(apiVersion: apiVersion, resource: pluralName), decoder: decoder)
		} else {
			throw SwiftkubeModelError.decodingError("Couldn't decode resource at: \(container.codingPath)")
		}
	}

	public init(gvk: GroupVersionKind?, decoder: Decoder) throws {
		let decoded: KubernetesAPIResource
		switch gvk {

		case GroupVersionKind.coreV1Binding:
			decoded = try core.v1.Binding(from: decoder)
		case GroupVersionKind.coreV1ComponentStatus:
			decoded = try core.v1.ComponentStatus(from: decoder)
		case GroupVersionKind.coreV1ConfigMap:
			decoded = try core.v1.ConfigMap(from: decoder)
		case GroupVersionKind.coreV1Endpoints:
			decoded = try core.v1.Endpoints(from: decoder)
		case GroupVersionKind.coreV1Event:
			decoded = try core.v1.Event(from: decoder)
		case GroupVersionKind.coreV1LimitRange:
			decoded = try core.v1.LimitRange(from: decoder)
		case GroupVersionKind.coreV1Namespace:
			decoded = try core.v1.Namespace(from: decoder)
		case GroupVersionKind.coreV1Node:
			decoded = try core.v1.Node(from: decoder)
		case GroupVersionKind.coreV1PersistentVolume:
			decoded = try core.v1.PersistentVolume(from: decoder)
		case GroupVersionKind.coreV1PersistentVolumeClaim:
			decoded = try core.v1.PersistentVolumeClaim(from: decoder)
		case GroupVersionKind.coreV1Pod:
			decoded = try core.v1.Pod(from: decoder)
		case GroupVersionKind.coreV1PodTemplate:
			decoded = try core.v1.PodTemplate(from: decoder)
		case GroupVersionKind.coreV1ReplicationController:
			decoded = try core.v1.ReplicationController(from: decoder)
		case GroupVersionKind.coreV1ResourceQuota:
			decoded = try core.v1.ResourceQuota(from: decoder)
		case GroupVersionKind.coreV1Secret:
			decoded = try core.v1.Secret(from: decoder)
		case GroupVersionKind.coreV1Service:
			decoded = try core.v1.Service(from: decoder)
		case GroupVersionKind.coreV1ServiceAccount:
			decoded = try core.v1.ServiceAccount(from: decoder)
		case GroupVersionKind.admissionregistrationV1MutatingWebhookConfiguration:
			decoded = try admissionregistration.v1.MutatingWebhookConfiguration(from: decoder)
		case GroupVersionKind.admissionregistrationV1ValidatingWebhookConfiguration:
			decoded = try admissionregistration.v1.ValidatingWebhookConfiguration(from: decoder)
		case GroupVersionKind.apiextensionsV1CustomResourceDefinition:
			decoded = try apiextensions.v1.CustomResourceDefinition(from: decoder)
		case GroupVersionKind.apiregistrationV1APIService:
			decoded = try apiregistration.v1.APIService(from: decoder)
		case GroupVersionKind.appsV1ControllerRevision:
			decoded = try apps.v1.ControllerRevision(from: decoder)
		case GroupVersionKind.appsV1DaemonSet:
			decoded = try apps.v1.DaemonSet(from: decoder)
		case GroupVersionKind.appsV1Deployment:
			decoded = try apps.v1.Deployment(from: decoder)
		case GroupVersionKind.appsV1ReplicaSet:
			decoded = try apps.v1.ReplicaSet(from: decoder)
		case GroupVersionKind.appsV1StatefulSet:
			decoded = try apps.v1.StatefulSet(from: decoder)
		case GroupVersionKind.authenticationV1TokenRequest:
			decoded = try authentication.v1.TokenRequest(from: decoder)
		case GroupVersionKind.authenticationV1TokenReview:
			decoded = try authentication.v1.TokenReview(from: decoder)
		case GroupVersionKind.authorizationV1LocalSubjectAccessReview:
			decoded = try authorization.v1.LocalSubjectAccessReview(from: decoder)
		case GroupVersionKind.authorizationV1SelfSubjectAccessReview:
			decoded = try authorization.v1.SelfSubjectAccessReview(from: decoder)
		case GroupVersionKind.authorizationV1SelfSubjectRulesReview:
			decoded = try authorization.v1.SelfSubjectRulesReview(from: decoder)
		case GroupVersionKind.authorizationV1SubjectAccessReview:
			decoded = try authorization.v1.SubjectAccessReview(from: decoder)
		case GroupVersionKind.autoscalingV1HorizontalPodAutoscaler:
			decoded = try autoscaling.v1.HorizontalPodAutoscaler(from: decoder)
		case GroupVersionKind.autoscalingV2Beta2HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta2.HorizontalPodAutoscaler(from: decoder)
		case GroupVersionKind.autoscalingV2Beta1HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta1.HorizontalPodAutoscaler(from: decoder)
		case GroupVersionKind.batchV1CronJob:
			decoded = try batch.v1.CronJob(from: decoder)
		case GroupVersionKind.batchV1Job:
			decoded = try batch.v1.Job(from: decoder)
		case GroupVersionKind.batchV1Beta1CronJob:
			decoded = try batch.v1beta1.CronJob(from: decoder)
		case GroupVersionKind.certificatesV1CertificateSigningRequest:
			decoded = try certificates.v1.CertificateSigningRequest(from: decoder)
		case GroupVersionKind.coordinationV1Lease:
			decoded = try coordination.v1.Lease(from: decoder)
		case GroupVersionKind.discoveryV1EndpointSlice:
			decoded = try discovery.v1.EndpointSlice(from: decoder)
		case GroupVersionKind.discoveryV1Beta1EndpointSlice:
			decoded = try discovery.v1beta1.EndpointSlice(from: decoder)
		case GroupVersionKind.eventsV1Event:
			decoded = try events.v1.Event(from: decoder)
		case GroupVersionKind.eventsV1Beta1Event:
			decoded = try events.v1beta1.Event(from: decoder)
		case GroupVersionKind.flowcontrolV1Beta1FlowSchema:
			decoded = try flowcontrol.v1beta1.FlowSchema(from: decoder)
		case GroupVersionKind.flowcontrolV1Beta1PriorityLevelConfiguration:
			decoded = try flowcontrol.v1beta1.PriorityLevelConfiguration(from: decoder)
		case GroupVersionKind.internalV1Alpha1StorageVersion:
			decoded = try `internal`.v1alpha1.StorageVersion(from: decoder)
		case GroupVersionKind.networkingV1Ingress:
			decoded = try networking.v1.Ingress(from: decoder)
		case GroupVersionKind.networkingV1IngressClass:
			decoded = try networking.v1.IngressClass(from: decoder)
		case GroupVersionKind.networkingV1NetworkPolicy:
			decoded = try networking.v1.NetworkPolicy(from: decoder)
		case GroupVersionKind.nodeV1RuntimeClass:
			decoded = try node.v1.RuntimeClass(from: decoder)
		case GroupVersionKind.nodeV1Beta1RuntimeClass:
			decoded = try node.v1beta1.RuntimeClass(from: decoder)
		case GroupVersionKind.nodeV1Alpha1RuntimeClass:
			decoded = try node.v1alpha1.RuntimeClass(from: decoder)
		case GroupVersionKind.policyV1PodDisruptionBudget:
			decoded = try policy.v1.PodDisruptionBudget(from: decoder)
		case GroupVersionKind.policyV1Beta1PodDisruptionBudget:
			decoded = try policy.v1beta1.PodDisruptionBudget(from: decoder)
		case GroupVersionKind.policyV1Beta1PodSecurityPolicy:
			decoded = try policy.v1beta1.PodSecurityPolicy(from: decoder)
		case GroupVersionKind.rbacV1ClusterRole:
			decoded = try rbac.v1.ClusterRole(from: decoder)
		case GroupVersionKind.rbacV1ClusterRoleBinding:
			decoded = try rbac.v1.ClusterRoleBinding(from: decoder)
		case GroupVersionKind.rbacV1Role:
			decoded = try rbac.v1.Role(from: decoder)
		case GroupVersionKind.rbacV1RoleBinding:
			decoded = try rbac.v1.RoleBinding(from: decoder)
		case GroupVersionKind.rbacV1Alpha1ClusterRole:
			decoded = try rbac.v1alpha1.ClusterRole(from: decoder)
		case GroupVersionKind.rbacV1Alpha1ClusterRoleBinding:
			decoded = try rbac.v1alpha1.ClusterRoleBinding(from: decoder)
		case GroupVersionKind.rbacV1Alpha1Role:
			decoded = try rbac.v1alpha1.Role(from: decoder)
		case GroupVersionKind.rbacV1Alpha1RoleBinding:
			decoded = try rbac.v1alpha1.RoleBinding(from: decoder)
		case GroupVersionKind.schedulingV1PriorityClass:
			decoded = try scheduling.v1.PriorityClass(from: decoder)
		case GroupVersionKind.schedulingV1Alpha1PriorityClass:
			decoded = try scheduling.v1alpha1.PriorityClass(from: decoder)
		case GroupVersionKind.storageV1CSIDriver:
			decoded = try storage.v1.CSIDriver(from: decoder)
		case GroupVersionKind.storageV1CSINode:
			decoded = try storage.v1.CSINode(from: decoder)
		case GroupVersionKind.storageV1StorageClass:
			decoded = try storage.v1.StorageClass(from: decoder)
		case GroupVersionKind.storageV1VolumeAttachment:
			decoded = try storage.v1.VolumeAttachment(from: decoder)
		case GroupVersionKind.storageV1Beta1CSIStorageCapacity:
			decoded = try storage.v1beta1.CSIStorageCapacity(from: decoder)
		case GroupVersionKind.storageV1Alpha1CSIStorageCapacity:
			decoded = try storage.v1alpha1.CSIStorageCapacity(from: decoder)
		case GroupVersionKind.storageV1Alpha1VolumeAttachment:
			decoded = try storage.v1alpha1.VolumeAttachment(from: decoder)
		default:
			decoded = try UnstructuredResource(from: decoder)
		}

		self.init(decoded)
	}

	public init(gvr: GroupVersionResource?, decoder: Decoder) throws {
		let decoded: KubernetesAPIResource
		switch gvr {

		case GroupVersionResource.coreV1Binding:
			decoded = try core.v1.Binding(from: decoder)
		case GroupVersionResource.coreV1ComponentStatus:
			decoded = try core.v1.ComponentStatus(from: decoder)
		case GroupVersionResource.coreV1ConfigMap:
			decoded = try core.v1.ConfigMap(from: decoder)
		case GroupVersionResource.coreV1Endpoints:
			decoded = try core.v1.Endpoints(from: decoder)
		case GroupVersionResource.coreV1Event:
			decoded = try core.v1.Event(from: decoder)
		case GroupVersionResource.coreV1LimitRange:
			decoded = try core.v1.LimitRange(from: decoder)
		case GroupVersionResource.coreV1Namespace:
			decoded = try core.v1.Namespace(from: decoder)
		case GroupVersionResource.coreV1Node:
			decoded = try core.v1.Node(from: decoder)
		case GroupVersionResource.coreV1PersistentVolume:
			decoded = try core.v1.PersistentVolume(from: decoder)
		case GroupVersionResource.coreV1PersistentVolumeClaim:
			decoded = try core.v1.PersistentVolumeClaim(from: decoder)
		case GroupVersionResource.coreV1Pod:
			decoded = try core.v1.Pod(from: decoder)
		case GroupVersionResource.coreV1PodTemplate:
			decoded = try core.v1.PodTemplate(from: decoder)
		case GroupVersionResource.coreV1ReplicationController:
			decoded = try core.v1.ReplicationController(from: decoder)
		case GroupVersionResource.coreV1ResourceQuota:
			decoded = try core.v1.ResourceQuota(from: decoder)
		case GroupVersionResource.coreV1Secret:
			decoded = try core.v1.Secret(from: decoder)
		case GroupVersionResource.coreV1Service:
			decoded = try core.v1.Service(from: decoder)
		case GroupVersionResource.coreV1ServiceAccount:
			decoded = try core.v1.ServiceAccount(from: decoder)
		case GroupVersionResource.admissionregistrationV1MutatingWebhookConfiguration:
			decoded = try admissionregistration.v1.MutatingWebhookConfiguration(from: decoder)
		case GroupVersionResource.admissionregistrationV1ValidatingWebhookConfiguration:
			decoded = try admissionregistration.v1.ValidatingWebhookConfiguration(from: decoder)
		case GroupVersionResource.apiextensionsV1CustomResourceDefinition:
			decoded = try apiextensions.v1.CustomResourceDefinition(from: decoder)
		case GroupVersionResource.apiregistrationV1APIService:
			decoded = try apiregistration.v1.APIService(from: decoder)
		case GroupVersionResource.appsV1ControllerRevision:
			decoded = try apps.v1.ControllerRevision(from: decoder)
		case GroupVersionResource.appsV1DaemonSet:
			decoded = try apps.v1.DaemonSet(from: decoder)
		case GroupVersionResource.appsV1Deployment:
			decoded = try apps.v1.Deployment(from: decoder)
		case GroupVersionResource.appsV1ReplicaSet:
			decoded = try apps.v1.ReplicaSet(from: decoder)
		case GroupVersionResource.appsV1StatefulSet:
			decoded = try apps.v1.StatefulSet(from: decoder)
		case GroupVersionResource.authenticationV1TokenRequest:
			decoded = try authentication.v1.TokenRequest(from: decoder)
		case GroupVersionResource.authenticationV1TokenReview:
			decoded = try authentication.v1.TokenReview(from: decoder)
		case GroupVersionResource.authorizationV1LocalSubjectAccessReview:
			decoded = try authorization.v1.LocalSubjectAccessReview(from: decoder)
		case GroupVersionResource.authorizationV1SelfSubjectAccessReview:
			decoded = try authorization.v1.SelfSubjectAccessReview(from: decoder)
		case GroupVersionResource.authorizationV1SelfSubjectRulesReview:
			decoded = try authorization.v1.SelfSubjectRulesReview(from: decoder)
		case GroupVersionResource.authorizationV1SubjectAccessReview:
			decoded = try authorization.v1.SubjectAccessReview(from: decoder)
		case GroupVersionResource.autoscalingV1HorizontalPodAutoscaler:
			decoded = try autoscaling.v1.HorizontalPodAutoscaler(from: decoder)
		case GroupVersionResource.autoscalingV2Beta2HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta2.HorizontalPodAutoscaler(from: decoder)
		case GroupVersionResource.autoscalingV2Beta1HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta1.HorizontalPodAutoscaler(from: decoder)
		case GroupVersionResource.batchV1CronJob:
			decoded = try batch.v1.CronJob(from: decoder)
		case GroupVersionResource.batchV1Job:
			decoded = try batch.v1.Job(from: decoder)
		case GroupVersionResource.batchV1Beta1CronJob:
			decoded = try batch.v1beta1.CronJob(from: decoder)
		case GroupVersionResource.certificatesV1CertificateSigningRequest:
			decoded = try certificates.v1.CertificateSigningRequest(from: decoder)
		case GroupVersionResource.coordinationV1Lease:
			decoded = try coordination.v1.Lease(from: decoder)
		case GroupVersionResource.discoveryV1EndpointSlice:
			decoded = try discovery.v1.EndpointSlice(from: decoder)
		case GroupVersionResource.discoveryV1Beta1EndpointSlice:
			decoded = try discovery.v1beta1.EndpointSlice(from: decoder)
		case GroupVersionResource.eventsV1Event:
			decoded = try events.v1.Event(from: decoder)
		case GroupVersionResource.eventsV1Beta1Event:
			decoded = try events.v1beta1.Event(from: decoder)
		case GroupVersionResource.flowcontrolV1Beta1FlowSchema:
			decoded = try flowcontrol.v1beta1.FlowSchema(from: decoder)
		case GroupVersionResource.flowcontrolV1Beta1PriorityLevelConfiguration:
			decoded = try flowcontrol.v1beta1.PriorityLevelConfiguration(from: decoder)
		case GroupVersionResource.internalV1Alpha1StorageVersion:
			decoded = try `internal`.v1alpha1.StorageVersion(from: decoder)
		case GroupVersionResource.networkingV1Ingress:
			decoded = try networking.v1.Ingress(from: decoder)
		case GroupVersionResource.networkingV1IngressClass:
			decoded = try networking.v1.IngressClass(from: decoder)
		case GroupVersionResource.networkingV1NetworkPolicy:
			decoded = try networking.v1.NetworkPolicy(from: decoder)
		case GroupVersionResource.nodeV1RuntimeClass:
			decoded = try node.v1.RuntimeClass(from: decoder)
		case GroupVersionResource.nodeV1Beta1RuntimeClass:
			decoded = try node.v1beta1.RuntimeClass(from: decoder)
		case GroupVersionResource.nodeV1Alpha1RuntimeClass:
			decoded = try node.v1alpha1.RuntimeClass(from: decoder)
		case GroupVersionResource.policyV1PodDisruptionBudget:
			decoded = try policy.v1.PodDisruptionBudget(from: decoder)
		case GroupVersionResource.policyV1Beta1PodDisruptionBudget:
			decoded = try policy.v1beta1.PodDisruptionBudget(from: decoder)
		case GroupVersionResource.policyV1Beta1PodSecurityPolicy:
			decoded = try policy.v1beta1.PodSecurityPolicy(from: decoder)
		case GroupVersionResource.rbacV1ClusterRole:
			decoded = try rbac.v1.ClusterRole(from: decoder)
		case GroupVersionResource.rbacV1ClusterRoleBinding:
			decoded = try rbac.v1.ClusterRoleBinding(from: decoder)
		case GroupVersionResource.rbacV1Role:
			decoded = try rbac.v1.Role(from: decoder)
		case GroupVersionResource.rbacV1RoleBinding:
			decoded = try rbac.v1.RoleBinding(from: decoder)
		case GroupVersionResource.rbacV1Alpha1ClusterRole:
			decoded = try rbac.v1alpha1.ClusterRole(from: decoder)
		case GroupVersionResource.rbacV1Alpha1ClusterRoleBinding:
			decoded = try rbac.v1alpha1.ClusterRoleBinding(from: decoder)
		case GroupVersionResource.rbacV1Alpha1Role:
			decoded = try rbac.v1alpha1.Role(from: decoder)
		case GroupVersionResource.rbacV1Alpha1RoleBinding:
			decoded = try rbac.v1alpha1.RoleBinding(from: decoder)
		case GroupVersionResource.schedulingV1PriorityClass:
			decoded = try scheduling.v1.PriorityClass(from: decoder)
		case GroupVersionResource.schedulingV1Alpha1PriorityClass:
			decoded = try scheduling.v1alpha1.PriorityClass(from: decoder)
		case GroupVersionResource.storageV1CSIDriver:
			decoded = try storage.v1.CSIDriver(from: decoder)
		case GroupVersionResource.storageV1CSINode:
			decoded = try storage.v1.CSINode(from: decoder)
		case GroupVersionResource.storageV1StorageClass:
			decoded = try storage.v1.StorageClass(from: decoder)
		case GroupVersionResource.storageV1VolumeAttachment:
			decoded = try storage.v1.VolumeAttachment(from: decoder)
		case GroupVersionResource.storageV1Beta1CSIStorageCapacity:
			decoded = try storage.v1beta1.CSIStorageCapacity(from: decoder)
		case GroupVersionResource.storageV1Alpha1CSIStorageCapacity:
			decoded = try storage.v1alpha1.CSIStorageCapacity(from: decoder)
		case GroupVersionResource.storageV1Alpha1VolumeAttachment:
			decoded = try storage.v1alpha1.VolumeAttachment(from: decoder)
		default:
			decoded = try UnstructuredResource(from: decoder)
		}

		self.init(decoded)
	}

	public func encode(to encoder: Encoder) throws {
		try resource.encode(to: encoder)
	}
}
