module source.uim.bootstrap.bs5.demos.complex.socialpost;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/socialpost", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Social Post - Bootstrap 5 Demo",
            ])
            .styles(`@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");

body {
    background-color: #eee;
    font-family: "Poppins", sans-serif;
    font-weight: 300
}

.ellipsis {
    color: #a09c9c
}

hr {
    color: #a09c9c;
    margin-top: 4px;
    margin-bottom: 8px
}

.muted-color {
    color: #a09c9c;
    font-size: 13px
}

.ellipsis i {
    margin-top: 3px;
    cursor: pointer
}

.icons i {
    font-size: 25px
}

.icons .fa-heart {
    color: red
}

.icons .fa-smile-o {
    color: yellow;
    font-size: 29px
}

.rounded-image {
    border-radius: 50% !important;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 50px;
    width: 50px
}

.name {
    font-weight: 600
}

.comment-text {
    font-size: 12px
}

.status small {
    margin-right: 10px;
    color: blue
}

.form-control {
    border-radius: 26px
}

.comment-input {
    position: relative
}

.fonts {
    position: absolute;
    right: 13px;
    top: 8px;
    color: #a09c9c
}

.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #8bbafe;
    outline: 0;
    box-shadow: none
}`);
		} 
			
    override string content() { 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Social Post")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "socialpost")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Social Post"),
      H5Hr,

demoBs5Example("ecommercecards", "eCommerce cards", 
    H5Div(
        H5Div(["row d-flex align-items-center justify-content-center"], 
            H5Div(["col-md-6"],
                H5Div(["card"],
                    H5Div(["d-flex justify-content-between p-2 px-3"],
                        H5Div(["d-flex flex-row align-items-center"],  
                            H5Img(["rounded-circle"], ["src":"https://i.imgur.com/UXdKE3o.jpg", "width":"50"]),
                            H5Div(["d-flex flex-column ml-2"],
                                H5Span(["font-weight-bold"], "Jeanette Sun"),  
                                H5Small(["text-primary"], "Collegues"))
                        ),
                        H5Div(["d-flex flex-row mt-1 ellipsis"], 
                            H5Small(["mr-2"], "20 mins"), H5I(["fa fa-ellipsis-h"]))
                    ), 
                    H5Img(["img-fluid"], ["src":"https://i.imgur.com/xhzhaGA.jpg"]),
                    H5Div(["p-2"], 
                        H5P(["text-justify"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt."),
                        H5Hr,
                        H5Div(["d-flex justify-content-between align-items-center"], 
                            H5Div(["d-flex flex-row icons d-flex align-items-center"],
                                H5I(["fa fa-heart"], H5I(["fa fa-smile-o ml-2"])),
                            H5Div(["d-flex flex-row muted-color"],
                                H5Span("2 comments"), H5Span(["ml-2"], "Share"))
                        )),
                        H5Hr,
                        H5Div(["comments"],
                            H5Div(["d-flex flex-row mb-2"],  
                                H5Img(["rounded-image"], ["src":"https://i.imgur.com/9AZ2QX1.jpg", "width":"40"]),
                                H5Div(["d-flex flex-column ml-2"],  
                                    H5Span(["name"], "Daniel Frozer"), H5Small(["comment-text"], "I like this a lot! thanks a lot"),
                                    H5Div(["d-flex flex-row align-items-center status"],
                                        H5Small("Like"), H5Small("Reply"), H5Small("Translate"), H5Small("18 mins"))
                            )),                    
                            H5Div(["d-flex flex-row mb-2"],  
                                H5Img(["rounded-image"], ["src":"https://i.imgur.com/1YrCKa1.jpg", "width":"40"]),
                                H5Div(["d-flex flex-column ml-2"],  
                                    H5Span(["name"], "Elizabeth goodmen"),  H5Small(["comment-text"], "Thanks for sharing!"),
                                    H5Div(["d-flex flex-row align-items-center status"], H5Small("Like"), H5Small("Reply"), H5Small("Translate"), H5Small("8 mins"))
                            )),
                            H5Div(["comment-input"], 
                                BS5InputText, 
                                H5Div(["fonts"], H5I(["fa fa-camera"]))
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
