module source.uim.bootstrap.bs5.demos.complex.flightbooking;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/flightbooking", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Pricing Table - Bootstrap 5 Demo",
            ])
            .styles(`@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif
}

.wrapper {
    max-width: 800px;
    margin: 50px auto
}

.wrapper form {
    padding: 30px 50px
}

.wrapper form .form-group {
    padding-bottom: .5rem
}

.wrapper form .option {
    position: relative;
    padding-left: 25px;
    cursor: pointer;
    display: block
}

.wrapper form .option input {
    display: none
}

.wrapper form .checkmark {
    position: absolute;
    top: 4px;
    left: 0;
    height: 17px;
    width: 17px;
    background-color: #fff;
    border: 1px solid #aaa;
    border-radius: 50%
}

.wrapper form .option input:checked~.checkmark:after {
    display: block
}

.wrapper form .option .checkmark:after {
    content: "";
    width: 7px;
    height: 7px;
    display: block;
    border-radius: 50%;
    background-color: #333;
    position: absolute;
    top: 48%;
    left: 52%;
    transform: translate(-50%, -50%) scale(0);
    transition: 200ms ease-in-out 0s
}

.wrapper form .option:hover input[type="radio"]~.checkmark {
    background-color: #f4f4f4
}

.wrapper form .option input[type="radio"]:checked~.checkmark {
    background: #fff;
    color: #fff;
    transition: 300ms ease-in-out 0s
}

.wrapper form .option input[type="radio"]:checked~.checkmark:after {
    transform: translate(-50%, -50%) scale(1);
    color: #fff
}

.wrapper form a {
    color: #333
}

.wrapper form .form-control {
    outline: none;
    border: none
}

.wrapper form .form-control:focus {
    box-shadow: none
}

.wrapper form input[type="text"]:focus::placeholder {
    color: transparent
}

input[type="date"] {
    cursor: pointer
}

.wrapper form .label::after {
    position: absolute;
    top: 5px;
    left: 0px;
    font-size: 0.9rem;
    margin: 0rem 0.4rem;
    text-transform: uppercase;
    letter-spacing: 0.08rem;
    font-weight: 600;
    color: #999;
    transition: all .2s ease-in-out;
    transform: scale(0)
}

.wrapper form .label#from::after {
    content: 'From'
}

.wrapper form .label#to::after {
    content: 'To'
}

.wrapper form .label#depart::after {
    content: 'Depart Date'
}

.wrapper form .label#return::after {
    content: 'Return Date'
}

.wrapper form .label#psngr::after {
    content: 'Traveller(s)'
}

.wrapper form input[type="text"]:focus~.label::after {
    top: -15px;
    left: 0px;
    transform: scale(1)
}

.wrapper form input[type="date"]:focus~.label::after {
    top: -15px;
    left: 0px;
    transform: scale(1)
}

.margin {
    margin: 2rem 0rem
}

@media(max-width: 575.5px) {
    .wrapper {
        margin: 10px
    }

    .wrapper form {
        padding: 20px
    }

    .margin {
        margin: .2rem 0rem
    }
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Flight Booking")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "flightbooking")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Flight Booking"),
      H5Hr,

demoBs5Example("ecommercecardsanimation", "Start your vacation right here", 
    H5Div(
        H5Form(["action":"#"], 
            BS5FormGroup(["border-bottom d-flex align-items-center justify-content-between flex-wrap"], 
                H5Label(["option my-sm-0 my-2"], 
                    H5Input(["type":"radio", "name":"radio", "checked":"checked"]), 
                    H5String(" Round Trip"), 
                    H5Span(["checkmark"])
                ), 
                H5Label(["option my-sm-0 my-2"], 
                    H5Input(["type":"radio", "name":"radio"]), 
                    H5String(" One Way"), 
                    H5Span(["checkmark"])
                ),
                H5Div(["d-flex", "align-items-center", "my-sm-0 my-2"], 
                    H5A(["text-decoration-none"], ["href":"#"], 
                        H5String("Multi-city/Stopovers"),  
                        H5Span(["fas fa-angle-right ps-2 text-primary"])))
            ),
            BS5FormGroup(["d-sm-flex margin"], 
                H5Div(["d-flex", "align-items-center", "flex-fill me-sm-1 my-sm-0 my-4 border-bottom position-relative"], 
                    BS5InputText(["type":"text", "required":"required", "placeholder":"From"]),
                    H5Div("from", ["label"]), 
                    H5Span(["fas fa-dot-circle text-muted ms-1"])
                ),
                H5Div(["d-flex", "align-items-center", "flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative"],  
                    BS5InputText(["type":"text", "required":"required", "placeholder":"To"]),
                    H5Div("to", ["label"]),
                    H5Span(["fas fa-map-marker text-muted ms-1"])
                )
            ),
            BS5FormGroup(["d-sm-flex margin"], 
                H5Div(["d-flex", "align-items-center", "flex-fill me-sm1 my-sm-0 border-bottom position-relative"],  
                    BS5InputDate(["type":"date", "required":"required", "placeholder":"Depart Date"]),
                    H5Div("depart", ["label"])
                ),
                H5Div(["d-flex", "align-items-center", "flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative"],  
                    BS5InputDate(["type":"date", "required":"required", "placeholder":"Return Date"]),
                    H5Div("return", ["label"])
                )
            ),
            BS5FormGroup(["border-bottom d-flex align-items-center position-relative"],  
                BS5InputText(["type":"text", "required":"required", "placeholder":"Traveller(s)"]),
                H5Div("psngr", ["label"]), 
                H5Span(["fas fa-users text-muted ms-1"])
            ),
            BS5FormGroup(["my-3"], 
                BS5Button(["btn-primary", "rounded-0", "d-flex", "justify-content-center", "text-center", "p-3"], "Search Flights")
            )
        )
        ), `H5Form(["action":"#"], 
    BS5FormGroup(["border-bottom d-flex align-items-center justify-content-between flex-wrap"], 
        H5Label(["option my-sm-0 my-2"], 
            H5Input(["type":"radio", "name":"radio", "checked":"checked"]), 
            H5String(" Round Trip"), 
            H5Span(["checkmark"])
        ), 
        H5Label(["option my-sm-0 my-2"], 
            H5Input(["type":"radio", "name":"radio"]), 
            H5String(" One Way"), 
            H5Span(["checkmark"])
        ),
        H5Div(["d-flex", "align-items-center", "my-sm-0 my-2"], 
            H5A(["text-decoration-none"], ["href":"#"], 
                H5String("Multi-city/Stopovers"),  
                H5Span(["fas fa-angle-right ps-2 text-primary"])))
    ),
    BS5FormGroup(["d-sm-flex margin"], 
        H5Div(["d-flex", "align-items-center", "flex-fill me-sm-1 my-sm-0 my-4 border-bottom position-relative"], 
            BS5InputText(["type":"text", "required":"required", "placeholder":"From"]),
            H5Div("from", ["label"]), 
            H5Span(["fas fa-dot-circle text-muted ms-1"])
        ),
        H5Div(["d-flex", "align-items-center", "flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative"],  
            BS5InputText(["type":"text", "required":"required", "placeholder":"To"]),
            H5Div("to", ["label"]),
            H5Span(["fas fa-map-marker text-muted ms-1"])
        )
    ),
    BS5FormGroup(["d-sm-flex margin"], 
        H5Div(["d-flex", "align-items-center", "flex-fill me-sm1 my-sm-0 border-bottom position-relative"],  
            BS5InputDate(["type":"date", "required":"required", "placeholder":"Depart Date"]),
            H5Div("depart", ["label"])
        ),
        H5Div(["d-flex", "align-items-center", "flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative"],  
            BS5InputDate(["type":"date", "required":"required", "placeholder":"Return Date"]),
            H5Div("return", ["label"])
        )
    ),
    BS5FormGroup(["border-bottom d-flex align-items-center position-relative"],  
        BS5InputText(["type":"text", "required":"required", "placeholder":"Traveller(s)"]),
        H5Div("psngr", ["label"]), 
        H5Span(["fas fa-users text-muted ms-1"])
    ),
    BS5FormGroup(["my-3"], 
        BS5Button(["btn-primary", "rounded-0", "d-flex", "justify-content-center", "text-center", "p-3"], "Search Flights")
    )
)`, `<form action="#">
    <div class="border-bottom d-flex align-items-center justify-content-between flex-wrap form-group">
        <label class="option my-sm-0 my-2">
            <input checked="" name="radio" type="radio"> Round Trip<span class="checkmark"></span>
        </label>
        <label class="option my-sm-0 my-2">
            <input name="radio" type="radio"> One Way<span class="checkmark"></span>
        </label>
        <div class="align-items-center d-flex my-sm-0 my-2">
            <a class="text-decoration-none" href="#">Multi-city/Stopovers<span class="fas fa-angle-right ps-2 text-primary"></span></a>
        </div>
    </div>
    <div class="d-sm-flex margin form-group">
        <div class="align-items-center d-flex flex-fill me-sm-1 my-sm-0 my-4 border-bottom position-relative">
            <input class="form-control" placeholder="From" required="" type="text">
            <div id="from" class="label"></div>
            <span class="fas fa-dot-circle text-muted ms-1"></span>
        </div>
        <div class="align-items-center d-flex flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative">
            <input class="form-control" placeholder="To" required="" type="text">
            <div id="to" class="label"></div>
            <span class="fas fa-map-marker text-muted ms-1"></span>
        </div>
    </div>
    <div class="d-sm-flex margin form-group">
        <div class="align-items-center d-flex flex-fill me-sm1 my-sm-0 border-bottom position-relative">
            <input class="form-control" placeholder="Depart Date" required="" type="date">
            <div id="depart" class="label"></div>
        </div>
        <div class="align-items-center d-flex flex-fill ms-sm-1 my-sm-0 my-4 border-bottom position-relative">
            <input class="form-control" placeholder="Return Date" required="" type="date">
            <div id="return" class="label"></div>
        </div>
    </div>
    <div class="border-bottom d-flex align-items-center position-relative form-group">
        <input class="form-control" placeholder="Traveller(s)" required="" type="text">
        <div id="psngr" class="label"></div>
        <span class="fas fa-users text-muted ms-1"></span>
    </div>
    <div class="form-group my-3">
        <button class="btn btn-primary d-flex justify-content-center p-3 rounded-0 text-center" type="button">Search Flights</button>
    </div>
</form>`)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
