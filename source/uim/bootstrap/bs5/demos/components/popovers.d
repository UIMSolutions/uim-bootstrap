module uim.bootstrap.bs5.demos.components.popovers;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/popovers", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Popovers - Bootstrap 5 Demo",
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
            <li class="breadcrumb-item active" aria-current="page">Popovers</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Popovers</h2>
            <hr>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Link</h3>
              <div>
                <a href="#" data-bs-toggle="popover" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover for link</a>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Button</h3>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover for button</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Title</h3>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover with title</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Custom HTML</h3>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-html="true" title="<span class='badge bg-primary'>Popover title</span>" data-bs-content="<strong>Popover</strong> <small>with</small> <em>custom HTML</em>">Popover with custom HTML</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Position</h3>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-placement="top" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover on top</button>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-placement="right" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover on right</button>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-placement="bottom" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover on bottom</button>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-placement="left" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover on left</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Animation</h3>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-animation="false" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover without animation</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Delay</h3>
              <p>Popover with delay in ms for showing and hiding</p>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-delay="500" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Popover with delay</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Trigger type</h3>
              <p>Popover triggered by click and hover</p>
              <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="popover" data-bs-trigger="click hover" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Trigger by click and hover</button>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Dismissible</h3>
              <p>Dismiss on next click outside of element</p>
              <div>
                <a href="#!" class="btn btn-secondary" tabindex="0" role="button" data-bs-toggle="popover" data-bs-trigger="focus" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">Dismiss on next click</a>
              </div>
            </div>

            <div class="mb-5" data-css="a, button {&#10;&#9;margin-top: 200px;&#10;}" data-js="var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}">
              <h3 class="text-muted">Disabled elements</h3>
              <div>
                <span class="d-inline-block" data-bs-toggle="popover" title="Popover title" data-bs-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.">
                  <button type="button" class="btn btn-secondary" disabled style="pointer-events: none;">Popover for disabled element</button>
                </span>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>

      `;
    }
  });
}