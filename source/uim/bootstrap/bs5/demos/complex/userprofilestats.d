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
    `<div class="height-100 row d-flex justify-content-center align-items-center">
        <div class="col-md-7">
            <div class="p-3 bg-white rounded">
                <div class="d-flex justify-content-between">
                    <div class="d-flex flex-row align-items-center">
                        <div class="position-relative"> <img src="https://i.imgur.com/EnANUqj.jpg" width="80" class="rounded-circle"> <span class="position-absolute dots"></span> </div>
                        <div class="ml-2">
                            <h5 class="mb-0">Lindsey James</h5> <span>@lindsyjames</span>
                            <div class="d-flex flex-row"> <span class="mr-3">1039 posts</span> <span class="mr-3">49.9 followers</span> <span>930 following</span> </div>
                        </div>
                    </div>
                    <div class="mt-2"> <span class="box-ellipse"><i class="fa fa-ellipsis-h"></i></span> <span class="box-pensil"><i class="fa fa-pencil"></i></span> </div>
                    <div> </div>
                </div>
            </div>
        </div>
</div>`), ``, ``)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
