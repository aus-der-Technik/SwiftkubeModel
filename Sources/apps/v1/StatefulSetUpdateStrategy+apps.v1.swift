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

public extension apps.v1 {

	///
	/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
	///
	struct StatefulSetUpdateStrategy: KubernetesResource {
		///
		/// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
		///
		public var rollingUpdate: apps.v1.RollingUpdateStatefulSetStrategy?

		///
		/// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
		///
		public var type: String?

	}
}
