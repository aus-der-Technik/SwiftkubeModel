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
/// autoscaling.v2beta2.MetricValueStatus
///

import Foundation

public extension autoscaling.v2beta2 {

	///
	/// MetricValueStatus holds the current value for a metric
	///
	struct MetricValueStatus: KubernetesResource {
		///
		/// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
		///
		public var averageUtilization: Int32?
		///
		/// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
		///
		public var averageValue: Quantity?
		///
		/// value is the current value of the metric (as a quantity).
		///
		public var value: Quantity?
		///
		/// Default memberwise initializer
		///
		public init(
			averageUtilization: Int32? = nil,
			averageValue: Quantity? = nil,
			value: Quantity? = nil
		) {
			self.averageUtilization = averageUtilization
			self.averageValue = averageValue
			self.value = value
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.MetricValueStatus {

	private enum CodingKeys: String, CodingKey {

		case averageUtilization = "averageUtilization"
		case averageValue = "averageValue"
		case value = "value"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.averageUtilization = try container.decodeIfPresent(Int32.self, forKey: .averageUtilization)
		self.averageValue = try container.decodeIfPresent(Quantity.self, forKey: .averageValue)
		self.value = try container.decodeIfPresent(Quantity.self, forKey: .value)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.averageUtilization, forKey: .averageUtilization)
		try container.encode(self.averageValue, forKey: .averageValue)
		try container.encode(self.value, forKey: .value)
	}

}

