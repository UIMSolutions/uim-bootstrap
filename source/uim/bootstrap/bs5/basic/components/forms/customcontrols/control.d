module uim.bootstrap.bs5.basic.components.forms.customcontrols.control;

@safe: 
import uim.bootstrap;

class DBS5CustomControl : DBS5Obj {
	mixin(H5This!("DIV", ["custom-control"]));

  override void initialize () {
    super.initialize();
  }

	mixin(MyContent!("checkbox", "BS5CustomCheckbox"));
	mixin(MyContent!("input", "BS5CustomInput"));
	mixin(MyContent!("radio", "BS5CustomRadio"));
	mixin(MyContent!("label", "H5Label"));	
}
mixin(H5Calls!"BS5CustomControl");

version(test_uim_bootstrap) { unittest {
  assert(BS5CustomControl);
  assert(BS5CustomControl == `<div class="custom-control"></div>`);
}
