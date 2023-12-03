module uim.bootstrap.bs5.basic.components.forms.controls.hidden;

@safe: 
import uim.bootstrap; 

class DBS5InputHidden : DBS5Input {
	mixin(H5This!("", null, `["type":"hidden"]`));

	O value(this O)(UUID id) {
		this.value(id.toString);
		return cast(O)this;
	}

	O value(this O)(string txt) {
		_attributes["value"] = txt;
		return cast(O)this;
	}

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputHidden"));
version(test_uim_bootstrap) { unittest {
  assert(BS5InputHidden == `<input class="form-control" type="hidden">`);
}}
