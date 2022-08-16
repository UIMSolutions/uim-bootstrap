module uim.bootstrap.bs5.basic.components.buttons.buttonobj;

@safe: 
import uim.bootstrap;

class DBS5ButtonObj : DBS5Obj {
	mixin(H5This!("BUTTON", null, `["type":"button"]`));

	// mixin(MyAttribute!("buttonType", "type"));
	mixin(TProperty!("string", "colorMode"));
	mixin(TProperty!("bool", "outline"));
	mixin(TProperty!("bool", "block"));
	mixin(TProperty!("bool", "active"));
	mixin(TProperty!("bool", "disabled"));
	mixin(TProperty!("bool", "dataToggle"));
	mixin(TProperty!("string", "role"));
	mixin(TProperty!("string", "sizeMode"));

	override string onlyHTML() {
		if (colorMode) {
			if (outline) this.classes("btn-outline-"~colorMode);
			else this.classes("btn-"~colorMode);
		}
		if (sizeMode.length > 0) this.classes("btn-"~sizeMode);
		if (block) this.classes("btn-block");
		if (active) this.classes("active");
		if (disabled) this.classes("disabled");
		if (dataToggle) _attributes["data-toggle"]="button"; else _attributes.remove("data-toggle");

		return super.onlyHTML;
	}
}
mixin(H5Calls!"BS5ButtonObj");

version(test_uim_bootstrap) { unittest {
	
}
