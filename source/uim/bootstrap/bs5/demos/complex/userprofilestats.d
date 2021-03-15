module source.uim.bootstrap.bs5.demos.complex.userprofilestats;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/userprofilestats", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "User Profile with Statistics- Bootstrap 5 Demo",
            ])
            .styles(`.height-100 {
    height: 100vh
}

.dots {
    height: 20px;
    width: 20px;
    background-color: green;
    border-radius: 50%;
    border: 2px solid #fff;
    right: -4px;
    bottom: 8px
}

.box-ellipse {
    background-color: #ebedf0;
    padding-right: 10px;
    color: #000;
    padding-left: 10px;
    padding-top: 2px;
    padding-bottom: 2px;
    border-radius: 4px;
    cursor: pointer
}

.box-pensil {
    background-color: blue;
    color: #fff;
    cursor: pointer;
    font-size: 15px;
    padding-right: 10px;
    padding-left: 10px;
    padding-top: 2px;
    padding-bottom: 2px;
    border-radius: 4px
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "User Profile with Statistics")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "userprofilestats")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "User Profile with Statistics"),
      H5Hr,

demoBs5Example("ecommercecards", "eCommerce cards", 
    H5Div(
      BS5Row(["d-flex justify-content-center"], 
        H5Div(["col-md-7 border"], 
          H5Div(["p-3 bg-white rounded"], 
            H5Div(["d-flex justify-content-between"], 
              H5Div(["d-flex flex-row align-items-center"], 
                H5Div(["position-relative"], 
                  H5Img(["rounded-circle"], ["src":"/img/girl_400x400.jpg", "width":"80"]),
                  H5Span(["position-absolute dots"])),
                H5Div(["ms-2"], 
                  H5H5(["mb-0"], H5String("Carol Smith"), H5Span("@carolsmith")),
                  H5Div(["d-flex flex-row"],  
                    H5Span(["me-3"], "139 posts"), 
                    H5Span(["me-3"], "329 followers"), 
                    H5Span("200 following")
                  )
                )
              ),
              H5Div(["mt-2"], 
                H5Span(["box-ellipse"], H5I(["fa fa-ellipsis-h"])), 
                H5Span(["box-pensil"], H5I(["fa fa-pencil"]))
              ) 
            )
          )
        )
      )
), `H5Div(
  BS5Row(["d-flex justify-content-center"], 
    H5Div(["col-md-7 border"], 
      H5Div(["p-3 bg-white rounded"], 
        H5Div(["d-flex justify-content-between"], 
          H5Div(["d-flex flex-row align-items-center"], 
            H5Div(["position-relative"], 
              H5Img(["rounded-circle"], ["src":"/img/girl_400x400.jpg", "width":"80"]),
              H5Span(["position-absolute dots"])),
            H5Div(["ms-2"], 
              H5H5(["mb-0"], H5String("Carol Smith"), H5Span("@carolsmith")),
              H5Div(["d-flex flex-row"],  
                H5Span(["me-3"], "139 posts"), 
                H5Span(["me-3"], "329 followers"), 
                H5Span("200 following")
              )
            )
          ),
          H5Div(["mt-2"], 
            H5Span(["box-ellipse"], H5I(["fa fa-ellipsis-h"])), 
            H5Span(["box-pensil"], H5I(["fa fa-pencil"]))
          ) 
        )
      )
    )
  )
)`, ``)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
