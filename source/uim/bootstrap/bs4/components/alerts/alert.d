module uim.bootstrap.bs4.components.alerts.alert;

@safe: 
import uim.bootstrap;

///Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
class DBS4Alert : DBS4Obj {
	mixin(H5This!("Div", ["alert"], `["role":"alert"]`));

	O color(this O)(string name) {
		return this.addClasses("alert-" ~ name);
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Alert.color("success") == `<div class="alert alert-success" role="alert"></div>`);
	}}

	O link(this O)(string content, string url = "#") {
		this.content(`<a href="` ~ url ~ `" class="alert-link">` ~ content ~ `</a>`);
		return cast(O) this;
	}

	O dismissible(this O)(bool show = true, string icon = "&times;") {
		if (show) 		{
			this.content(`<button type="button" class="close" data-dismiss="alert">` ~ icon ~ `</button>`);
			this.addClasses("alert-dismissible");
		}
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Alert.color("success").dismissible == `<div class="alert alert-dismissible alert-success" role="alert"><button type="button" class="close" data-dismiss="alert">&times;</button></div>`);
	}}

	mixin(MyContent!("heading", "BS4AlertHeading"));
}

mixin(H5Calls!("BS4Alert"));

class DBS4AlertLink : DBS4Obj {
	mixin(H5This!("AlertLink", ["alert-link"], `["href":"#"]`));
}

mixin(H5Calls!("BS4AlertLink"));

version(test_uim_bootstrap) { unittest {
	assert(BS4Alert == `<div class="alert" role="alert"></div>`);
	assert(BS4Alert("anAlert") == `<div class="alert" role="alert">anAlert</div>`);
}}
