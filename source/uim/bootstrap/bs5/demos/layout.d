module uim.bootstrap.bs5.demos.layout;

import uim.bootstrap;

/// Standard Bootstrap 5 Layout 
class BS5Layout : DH5AppLayout {
  /// Basic Constructor
  this() {
    super();
    
    this
    .metas(
      ["charset":"utf-8"],
      ["http-equiv":"X-UA-Compatible", "content":"IE=edge"],
      ["name":"viewport", "content":"width=device-width, initial-scale=1"], 
      ["http-equiv":"Content-Type", "content":"text/html; charset=utf-8"],
      )
    .styles(
      ["href":"/lib/bootstrap/5.0.0-beta1/css/bootstrap.min.css", "rel":"stylesheet"], 
      ["href":"/lib/font-awesome/last/css/all.css", "rel":"stylesheet"],
      )
    .libraries(
      ["src":"/lib/bootstrap/5.0.0-beta1/js/bootstrap.bundle.min.js"], 
      )
    .title("Demo - Bootstrap 5");
  }        

  override string toString(string content, string[string] parameters = null) {
		return super.toString(
        ("navigation" in parameters ? parameters["navigation"] : navigation(parameters))~ 
        (this.layout ?  this.layout.toString(content, this.parameters) : content)~
        ("footer" in parameters ? parameters["footer"] : footer(parameters)) 
      );
	  }

  string navigation(string[string] parameters) {
    string result;

    result = 
`<nav class="navbar navbar-expand-lg bg-info fixed-top">
  <div class="container">
    <a class="navbar-brand" href="/">`~H5Img(["height":"40", "src":"/img/logo.png", "alt":"UI Manufaktur"]).toString~`</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="sr-only">Toggle navigation</span>
    <span class="navbar-toggler-icon"></span>
    <span class="navbar-toggler-icon"></span>
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="/">UI Manufaktur</a>
        </li>
        <li class="nav-item"> 
          <a class="nav-link" href="/demos/uim-bootstrap">uim-bootstrap</a>
        </li>
      </ul>
    </div>
  </div>
</nav>`;

    return result;    
  }

  string footer(string[string] parameters) {
    string result;

    result = H5Footer(["py-5 bg-dark"], ["style":"background-color:#14a1b7"], 
    BS4Container.fluid()(
      H5P(["m-0 text-center text-white"], `Verantwortlich für den Inhalt gemäß § 6 MDStV`), 
      H5P(["m-0 text-center text-white"], `ui-manufaktur.com ist ein Einzelunternehmen:<br>
            UI Manufaktur UG (haftungsbeschränkt).<br>
            Inhaberin: Brigitte Straßer<br>
            Dreimühlenstraße 30<br>
            80469 München<br>
            Tel.: 0159 0508 4318<br>
            Email: contact@ui-manufaktur.com<br>	 	
            Amtsgericht	München<br>	
            HRB: 233911<br>
            USt-IdNr.: DE313841646`),
      H5P(["m-0 text-center text-white"], "Copyright &copy; 2017 - 2021 UI Manufaktur UG"))).toString;

    return result;    
  }
}
