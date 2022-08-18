module uim.bootstrap.bs5.basic.components.forms.controls.input;

@safe: 
import uim.bootstrap; 

class DBS5Input : DBS5Obj {
	mixin(H5This!("Input", null, null, true));	

	mixin(MyAttribute!"value");
	mixin(MyAttribute!"placeholder");

	O color(this O)(string newColor) {
		this.addClasses("bg-"~newColor);
		return cast(O)this;
	}

  override void initialize () {
    super.initialize();

		this
			.tag("input")
			.single(true)
			.classes("form-control");
  }
}
mixin(H5Calls!("BS5Input"));

version(test_uim_bootstrap) { unittest {
	assert(BS5Input);
}}
