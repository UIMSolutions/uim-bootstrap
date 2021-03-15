module source.uim.bootstrap.bs5.demos.complex.jobcards;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/jobcards", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Job Cards - Bootstrap 5 Demo",
            ])
            .styles(`

.btn-outline-dark {
    border-radius: 35px;
    font-size: 10px;
    box-shadow: none
}

.col-md-3 {
    margin-top: 5px
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Job cards")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "jobcards")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Job cards"),
      H5Hr,

demoBs5Example("jobcards", "Looking for new opportunities?", 
    H5Div(
H5Div(["d-flex", "justify-content-between"], 
    H5H4(["Recommended Jobs"]),
    BS5Button(["btn-sm", "btn-outline-dark"], "Apply all")
),
BS5Row(["mt-2 g-1"], 
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"],  
                H5Img(["img-fluid"], ["src":"/img/doctor_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Doctor"), 
                H5Hr, H5Span("Medi Center"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "Paris, France")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 40.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"], 
                H5Img(["img-fluid"], ["src":"/img/hero_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Hero"), 
                H5Hr, H5Span("Hero League"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "New York, USA")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 38.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"],  
                H5Img(["img-fluid"], ["src":"/img/chief_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Chief"), 
                H5Hr, H5Span("Bistro Italy"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "Rom, Italy")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 24.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"],  
                H5Img(["img-fluid"], ["src":"/img/photograph_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Photograph"), 
                H5Hr, H5Span("ImagePeople"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "Munich, Germany")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 30.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    )
)
), `H5Div(["d-flex", "justify-content-between"], 
    H5H4(["Recommended Jobs"]),
    BS5Button(["btn-sm", "btn-outline-dark"], "Apply all")
),
BS5Row(["mt-2 g-1"], 
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"],  
                H5Img(["img-fluid"], ["src":"/img/doctor_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Doctor"), 
                H5Hr, H5Span("Medi Center"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "Paris, France")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 40.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"], 
                H5Img(["img-fluid"], ["src":"/img/hero_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Hero"), 
                H5Hr, H5Span("Hero League"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "New York, USA")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 38.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"],  
                H5Img(["img-fluid"], ["src":"/img/chief_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Chief"), 
                H5Hr, H5Span("Bistro Italy"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "Rom, Italy")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 24.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    ),
    H5Div(["col-md-3"], 
        BS5Card(["p-2 job"], 
            H5Div(["text-right"], H5Small("Full Time")),
            H5Div(["text-center mt-2 p-3"],  
                H5Img(["img-fluid"], ["src":"/img/photograph_200x200.png", "width":"60"]), 
                H5Span(["d-block", "fw-bold"], "Photograph"), 
                H5Hr, H5Span("ImagePeople"), 
                H5Div(["d-flex", "flex-row align-items-center justify-content-center"],  
                    H5I(["fa fa-map-marker"]),  H5Small(["ms-1"], "Munich, Germany")),
                H5Div(["d-flex", "justify-content-between mt-3"],  
                    H5Span("€ 30.000"),  
                    BS5Button(["btn-sm", "btn-outline-dark"], "Apply Now")),
            )
        )
    )
)`, ``)

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
