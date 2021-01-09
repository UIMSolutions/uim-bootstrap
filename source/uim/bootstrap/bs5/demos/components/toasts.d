module uim.bootstrap.bs5.demos.components.toasts;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/toasts", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Toasts - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Toasts</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Toasts</h2>
        <hr>

        <div class="mb-5" data-js="var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}">
          <h3 class="text-muted">Default</h3>
          <p>Delay = 5000 ms, auto-hide = true, animation = true</p>
          <div>
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
              <div class="toast-header">
                <strong class="me-auto">Toast header</strong>
                <small>9 minutes ago</small>
              </div>
              <div class="toast-body">Toast body text goes here.</div>
            </div>
          </div>
        </div>

        <div class="mb-5" data-js="var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}">
          <h3 class="text-muted">Delay</h3>
          <p>Delay = 3000 ms, auto-hide = true, animation = true</p>
          <div>
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-delay="3000">
              <div class="toast-header">
                <strong class="me-auto">Toast header</strong>
                <small>9 minutes ago</small>
              </div>
              <div class="toast-body">Toast body text goes here.</div>
            </div>
          </div>
        </div>

        <div class="mb-5" data-js="var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}">
          <h3 class="text-muted">Autohide</h3>
          <p>Delay = 5000 ms, auto-hide = false, animation = true</p>
          <div>
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
              <div class="toast-header">
                <strong class="me-auto">Toast header</strong>
                <small>9 minutes ago</small>
                <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close"></button>
              </div>
              <div class="toast-body">Toast body text goes here.</div>
            </div>
          </div>
        </div>

        <div class="mb-5" data-js="var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}">
          <h3 class="text-muted">Animation</h3>
          <p>Delay = 5000 ms, auto-hide = false, animation = false</p>
          <div>
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false" data-bs-animation="false">
              <div class="toast-header">
                <strong class="me-auto">Toast header</strong>
                <small>9 minutes ago</small>
                <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close"></button>
              </div>
              <div class="toast-body">Toast body text goes here.</div>
            </div>
          </div>
        </div>

        <div class="mb-5" data-js="var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}">
          <h3 class="text-muted">Translucent</h3>
          <div>
            <div class="bg-dark p-3">
              <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                <div class="toast-header">
                  <strong class="me-auto">Toast header</strong>
                  <small>9 minutes ago</small>
                  <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body">Toast body text goes here.</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5" data-js="var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}">
          <h3 class="text-muted">Multiple</h3>
          <div>
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
              <div class="toast-header">
                <strong class="me-auto">Toast header</strong>
                <small>9 minutes ago</small>
                <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close"></button>
              </div>
              <div class="toast-body">Toast body text goes here.</div>
            </div>
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
              <div class="toast-header">
                <strong class="me-auto">Toast header</strong>
                <small>9 minutes ago</small>
                <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close"></button>
              </div>
              <div class="toast-body">Toast body text goes here.</div>
            </div>
          </div>
        </div>

        <h3 class="text-muted">Alignment and placement</h3>
        <h4 class="h5 text-muted mt-3"><a href="position-utilities.html">Position</a> utilities</h4>
        <iframe src="toasts/placement-position.html" style="width: 100%; height: 456px;"></iframe>

        <h4 class="h5 text-muted mt-3"><a href="flex.html">Flex</a> utilities</h4>
        <iframe src="toasts/placement-flex.html" style="width: 100%; height: 551px;"></iframe>

      </div>
    </div>
  </div>
</main>
      `;
    }
  });
}