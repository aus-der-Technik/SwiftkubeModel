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
/// apiextensions.v1beta1.ExternalDocumentation
///

import Foundation

public extension apiextensions.v1beta1 {

	///
	/// ExternalDocumentation allows referencing an external resource for extended documentation.
	///
	struct ExternalDocumentation: KubernetesResource {
		///
		/// No description
		///
		public var description: String?
		///
		/// No description
		///
		public var url: String?
		///
		/// Default memberwise initializer
		///
		public init(
			description: String? = nil,
			url: String? = nil
		) {
			self.description = description
			self.url = url
		}
	}
}

///
/// Codable conformance
///
extension apiextensions.v1beta1.ExternalDocumentation {

	private enum CodingKeys: String, CodingKey {

		case description = "description"
		case url = "url"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.description = try container.decodeIfPresent(String.self, forKey: .description)
		self.url = try container.decodeIfPresent(String.self, forKey: .url)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.description, forKey: .description)
		try container.encode(self.url, forKey: .url)
	}

}

