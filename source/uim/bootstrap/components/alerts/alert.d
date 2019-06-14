module uim.bootstrap.components.alerts.alert;

import uim.bootstrap;

///Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
class DBS4Alert : DH5DIV {
	mixin(BS4This!("Alert", `["alert"]`, `["role":"alert"]`));

	O color(this O)(string name) { return this.classes("alert-"~name); };
	O link(this O)(string content, string url = "#") { this.content(`<a href="`~url~`" class="alert-link">`~content~`</a>`); return cast(O)this; }
	O dismissible(this O)(bool show = true, string icon = "&times;") { 
		if (show) {
			this.content(`<button type="button" class="close" data-dismiss="alert">`~icon~`</button>`);
			this.classes("alert-dismissible"); 
		}
		return cast(O)this; }

	mixin(MyContent!("heading", "BS4AlertHeading"));
}
mixin(BS4Func!("Alert"));

class DBS4AlertLink : DH5A {
	mixin(BS4This!("AlertLink", `["alert-link"]`, `["href":"#"]`));
}
mixin(BS4Func!("AlertLink"));

//class DBS4Alert(T:string) : DBS4AlertObj {
//	mixin(BS4This!("Alert", `["alert alert-`~T~`"]`, `["role":"alert"]`));
//}
//auto BS4Alert(T)(string id = null) { return new DBS4Alert!(T)(id); }
//auto BS4Alert(T)(string id, string content) { return new DBS4Alert!(T)(id, content); }
//auto BS4Alert(T)(string id, DH5Obj[] content...) { return new DBS4Alert!(T)(id, content); }
//
//auto BS4Alert(T)(string id, string[] classes) { return new DBS4Alert!(T)(id, classes); }
//auto BS4Alert(T)(string id, string[] classes, string content) { return new DBS4Alert!(T)(id, classes, content); }
//auto BS4Alert(T)(string id, string[] classes, DH5Obj[] content...) { return new DBS4Alert!(T)(id, classes, content); }
//
//auto BS4Alert(T)(string id, string[string] attributes) { return new DBS4Alert!(T)(id, attributes); }
//auto BS4Alert(T)(string id, string[string] attributes, string content) { return new DBS4Alert!(T)(id, attributes, content); }
//auto BS4Alert(T)(string id, string[string] attributes, DH5Obj[] content...) { return new DBS4Alert!(T)(id, attributes, content); }
//
//auto BS4Alert(T)(string id, string[] classes, string[string] attributes) { return new DBS4Alert!(T)(id, classes, attributes); }
//auto BS4Alert(T)(string id, string[] classes, string[string] attributes, string content) { return new DBS4Alert!(T)(id, classes, attributes, content); }
//auto BS4Alert(T)(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { return new DBS4Alert!(T)(id, classes, attributes, content); }
//
//auto BS4Alert(T)(string[] classes) { return new DBS4Alert!(T)(classes); }
//auto BS4Alert(T)(string[] classes, string content) { return new DBS4Alert!(T)(classes, content); }
//auto BS4Alert(T)(string[] classes, DH5Obj[] content...) { return new DBS4Alert!(T)(classes, content); }
//
//auto BS4Alert(T)(string[string] attributes) { return new DBS4Alert!(T)(attributes); }
//auto BS4Alert(T)(string[string] attributes, string content) { return new DBS4Alert!(T)(attributes, content); }
//auto BS4Alert(T)(string[string] attributes, DH5Obj[] content...) { return new DBS4Alert!(T)(attributes, content); }
//
//auto BS4Alert(T)(string[] classes, string[string] attributes) { return new DBS4Alert!(T)(classes, attributes); }
//auto BS4Alert(T)(string[] classes, string[string] attributes, string content) { return new DBS4Alert!(T)(classes, attributes, content); }
//auto BS4Alert(T)(string[] classes, string[string] attributes, DH5Obj[] content...) { return new DBS4Alert!(T)(classes, attributes, content); }

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Alert == `<div class="alert" role="alert"></div>`);
	assert(BS4Alert("anAlert") == `<div class="alert" role="alert">anAlert</div>`);

	assert(BS4Alert.color("success") == `<div class="alert alert-success" role="alert"></div>`);
	writeln(BS4Alert.color("success").dismissible);
	assert(BS4Alert.color("success").dismissible == `<div class="alert alert-dismissible alert-success" role="alert"><button type="button" class="close" data-dismiss="alert">&times;</button></div>`);
	//	assert(BS4Alert.tyeSuccess.content("success") == `<div class="alert alert-success" role="alert">success</div>`);
//
//	assert(BS4AlertInfo == `<div class="alert alert-info" role="alert"></div>`);
//	assert(BS4AlertInfo.content("info") == `<div class="alert alert-info" role="alert">info</div>`);
//
//	assert(BS4AlertWarning == `<div class="alert alert-warning" role="alert"></div>`);
//	assert(BS4AlertWarning.content("warning") == `<div class="alert alert-warning" role="alert">warning</div>`);
//
//	assert(BS4AlertDanger == `<div class="alert alert-danger" role="alert"></div>`);
//	assert(BS4AlertDanger.content("danger") == `<div class="alert alert-danger" role="alert">danger</div>`);
}