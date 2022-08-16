module uim.bootstrap.bs5.basic.components.forms.controls.tel;

@safe: 
import uim.bootstrap; 

class DBS5InputTel : DBS5Input {
	mixin(H5This!("", null, `["type":"tel"]`));

  override void initialize () {
    super.initialize();
  }
}
mixin(H5Calls!("BS5InputTel"));

version(test_uim_bootstrap) { unittest {
	assert(BS5InputTel == `<input class="form-control" type="tel">`);
}}
