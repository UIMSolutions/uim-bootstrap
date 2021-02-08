module uim.bootstrap.bs5.basic.components.buttons.group;

import uim.bootstrap;

class DBS5ButtonGroup : DBS5Obj {
	mixin(H5This!("DIV", ["btn-group"], `["role":"group"]`));

	// Set size of button group
	O size(this O)(string value) {
		this.classes("btn-group-" ~ value);
		return cast(O) this;
	}
	unittest {
		assert(Assert(BS5ButtonGroup.size("lg"), `<div class="btn-group btn-group-lg" role="group"></div>`));
	}

	O vertical(this O)(bool mode) {
		if (mode) {
			_classes = _classes.sub("btn-group");
			_classes ~= "btn-group-vertical";
		}
		return cast(O) this;
	}
	unittest {
		assert(Assert(BS5ButtonGroup.vertical(true), `<div class="btn-group-vertical" role="group"></div>`));
	}

	mixin(MyAttribute!("label", "aria-label"));

	mixin(MyContent!("button", "BS5Button"));
	unittest {
		assert(Assert(BS5ButtonGroup.button, `<div class="btn-group" role="group"><button class="btn" type="button"></button></div>`));
	}

	mixin(MyContent!("link", "BS5ButtonLink"));
}

mixin(H5Calls!"BS5ButtonGroup");

unittest {
	assert(Assert(BS5ButtonGroup, `<div class="btn-group" role="group"></div>`));
}
