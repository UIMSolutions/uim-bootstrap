module uim.bootstrap.bs5.basic.components.forms.controls.number;

@safe: 
import uim.bootstrap; 

class DBS5InputNumber : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"number"]`));
	override public void initialize() {
		super.initialize; _single = true;
	}

	O value(this O)(string aValue) {
		_attributes["value"] = to!string(aValue);
		return cast(O)this;
	}
	unittest {		
    /// TODO
	}

	O value(this O)(int aValue) {
		_attributes["value"] = to!string(aValue);
		return cast(O)this;
	}
	unittest {		
    /// TODO
	}

	O value(this O)(long aValue) {
		_attributes["value"] = to!string(aValue);
		return cast(O)this;
	}
	unittest {		
    /// TODO
	}

	O value(this O)(size_t aValue) {
		_attributes["value"] = to!string(aValue);
		_attributes["min"] = "0";
		return cast(O)this;
	}
	unittest {		
    /// TODO
	}

}
mixin(H5Calls!("BS5InputNumber"));
///
unittest {
	assert(BS5InputNumber, `<input class="form-control" type="number">`));
}