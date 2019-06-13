module uim.bs4.components.scrollspys;

import uim.bs4;

T spyTarget(T)(T h5, string target) {
	return h5.attributes(["data-spy":"scroll", "data-target":"#"~target]);
}
