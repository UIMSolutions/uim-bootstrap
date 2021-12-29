module uim.bootstrap.bs4.components.buttons.group;

@safe: 
import uim.bootstrap;

class DBS4ButtonGroup : DBS4Obj {
	mixin(H5This!("DIV", ["btn-group"], `["role":"group"]`));

	// Set size of button group
	O size(this O)(string value) {
		this.classes("btn-group-" ~ value);
		return cast(O) this;
	}
	unittest {
		assert(Assert(BS4ButtonGroup.size("lg"), `<div class="btn-group btn-group-lg" role="group"></div>`));
	}

	O vertical(this O)(bool mode) {
		if (mode) {
			_classes = _classes.sub("btn-group");
			_classes ~= "btn-group-vertical";
		}
		return cast(O) this;
	}
	unittest {
		assert(Assert(BS4ButtonGroup.vertical(true), `<div class="btn-group-vertical" role="group"></div>`));
	}

	mixin(MyAttribute!("label", "aria-label"));

	mixin(MyContent!("button", "BS4Button"));
	unittest {
		assert(Assert(BS4ButtonGroup.button, `<div class="btn-group" role="group"><button class="btn" type="button"></button></div>`));
	}

	mixin(MyContent!("link", "BS4ButtonLink"));
}

mixin(H5Calls!"BS4ButtonGroup");

unittest {
	assert(Assert(BS4ButtonGroup, `<div class="btn-group" role="group"></div>`));
}
