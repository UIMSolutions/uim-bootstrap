module source.uim.bootstrap.bs5.demos.complex.notificationcard;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/notificationcard", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Notification Card - Bootstrap 5 Demo",
            ])
            .styles(`body {
    background-color: #5165ff;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center
}

.modal-body {
    background-color: #5165ff;
    border-color: #5165ff
}

.intro-1 {
    font-size: 20px
}

.close {
    color: #fff
}

.close:hover {
    color: #fff
}

.intro-2 {
    font-size: 13px
}

.btn-primary {
    color: #5165ff;
    background-color: #fffaff;
    border-color: #fffaff;
    padding: 12px;
    font-weight: 700;
    border-radius: 41px;
    padding-right: 20px;
    padding-left: 20px
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Notification cards")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "notificationcard")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Job cards"),
      H5Hr,

demoBs5Example("notificationcard", "Click for news?", 
    H5Div(
        BS5Button(["btn-primary launch"], ["data-toggle":"modal", "data-target":"#staticBackdrop"], 
            H5I(["fa fa-info"]), H5String(" Get information")),
        H5Div("staticBackdrop", ["modal fade"], ["data-backdrop":"static", "data-keyboard":"false", "tabindex":"-1", "aria-labelledby":"staticBackdropLabel", "aria-hidden":"true"],
            H5Div(["modal-dialog modal-lg"], 
                H5Div(["modal-content"], 
                    H5Div(["modal-body"], 
                        H5Div(["text-right"],  H5I(["fa fa-close close"], ["data-dismiss":"modal"])),
                        H5Div(["row"], 
                            H5Div(["col-md-6"], 
                                H5Div(["text-center mt-2"], H5Img(["src":"https://i.imgur.com/zZUiqsU.png", "width":"200"]))
                            ),
                            H5Div(["col-md-6"], 
                                H5Div(["text-white mt-4"], H5Span(["intro-1"], "This is fake Data")),
                                H5Div(["mt-2"],  H5Span(["intro-2"], "Gain access to analytic tools, desktop apps, templates, read-through, features, and autp-translate all for the price of a pro subscription")),
                                H5Div(["mt-4 mb-5"], BS5Button(["btn-primary"], H5String("Import my data"), H5I(["fa fa-cloud-download"])))
                            )
                        )
                    )
                )
            )
        )
), ``, ``)

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
