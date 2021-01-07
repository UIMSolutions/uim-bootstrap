module uim.bootstrap.bs5.demos.components.alert;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/alerts", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Alerts - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb" >
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Alerts</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Alerts</h2>
            <hr>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Default</h3>
              <div class="code-live">
                <div class="alert alert-primary" role="alert">Primary alert!</div>
                <div class="alert alert-secondary" role="alert">Secondary alert!</div>
                <div class="alert alert-success" role="alert">Success alert!</div>
                <div class="alert alert-danger" role="alert">Danger alert!</div>
                <div class="alert alert-warning" role="alert">Warning alert!</div>
                <div class="alert alert-info" role="alert">Info alert!</div>
                <div class="alert alert-dark" role="alert">Dark alert!</div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Link color</h3>
              <div class="code-live">
                <div class="alert alert-primary" role="alert">Primary alert with <a href="#" class="alert-link">example link</a>.</div>
                <div class="alert alert-secondary" role="alert">Secondary alert with <a href="#" class="alert-link">example link</a>.</div>
                <div class="alert alert-success" role="alert">Success alert with <a href="#" class="alert-link">example link</a>.</div>
                <div class="alert alert-danger" role="alert">Danger alert with <a href="#" class="alert-link">example link</a>.</div>
                <div class="alert alert-warning" role="alert">Warning alert with <a href="#" class="alert-link">example link</a>.</div>
                <div class="alert alert-info" role="alert">Info alert with <a href="#" class="alert-link">example link</a>.</div>
                <div class="alert alert-dark" role="alert">Dark alert with <a href="#" class="alert-link">example link</a>.</div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Additional content</h3>
              <div class="code-live">
                <div class="alert alert-success" role="alert">
                  <h4 class="alert-heading">Success!</h4>
                  <p>You have accomplished <a href="#" class="alert-link">your goal</a>.</p>
                  <p>You can now continue and start defining a new goal to reach.</p>
                </div>
                <div class="alert alert-danger" role="alert">
                  <h4 class="alert-heading">Danger!</h4>
                  <p>Something is wrong. <a href="#" class="alert-link">Please try again.</a></p>
                  <p>Make sure that you enter the correct user name and corresponding password.</p>
                </div>
                <div class="alert alert-warning" role="alert">
                  <h4 class="alert-heading">Warning!</h4>
                  <p>Be careful when you <a href="#" class="alert-link">drive.</a></p>
                  <p>Driving is a serious task and should thus be taken seriously.</p>
                </div>
                <div class="alert alert-info" role="alert">
                  <h4 class="alert-heading">Info!</h4>
                  <p>Please read the provided <a href="#" class="alert-link">information.</a></p>
                  <p>The information will help you get a better understanding of the topic.</p>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Dismissing</h3>
              <div class="code-live">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  <strong>Success!</strong> This alert will fade away when clicking the &times; button.
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
      <div class="col-12 col-lg-2">
      </div>
   </main>
      `;
    }
  });
}