﻿module uim.bootstrap.components.buttons.buttonobj;

import uim.bootstrap;

class DBS4ButtonObj : DBS4Obj {
	mixin(H5This!("BUTTON", null, `["type":"button"]`));

	mixin(MyAttribute!("buttonType", "type"));
	mixin(MyAttribute!("buttonType", "type"));
	mixin(TProperty!("string", "colorMode"));
	mixin(TProperty!("bool", "outline"));
	mixin(TProperty!("bool", "block"));
	mixin(TProperty!("bool", "active"));
	mixin(TProperty!("bool", "disabled"));
	mixin(TProperty!("bool", "dataToggle"));
	mixin(TProperty!("string", "role"));
	mixin(TProperty!("string", "sizeMode"));

	override string toHTML() {
		if (colorMode) {
			if (outline) _classes ~= "btn-outline-"~colorMode;
			else _classes ~= "btn-"~colorMode;
		}
		if (sizeMode.length > 0) this.classes("btn-"~sizeMode);
		if (block) _classes ~= "btn-block";
		if (active) this.classes("active");
		if (disabled) this.classes("disabled");
		if (dataToggle) _attributes["data-toggle"]="button"; else _attributes.remove("data-toggle");

		return super.toHTML;
	}
}
mixin(H5Calls!"BS4ButtonObj");

unittest {
	
}
