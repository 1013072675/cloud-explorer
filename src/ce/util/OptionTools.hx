/**
 * Cloud Explorer, lightweight frontend component for file browsing with cloud storage services.
 * @see https://github.com/silexlabs/cloud-explorer
 *
 * Cloud Explorer works as a frontend interface for the unifile node.js module:
 * @see https://github.com/silexlabs/unifile
 *
 * @author Thomas Fétiveau, http://www.tokom.fr  &  Alexandre Hoyau, http://lexoyo.me
 * Copyrights SilexLabs 2013 - http://www.silexlabs.org/ -
 * License MIT
 */
package ce.util;

import ce.core.model.api.ExportOptions;
import ce.core.model.api.PickOptions;
import ce.core.model.api.ReadOptions;
import ce.core.model.api.WriteOptions;

class OptionTools {

	static public function normalizePickOptions(o : Null<PickOptions>) : Null<PickOptions> {

		if (o == null) return o;

		if (o.mimetype != null) o.mimetype = o.mimetype.toLowerCase();
		if (o.extension != null) o.extension = o.extension.toLowerCase();

		if (o.mimetypes != null) {
			for (mi in 0...o.mimetypes.length) {
				o.mimetypes[mi] = o.mimetypes[mi].toLowerCase();
			}
		}
		if (o.extensions != null) {
			for (ei in 0...o.extensions.length) {
				o.extensions[ei] = o.extensions[ei].toLowerCase();
			}
		}

		return o;
	}

	static public function normalizeExportOptions(o : Null<ExportOptions>) : Null<ExportOptions> {

		if (o == null) return o;

		if (o.mimetype != null) o.mimetype = o.mimetype.toLowerCase();
		if (o.extension != null) o.extension = o.extension.toLowerCase();

		return o;
	}

	static public function normalizeReadOptions(o : Null<ReadOptions>) : Null<ReadOptions> {

		// nothing

		return o;
	}

	static public function normalizeWriteOptions(o : Null<WriteOptions>) : Null<WriteOptions> {

		// nothing

		return o;
	}
}