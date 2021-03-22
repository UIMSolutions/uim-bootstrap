module uim.bootstrap.bs5.demos.examples.signin;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/signin", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ])
      .styles(`html,
body {
  height: 100%;
}

body {
  display: flex;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input["type":"email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input["type":"password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }`);
		} 
			
    override string content(string[string] someParameters = null) {  

//   <body class="text-center">
      return 
H5Main(["form-signin"],
  H5Form(
    H5Img(["mb-4"], ["src":"../assets/brand/bootstrap-logo.svg", "alt":"", "width":"72", "height":"57"]),
    H5H1(["h3 mb-3 fw-normal"], "Please sign in"),
    H5Label(["visually-hidden"], ["for":"inputEmail"], "Email address"),
    BS5InputEmail("inputEmail", ["placeholder":"Email address", "required":"required", "autofocus":"autofocus"]),
    H5Label(["visually-hidden"], ["for":"inputPassword"], "Password"),
    BS5InputPassword("inputPassword", ["placeholder":"Password", "required":"required"]),
    H5Div(["checkbox mb-3"], 
      H5Label(
        H5Input(["type":"checkbox", "value":"remember-me"], "Remember me")
      )
    ),
    BS5ButtonSubmit(["w-100", "btn-lg btn-primary"], "Sign in"),
    H5P(["mt-5 mb-3 text-muted"], "&copy; 2017-2020")
  )
).toString;

    }
  });
}
 
