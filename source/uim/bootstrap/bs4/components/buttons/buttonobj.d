module uim.bootstrap.bs4.components.buttons.buttonobj;

@safe: 
import uim.bootstrap;

class DBS4ButtonObj : DBS4Obj {
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

	override string renderHTML(STRINGAA bindings = null) {
		if (colorMode) {
			if (outline) this.addClasses("btn-outline-"~colorMode);
			else this.addClasses("btn-"~colorMode);
		}
		if (sizeMode.length > 0) this.addClasses("btn-"~sizeMode);
		if (block) this.addClasses("btn-block");
		if (active) this.addClasses("active");
		if (disabled) this.addClasses("disabled");
		if (dataToggle) _attributes["data-toggle"]="button"; else _attributes.remove("data-toggle");

		return super.renderHTML;
	}
}
mixin(H5Calls!"BS4ButtonObj");

version(test_uim_bootstrap) { unittest {
	// TODO
}}
