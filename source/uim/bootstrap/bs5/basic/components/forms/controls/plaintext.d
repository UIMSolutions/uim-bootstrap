module uim.bootstrap.bs5.basic.components.forms.controls.plaintext;

@safe: 
import uim.bootstrap; 

class DBS5InputPlaintext : DBS5Input {
  mixin(H5This!(""));

  override void initialize () {
    super.initialize();

    this
      .classes("form-control-plaintext")
      .addAttributes(["type":"text"]);
  }
}
mixin(H5Calls!("BS5InputPlaintext"));

version(test_uim_bootstrap) { unittest {
	assert(BS5InputPlaintext);
	assert(BS5InputPlaintext == `<input class="form-control-plaintext" type="text">`);
}}
