module uim.bootstrap.bs5.basic.components.alerts.heading;

@safe: 
import uim.bootstrap;

class DBS5AlertHeading : DBS5Obj {
	mixin(H5This!("Div", ["alert-heading"]));

	O size(this O)(int size) {
		if ((size > 0) && (size < 7))
			_tag = "h" ~ to!string(size);
		return cast(O) this;
	}
}
mixin(H5Calls!("BS5AlertHeading"));

version(test_uim_bootstrap) { unittest {
	// TODO
}}
