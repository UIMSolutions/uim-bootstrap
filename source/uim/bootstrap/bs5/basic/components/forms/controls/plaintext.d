module uim.bootstrap.bs5.basic.components.forms.controls.plaintext;

@safe: 
import uim.bootstrap; 

class DBS5InputPlaintext : DBS5Input {
  mixin(H5This!("", ["form-control-plaintext"], `["type":"text"]`));

  override void initialize () {
    super.initialize();
  }
}
mixin(H5Calls!("BS5InputPlaintext"));

version(test_uim_bootstrap) { unittest {
	assert(BS5InputPlaintext == `<input class="form-control" type="text">`);
}
