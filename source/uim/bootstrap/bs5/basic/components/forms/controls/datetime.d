module uim.bootstrap.bs5.basic.components.forms.controls.datetime;

@safe: 
import uim.bootstrap; 

class DBS5InputDateTime : DBS5Input {
	mixin(H5This!("", null, `["type":"datetime-local"]`));

	O value(this O)(long timestamp) {
		_attributes["value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString;
		return cast(O)this;
	}
	unittest {	

	}

	O value(this O)(SysTime systime) {
		_attributes["value"] = (cast(DateTime)systime).toISOExtString;
		return cast(O)this;
	}
	unittest {		
	}

	O value(this O)(DateTime datetime) {
		_attributes["value"] = datetime.toISOExtString;
		return cast(O)this;
	}
	unittest {		
	}
}
mixin(H5Calls!("BS5InputDateTime"));
///
unittest {
	assert(BS5InputDateTime, `<input class="form-control" type="datetime-local">`);
}