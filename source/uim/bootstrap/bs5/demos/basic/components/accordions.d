module uim.bootstrap.bs5.demos.components.accordions;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/accordions", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Accordions - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default",
  H5Div(
    BS5Accordion("accordionDefault",  
      BS5AccordionItem(
        BS5AccordionHeader("headingDefaultOne", 
          BS5AccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultOne", "aria-expanded":"true", "aria-controls":"collapseDefaultOne"], "Accordion Item #1")),
          BS5AccordionCollapse("collapseDefaultOne", ["collapse", "show"], ["aria-labelledby":"headingDefaultOne", "data-bs-parent":"#accordionDefault"], 
            BS5AccordionBody(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
            ))),
      BS5AccordionItem(
        BS5AccordionHeader("headingDefaultTwo",  
          BS5AccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultTwo", "aria-expanded":"false", "aria-controls":"collapseDefaultTwo"], "Accordion Item #2")),
        BS5AccordionCollapse("collapseDefaultTwo", ["collapse"], ["aria-labelledby":"headingDefaultTwo", "data-bs-parent":"#accordionDefault"], 
          BS5AccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."))),
      BS5AccordionItem(
        BS5AccordionHeader("headingDefaultThree",
          BS5AccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultThree", "aria-expanded":"false", "aria-controls":"collapseDefaultThree"], "Accordion Item #3")),
        BS5AccordionCollapse("collapseDefaultThree", ["collapse"], ["aria-labelledby":"headingDefaultThree", "data-bs-parent":"#accordionDefault"], 
          BS5AccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))))
      ), `BS5Accordion("accordionDefault",  
  BS5AccordionItem(
    BS5AccordionHeader("headingDefaultOne", 
      BS5AccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultOne", "aria-expanded":"true", "aria-controls":"collapseDefaultOne"], "Accordion Item #1")),
      BS5AccordionCollapse("collapseDefaultOne", ["collapse", "show"], ["aria-labelledby":"headingDefaultOne", "data-bs-parent":"#accordionDefault"], 
        BS5AccordionBody(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
        ))),
  BS5AccordionItem(
    BS5AccordionHeader("headingDefaultTwo",  
      BS5AccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultTwo", "aria-expanded":"false", "aria-controls":"collapseDefaultTwo"], "Accordion Item #2")),
    BS5AccordionCollapse("collapseDefaultTwo", ["collapse"], ["aria-labelledby":"headingDefaultTwo", "data-bs-parent":"#accordionDefault"], 
      BS5AccordionBody(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."))),
  BS5AccordionItem(
    BS5AccordionHeader("headingDefaultThree",
      BS5AccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultThree", "aria-expanded":"false", "aria-controls":"collapseDefaultThree"], "Accordion Item #3")),
    BS5AccordionCollapse("collapseDefaultThree", ["collapse"], ["aria-labelledby":"headingDefaultThree", "data-bs-parent":"#accordionDefault"], 
      BS5AccordionBody(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
      ))))
      
      --- Compact version ---


              `, 
              `H5Div(["accordion" id="accordionDefault"]
  H5Div(["accordion-item"]
    <h2 ["accordion-header" id="headingDefaultOne"]
      H5Button(["type":"button" ["accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseDefaultOne" aria-expanded="true" aria-controls="collapseDefaultOne"]
        Accordion Item #1
      ")
    </h2>
    <div id="collapseDefaultOne" ["accordion-collapse collapse show" aria-labelledby="headingDefaultOne" data-bs-parent="#accordionDefault"]
      H5Div(["accordion-body"]
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      )
    )
  )
  H5Div(["accordion-item"]
    <h2 ["accordion-header" id="headingDefaultTwo"]
      H5Button(["type":"button" ["accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseDefaultTwo" aria-expanded="false" aria-controls="collapseDefaultTwo"]
        Accordion Item #2
      ")
    </h2>
    <div id="collapseDefaultTwo" ["accordion-collapse collapse" aria-labelledby="headingDefaultTwo" data-bs-parent="#accordionDefault"]
      H5Div(["accordion-body"]
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      )
    )
  )
  H5Div(["accordion-item"]
    <h2 ["accordion-header" id="headingDefaultThree"]
      H5Button(["type":"button" ["accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseDefaultThree" aria-expanded="false" aria-controls="collapseDefaultThree"]
        Accordion Item #3
      ")
    </h2>
    <div id="collapseDefaultThree" ["accordion-collapse collapse" aria-labelledby="headingDefaultThree" data-bs-parent="#accordionDefault"]
      H5Div(["accordion-body"]
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      )
    )
  )
)`);

auto flushExample = demoBs5Example("flush", "Flush",
  H5Div(
    BS5Accordion("accordionFlush", ["accordion-flush"])
    .item(
      BS5AccordionHeader("headingFlushOne", [""])
      .button(["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushOne", "aria-expanded":"true", "aria-controls":"collapseFlushOne"], "Accordion Item #1"),
      BS5AccordionCollapse("collapseFlushOne", ["collapse", "show"], ["aria-labelledby":"headingFlushOne", "data-bs-parent":"#accordionFlush"])
      .body_(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. 
        Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo."))
    .item(
      BS5AccordionHeader("headingFlushTwo", [""])
      .button(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushTwo", "aria-expanded":"false", "aria-controls":"collapseFlushTwo"], "Accordion Item #2"),
      BS5AccordionCollapse("collapseFlushTwo", ["collapse"], ["aria-labelledby":"headingFlushTwo", "data-bs-parent":"#accordionFlush"]) 
      .body_(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. 
        Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo."))
    .item(
      BS5AccordionHeader("headingFlushThree", [""])
      .button(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushThree", "aria-expanded":"false", "aria-controls":"collapseFlushThree"], "Accordion Item #3"),
      BS5AccordionCollapse("collapseFlushThree", ["collapse"], ["aria-labelledby":"headingFlushThree", "data-bs-parent":"#accordionFlush"]) 
      .body_(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. 
        Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo."))        
    ), `BS5Accordion("accordionFlush", ["accordion-flush"], 
      BS5AccordionItem(
        BS5AccordionHeader("headingFlushOne",
          BS5AccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushOne", "aria-expanded":"true", "aria-controls":"collapseFlushOne"], "Accordion Item #1")),
        BS5AccordionCollapse("collapseFlushOne", ["collapse", "show"], ["aria-labelledby":"headingFlushOne", "data-bs-parent":"#accordionFlush"], 
          BS5AccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))),
      BS5AccordionItem(
        BS5AccordionHeader("headingFlushTwo", 
          BS5AccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushTwo", "aria-expanded":"false", "aria-controls":"collapseFlushTwo"], "Accordion Item #2")),
        BS5AccordionCollapse("collapseFlushTwo", ["collapse"], ["aria-labelledby":"headingFlushTwo", "data-bs-parent":"#accordionFlush"], 
          BS5AccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))),
      BS5AccordionItem(
        BS5AccordionHeader("headingFlushThree",
          BS5AccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushThree", "aria-expanded":"false", "aria-controls":"collapseFlushThree"], "Accordion Item #3")),
        BS5AccordionCollapse("collapseFlushThree", ["collapse"], ["aria-labelledby":"headingFlushThree", "data-bs-parent":"#accordionFlush"], 
          BS5AccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))))`, `H5Div(["accordion accordion-flush" id="accordionFlush"]
  H5Div(["accordion-item"]
    <h2 ["accordion-header" id="headingFlushOne"]
      H5Button(["type":"button" ["accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseFlushOne" aria-expanded="true" aria-controls="collapseFlushOne"]
        Accordion Item #1
      ")
    </h2>
    <div id="collapseFlushOne" ["accordion-collapse collapse show" aria-labelledby="headingFlushOne" data-bs-parent="#accordionFlush"]
      H5Div(["accordion-body"]
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      )
    )
  )
  H5Div(["accordion-item"]
    <h2 ["accordion-header" id="headingFlushTwo"]
      H5Button(["type":"button" ["accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFlushTwo" aria-expanded="false" aria-controls="collapseFlushTwo"]
        Accordion Item #2
      ")
    </h2>
    <div id="collapseFlushTwo" ["accordion-collapse collapse" aria-labelledby="headingFlushTwo" data-bs-parent="#accordionFlush"]
      H5Div(["accordion-body"]
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      )
    )
  )
  H5Div(["accordion-item"]
    <h2 ["accordion-header" id="headingFlushThree"]
      H5Button(["type":"button" ["accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFlushThree" aria-expanded="false" aria-controls="collapseFlushThree"]
        Accordion Item #3
      ")
    </h2>
    <div id="collapseFlushThree" ["accordion-collapse collapse" aria-labelledby="headingFlushThree" data-bs-parent="#accordionFlush"]
      H5Div(["accordion-body"]
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      )
    )
  )
)`);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "Accordions")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "accordions")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Accordions"),
      H5Hr,

      defaultExample,
      flushExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  