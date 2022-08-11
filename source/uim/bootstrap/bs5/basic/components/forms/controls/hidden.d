module uim.bootstrap.bs5.basic.components.forms.controls.hidden;

@safe: 
import uim.bootstrap; 

class DBS5InputHidden : DBS5Input {
	mixin(H5This!("", null, `["type":"hidden"]`));

	O value(this O)(UUID id) {
		this.value(id.toString);
		return cast(O)this;
	}
	unittest {		
	}

	O value(this O)(string txt) {
		_attributes["value"] = txt;
		return cast(O)this;
	}
	unittest {		
	}

}
mixin(H5Calls!("BS5InputHidden"));
unittest {
		assert(BS5InputHidden, `<input class="form-control" type="hidden">`));
}