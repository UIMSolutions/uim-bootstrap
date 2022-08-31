module uim.bootstrap.bs5.basic.components.buttons.group;

@safe: 
import uim.bootstrap;

class DBS5ButtonGroup : DBS5Obj {
	mixin(H5This!("DIV", ["btn-group"], `["role":"group"]`));

	// Set size of button group
	O size(this O)(string value) {
		this.addClasses("btn-group-" ~ value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonGroup.size("lg") == `<div class="btn-group btn-group-lg" role="group"></div>`);
	}}

	O vertical(this O)(bool mode = true) {
		if (mode) {
			_classes = _classes.sub("btn-group");
			_classes ~= "btn-group-vertical";
		}
		else {
			_classes = _classes.sub("btn-group-vertical");
			_classes ~= "btn-group";
		}
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonGroup.vertical == `<div class="btn-group-vertical" role="group"></div>`);
	}}

	mixin(MyAttribute!("label", "aria-label"));

	mixin(MyContent!("button", "BS5Button"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonGroup.button == `<div class="btn-group" role="group"><button class="btn" type="button"></button></div>`);
	}}

	mixin(MyContent!("link", "BS5ButtonLink"));
}

mixin(H5Calls!"BS5ButtonGroup");

version(test_uim_bootstrap) { unittest {
	assert(BS5ButtonGroup == `<div class="btn-group" role="group"></div>`);
}}
