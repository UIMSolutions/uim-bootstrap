module uim.bootstrap.bs5.basic.components.forms.controls.password;

@safe: 
import uim.bootstrap; 

class DBS5InputPassword : DBS5Input {
	mixin(H5This!(null, ["form-control"], `["type":"password"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputPassword"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputPassword == `<input class="form-control" type="password">`);
}}
