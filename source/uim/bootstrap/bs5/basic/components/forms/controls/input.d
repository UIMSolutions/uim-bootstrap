module uim.bootstrap.bs5.basic.components.forms.controls.input;

@safe: 
import uim.bootstrap; 

class DBS5Input : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], null, true));	

	mixin(MyAttribute!"value");
	mixin(MyAttribute!"placeholder");

  override void initialize () {
    super.initialize();
  }
}
mixin(H5Calls!("BS5Input"));

version(test_uim_bootstrap) { unittest {
	// TODO assert 
}
