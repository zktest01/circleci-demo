/**
 * @flow
 */
import { NativeModules, Platform } from 'react-native';

const SegmentKitNative = Platform.select({
	ios: NativeModules.SegmentKit,
	android: NativeModules.SegmentKit,
});

/**
 * SegmentKit
 */
class SegmentKitWrapper {
	/**
	 * Initialises a new instance of a SegmentKit
	 */
	init(writeKey: string, tag: string) {
		SegmentKitNative.init(writeKey, tag);
	}
	/**
	 * Identifies a user
	 */
	identify(email: string) {
		SegmentKitNative.identify(email);
	}
}

export default new SegmentKitWrapper();
