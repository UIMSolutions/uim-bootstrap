module uim.bootstrap.bs5.basic.components.forms.floating;

@safe: 
import uim.bootstrap;

class DBS5FormFloating : DBS5Obj {
  mixin(H5This!("Div", ["form-floating"]));

  override void initialize () {
    super.initialize();
  }

  mixin(MyContent!("label", "H5Label"));
}
mixin(H5Calls!"BS5FormFloating");

version(test_uim_bootstrap) {
	unittest {
		assert(BS5FormFloating);
		assert(BS5FormFloating == `<div class="form-floating"></div>`);
		assert(BS5FormFloating.label == `<div class="form-floating"><label></label></div>`);
}}
