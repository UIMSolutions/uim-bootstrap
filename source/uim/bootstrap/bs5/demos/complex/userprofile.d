module source.uim.bootstrap.bs5.demos.complex.userprofile;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/userprofile", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Pricing Table - Bootstrap 5 Demo",
            ])
            .styles(`
.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Pricing Table")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "userprofile")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Pricing Table"),
      H5Hr,

demoBs5Example("social", "Any news? Post it", 
H5Div(
    H5Div(["row"], 
        H5Div(["col-md-3 border-right"], 
            H5Div(["d-flex flex-column align-items-center text-center p-3 py-5"], 
                H5Img(["rounded-circle img-fluid mt-5"], ["src":"/img/officelady_300x300.jpg"]), 
                H5Span(["font-weight-bold"], "Lilith"), 
                H5Span(["text-black-50"], "lilith.marry@demo.com"), 
                H5Span)
        ),
        H5Div(["col-md-5 border-right"], 
            H5Div(["p-3 py-5"], 
                H5Div(["d-flex justify-content-between align-items-center mb-3"], 
                    H5H4(["text-right"], "Profile Settings")
                ),
                H5Div(["row mt-2"], 
                    H5Div(["col-md-6"], 
                        H5Label(["labels"], "Name"),
                        BS5InputText(["placeholder":"first name", "value":""])),
                    H5Div(["col-md-6"],
                        H5Label(["labels"], "Surname"),
                        BS5InputText(["value":"", "placeholder":"surname"]))
                ),
                H5Div(["row mt-3"], 
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "PhoneNumber"),
                        BS5InputText(["placeholder":"enter phone number", "value":""])),
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "Address"),
                        BS5InputText(["placeholder":"enter address", "value":""])),
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "Email ID"),
                        BS5InputText(["placeholder":"enter email id", "value":""])),
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "Education"),
                        BS5InputText(["placeholder":"education", "value":""]))
                ),
                H5Div(["row mt-3"], 
                    H5Div(["col-md-6"], 
                        H5Label(["labels"], "Country"),
                        BS5InputText(["placeholder":"country", "value":""])),
                    H5Div(["col-md-6"], 
                        H5Label(["labels"], "State/Region"),
                        BS5InputText(["value":"", "placeholder":"state"]))
                ),
                H5Div(["mt-5 text-center"], 
                    BS5Button(["btn-primary profile-button"], "Save Profile")
                )
            )
        ),
        H5Div(["col-md-4"], 
            H5Div(["p-3 py-5"], 
                H5Div(["d-flex justify-content-between align-items-center experience"], 
                    H5Span("Edit Experience"), 
                    H5Span(["border px-3 p-1 add-experience"], H5I(["fa fa-plus"]), H5String("&nbsp;Experience"))), 
                H5Br,
                H5Div(["col-md-12"], 
                    H5Label(["labels"], "Experience in Designing"), 
                    BS5InputText(["placeholder":"experience", "value":""])), 
                H5Br, 
                H5Div(["col-md-12"], 
                    H5Label(["labels"], "Additional Details"), 
                    BS5InputText(["placeholder":"additional details", "value":""]))
            )
        )
    )
), `H5Div(
    H5Div(["row"], 
        H5Div(["col-md-3 border-right"], 
            H5Div(["d-flex flex-column align-items-center text-center p-3 py-5"], 
                H5Img(["rounded-circle img-fluid mt-5"], ["src":"/img/officelady_300x300.jpg"]), 
                H5Span(["font-weight-bold"], "Lilith"), 
                H5Span(["text-black-50"], "lilith.marry@demo.com"), 
                H5Span)
        ),
        H5Div(["col-md-5 border-right"], 
            H5Div(["p-3 py-5"], 
                H5Div(["d-flex justify-content-between align-items-center mb-3"], 
                    H5H4(["text-right"], "Profile Settings")
                ),
                H5Div(["row mt-2"], 
                    H5Div(["col-md-6"], 
                        H5Label(["labels"], "Name"),
                        BS5InputText(["placeholder":"first name", "value":""])),
                    H5Div(["col-md-6"],
                        H5Label(["labels"], "Surname"),
                        BS5InputText(["value":"", "placeholder":"surname"]))
                ),
                H5Div(["row mt-3"], 
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "PhoneNumber"),
                        BS5InputText(["placeholder":"enter phone number", "value":""])),
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "Address"),
                        BS5InputText(["placeholder":"enter address", "value":""])),
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "Email ID"),
                        BS5InputText(["placeholder":"enter email id", "value":""])),
                    H5Div(["col-md-12"], 
                        H5Label(["labels"], "Education"),
                        BS5InputText(["placeholder":"education", "value":""]))
                ),
                H5Div(["row mt-3"], 
                    H5Div(["col-md-6"], 
                        H5Label(["labels"], "Country"),
                        BS5InputText(["placeholder":"country", "value":""])),
                    H5Div(["col-md-6"], 
                        H5Label(["labels"], "State/Region"),
                        BS5InputText(["value":"", "placeholder":"state"]))
                ),
                H5Div(["mt-5 text-center"], 
                    BS5Button(["btn-primary profile-button"], "Save Profile")),
            )
        ),
        H5Div(["col-md-4"], 
            H5Div(["p-3 py-5"], 
                H5Div(["d-flex justify-content-between align-items-center experience"], 
                    H5Span("Edit Experience"), 
                    H5Span(["border px-3 p-1 add-experience"], H5I(["fa fa-plus"]), H5String("&nbsp;Experience"))), 
                H5Br,
                H5Div(["col-md-12"], 
                    H5Label(["labels"], "Experience in Designing"), 
                    BS5InputText(["placeholder":"experience", "value":""])), 
                H5Br, 
                H5Div(["col-md-12"], 
                    H5Label(["labels"], "Additional Details"), 
                    BS5InputText(["placeholder":"additional details", "value":""]))
            )
        )
    )
)`, `<div>
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle img-fluid mt-5" src="/img/officelady_300x300.jpg">
                <span class="font-weight-bold">Lilith</span>
                <span class="text-black-50">lilith.marry@demo.com</span>
                <span></span>
            </div>
        </div>
    <div class="col-md-5 border-right">
        <div class="p-3 py-5">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h4 class="text-right">Profile Settings2</h4>
            </div>
            <div class="row mt-2">
                <div class="col-md-6">
                    <label class="labels">Name</label>
                    <input class="form-control" placeholder="first name" type="text" value="">
                </div>
                <div class="col-md-6">
                    <label class="labels">Surname</label>
                    <input class="form-control" placeholder="surname" type="text" value="">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12">
                    <label class="labels">PhoneNumber</label>
                    <input class="form-control" placeholder="enter phone number" type="text" value="">
                </div>
            <div class="col-md-12">
                <label class="labels">Address</label>
                <input class="form-control" placeholder="enter address" type="text" value="">
            </div>
            <div class="col-md-12">
                <label class="labels">Email ID</label>
                <input class="form-control" placeholder="enter email id" type="text" value="">
            </div>
        <div class="col-md-12">
            <label class="labels">Education</label>
            <input class="form-control" placeholder="education" type="text" value="">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-6">
            <label class="labels">Country</label>
            <input class="form-control" placeholder="country" type="text" value="">
        </div>
        <div class="col-md-6">
            <label class="labels">State/Region</label><input class="form-control" placeholder="state" type="text" value=""></div></div><div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Save Profile</button></div></div></div><div class="col-md-4"><div class="p-3 py-5"><div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br><div class="col-md-12"><label class="labels">Experience in Designing</label><input class="form-control" placeholder="experience" type="text" value=""></div><br><div class="col-md-12"><label class="labels">Additional Details</label><input class="form-control" placeholder="additional details" type="text" value=""></div></div></div></div></div>`)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
