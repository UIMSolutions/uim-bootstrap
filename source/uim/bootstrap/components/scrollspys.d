module uim.bootstrap.components.scrollspys;

import uim.bootstrap;

T spyTarget(T)(T h5, string target) {
	return h5.attributes(["data-spy":"scroll", "data-target":"#"~target]);
}
