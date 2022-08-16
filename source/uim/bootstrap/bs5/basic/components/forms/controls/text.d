module uim.bootstrap.bs5.basic.components.forms.controls.text;

@safe: 
import uim.bootstrap; 

class DBS5InputText : DBS5Input {
	mixin(H5This!("", null, `["type":"text"]`));

  override void initialize () {
    super.initialize();
  }
	O value(this O)(UUID id) {
		this.value(id.toString);
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {		
	}

	O value(this O)(bool aValue) {
		value(aValue ? "true" : "false");
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {		
	}

	O value(this O)(string txt) {
		_attributes["value"] = txt;
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {		
	}

}
mixin(H5Calls!("BS5InputText"));
///
version(test_uim_bootstrap) { unittest {
	assert(BS5InputText == `<input class="form-control" type="text">`);
}
