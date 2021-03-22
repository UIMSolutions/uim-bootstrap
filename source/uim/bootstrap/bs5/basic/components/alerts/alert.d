module uim.bootstrap.bs5.basic.components.alerts.alert;

import uim.bootstrap;

///Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
@safe: class DBS5Alert : DBS5Obj {
	mixin(H5This!("Div", ["alert"], `["role":"alert"]`));

	O color(this O)(string name) {
		return this.classes("alert-" ~ name);
	}
	unittest {
		assert(Assert(BS5Alert.color("success"),`<div class="alert alert-success" role="alert"></div>`));
	}

	O link(this O)(string content, string url = "#") {
		this.content(`<a href="` ~ url ~ `" class="alert-link">` ~ content ~ `</a>`);
		return cast(O) this;
	}

	O dismissible(this O)(bool show = true, string icon = "&times;") {
		if (show) 		{
			this.content(`<button type="button" class="close" data-dismiss="alert">` ~ icon ~ `</button>`);
			this.classes("alert-dismissible");
		}
		return cast(O) this;
	}
	unittest {
		assert(Assert(BS5Alert.color("success").dismissible,`<div class="alert alert-dismissible alert-success" role="alert"><button type="button" class="close" data-dismiss="alert">&times;</button></div>`));
	}

	mixin(MyContent!("heading", "BS5AlertHeading"));
}

mixin(H5Calls!("BS5Alert"));

@safe: class DBS5AlertLink : DBS5Obj {
	mixin(H5This!("AlertLink", ["alert-link"], `["href":"#"]`));
}

mixin(H5Calls!("BS5AlertLink"));

unittest {
	assert(Assert(BS5Alert,`<div class="alert" role="alert"></div>`));
	assert(Assert(BS5Alert("anAlert"),`<div class="alert" role="alert">anAlert</div>`));
}
