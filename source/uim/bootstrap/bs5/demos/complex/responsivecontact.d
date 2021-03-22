module source.uim.bootstrap.bs5.demos.complex.responsivecontact;

import uim.bootstrap;

static this() {
	demoBS5.pages("complex/responsivecontact", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Responsive Contact - Bootstrap 5 Demo",
            ])
            .styles(`.form4 {
    background-color: #4DB7FE;
    background-size: cover
}

.top {
    padding-top: 70px;
    padding-bottom: 90px
}

.form-bg {
    background: rgba(68, 68, 65, 0.77);
    padding: 2px
}

.form {
    background-color: white !important;
    padding: 20px
}

.form-group {
    margin-bottom: 20px
}

.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0
}

.form-control {
    border-top: 0px;
    border-left: 0px;
    border-right: 0px;
    border-bottom: 1px solid #61615e;
    background: transparent;
    -webkit-transition: all 0.3s ease 0s;
    -moz-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s
}

button.btn {
    display: block;
    padding: 11px 32px;
    -webkit-transition: all 0.3s ease 0s;
    -moz-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
    margin: 30px 0px
}

.btn-blue {
    background-color: #4285f4;
    color: #fff;
    border: 1px solid #4285f4
}`);
		} 
			
    override string content(string[string] someParameters = null) {  

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/complex/"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Complex"], "Responsive Contact")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("complex"),
      listAreas("complex", "responsivecontact")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Responsive Contact"),
      H5Hr,

demoBs5Example("contact", "Stay in Contact and be happy", 
    BS5Container.row(
        H5Div(["col-md-7 col-md-offset-2"],
            H5Div(["form-bg"],
                BS5Form(["form"])
                .group(
                    H5Label(["sr-only"], "Name"),
                    BS5InputText("nameNine", ["required":"required", "placeholder":"Your Name"]))
                .group(
                    H5Label(["sr-only"], "Email"),
                    BS5InputEmail("emailNine", ["required":"required", "placeholder":"Email Address"]))
                .group(
                    H5Label(["sr-only"], "Name"),
                    BS5InputTextarea("messageNine", ["required":"required", "rows":"7", "placeholder":"Write message"]))
                .submit(["text-center btn-blue"], "Send Message")
    ))), `BS5Container.row(
    H5Div(["col-md-7 col-md-offset-2"],
        H5Div(["form-bg"],
            BS5Form(["form"])
            .group(
                H5Label(["sr-only"], "Name"),
                BS5InputText("nameNine", ["required":"required", "placeholder":"Your Name"]))
            .group(
                H5Label(["sr-only"], "Email"),
                BS5InputEmail("emailNine", ["required":"required", "placeholder":"Email Address"]))
            .group(
                H5Label(["sr-only"], "Name"),
                BS5InputTextarea("messageNine", ["required":"required", "rows":"7", "placeholder":"Write message"]))
            .submit(["text-center btn-blue"], "Send Message")
)))`, `<div class="container">
    <div class="row">
        <div class="col-md-7 col-md-offset-2">
            <div class="form-bg">
                <form class="form">
                    <div class="form-group">
                        <label class="sr-only">Name</label>
                        <input id="nameNine" class="form-control" placeholder="Your Name" required="" type="text">
                    </div>
                    <div class="form-group">
                        <label class="sr-only">Email</label>
                        <input id="emailNine" class="form-control" placeholder="Email Address" required="" type="email">
                    </div>
                    <div class="form-group">
                        <label class="sr-only">Name</label>
                        <textarea id="messageNine" class="form-control" placeholder="Write message" required="" rows="7"></textarea>
                    </div>
                    <button class="btn text-center btn-blue" type="submit">Send Message</button>
                </form>
            </div>
        </div>
    </div>
</div>`)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
