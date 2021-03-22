module uim.bootstrap.bs5.basic.components.forms.controls.date;

import uim.bootstrap; 

@safe: class DBS5InputDate : DBS5Input {
	mixin(H5This!("Input", ["form-control"], `["type":"date"]`));

	O value(this O)(long timestamp) {
		_attributes["value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString.split("T")[0];
		return cast(O)this;
	}
	unittest {	
			
	}

	O value(this O)(SysTime systime) {
		_attributes["value"] = (cast(DateTime)systime).toISOExtString.split("T")[0];
		return cast(O)this;
	}
	unittest {		
	}

	O value(this O)(DateTime datetime) {
		_attributes["value"] = datetime.toISOExtString.split("T")[0];
		return cast(O)this;
	}
	unittest {		
	}

}
mixin(H5Calls!("BS5InputDate"));
///
unittest {
	assert(Assert(BS5InputDate, `<input class="form-control" type="date">`));
}