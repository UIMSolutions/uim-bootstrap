module uim.bootstrap.bs5.demos.components.listgroups;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/listgroups", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "List Groups - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    BS5List(
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three"))
  ), ``, ``);

auto activeExample = demoBs5Example("active", "Active item",      
  H5Div(
    BS5List(
      BS5ListItem("List group item one"),
      BS5ListItem(["active"], ["aria-current":"true"], "List group item two"),
      BS5ListItem("List group item three"))
  ), ``, ``);

auto disabledExample = demoBs5Example("disabled", "Disabled item",      
  H5Div(
    BS5List(
      BS5ListItem("List group item one"),
      BS5ListItem(["disabled"], ["aria-disabled":"true"], "List group item two"),
      BS5ListItem("List group item three"))
  ), ``, ``);

auto linksExample = demoBs5Example("links", "Links",      
  H5Div(
    BS5List(
      BS5ListLink(["href":"#"], "List group item one"),
      BS5ListLink(["active"], ["href":"#", "aria-disabled":"true"], "List group item two"),
      BS5ListLink(["disabled"], ["href":"#", "aria-disabled":"true", "tabindex":"-1"], "List group item three"))
  ), ``, ``);

auto buttonsExample = demoBs5Example("buttons", "Buttons",      
  H5Div(
    BS5List(
      BS5Button(["list-group-item", "list-group-item-action"], "List group item one"),
      BS5Button(["list-group-item", "list-group-item-action", "active"], ["aria-current":"true"], "List group item two"),
      BS5Button(["list-group-item", "list-group-item-action", "active"], ["aria-current":"true"], "List group item three"))
  ), ``, ``);

auto flushExample = demoBs5Example("flush", "Flush",      
  H5Div(
    BS5List(["list-group-flush"],
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three"))
  ), ``, ``);

auto horizontalExample = demoBs5Example("horizontal", "Horizontal",      
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "All breakpoints"),
    BS5List(["list-group-horizontal"],
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Small and up"),
    BS5List(["list-group-horizontal-sm"],
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Medium and up"),
    BS5List(["list-group-horizontal-md"],
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Large and up"),
    BS5List(["list-group-horizontal-lg"],
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Extra Large and up"),
    BS5List(["list-group-horizontal-xl"],
      BS5ListItem("List group item one"),
      BS5ListItem("List group item two"),
      BS5ListItem("List group item three"))
  ), ``, ``);

auto equalwidthExample = demoBs5Example("equalwidth", "Equal-width list group item",      
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "All breakpoints"),
    BS5List(["list-group-horizontal"],
      BS5ListItem(["flex-fill"], "List group item one"),
      BS5ListItem(["flex-fill"], "List group item two"),
      BS5ListItem(["flex-fill"], "List group item three"))
  ), ``, ``);

auto colorsExample = demoBs5Example("colors", "Contextual color classes",      
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "All breakpoints"),
    BS5List(["list-group-horizontal"],
      BS5ListItem(["flex-fill"], "List group item one"),
      BS5ListItem(["flex-fill"], "List group item two"),
      BS5ListItem(["flex-fill"], "List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Normal list group"),
    BS5List(
      BS5ListItem("Default list group item"),
      BS5ListItem(["list-group-item-primary"], "Primary"),
      BS5ListItem(["list-group-item-secondary"], "Secondary"),
      BS5ListItem(["list-group-item-success"], "Succcess"),
      BS5ListItem(["list-group-item-danger"], "Danger"),
      BS5ListItem(["list-group-item-warning"], "Warning"),
      BS5ListItem(["list-group-item-info"], "Info"),
      BS5ListItem(["list-group-item-light"], "Light"),
      BS5ListItem(["list-group-item-dark"], "Dark")),
    H5H4(["h5", "text-muted", "mt-3"], "List group with links"),
    BS5List(
      BS5ListLink("Default list group item"),
      BS5ListLink(["list-group-item-primary"], "Primary"),
      BS5ListLink(["list-group-item-secondary"], "Secondary"),
      BS5ListLink(["list-group-item-success"], "Succcess"),
      BS5ListLink(["list-group-item-danger"], "Danger"),
      BS5ListLink(["list-group-item-warning"], "Warning"),
      BS5ListLink(["list-group-item-info"], "Info"),
      BS5ListLink(["list-group-item-light"], "Light"),
      BS5ListLink(["list-group-item-dark"], "Dark"))
  ), ``, ``);
                
auto badgesExample = demoBs5Example("badges", "Badges",      
  H5Div(
    BS5List(
      BS5ListItem(["d-flex", "justify-content-between", "align-items-center"], 
        H5String("List group item one"), BS5Badge(["rounded-pill", "bg-primary"], "#")),
      BS5ListItem(["d-flex", "justify-content-between", "align-items-center"], 
        H5String("List group item one"), BS5Badge(["rounded-pill", "bg-primary"], "##")),
      BS5ListItem(["d-flex", "justify-content-between", "align-items-center"], 
        H5String("List group item one"), BS5Badge(["rounded-pill", "bg-primary"], "###")))
  ), ``, ``);

auto customExample = demoBs5Example("custom", "Custom content",      
  H5Div(
    BS5List(
      BS5ListLink(["active"], ["href":"#", "aria-current":"true"], 
        H5H4("Active item"),
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        H5Small("Etiam eleifend velit leo.")),
      BS5ListLink(["href":"#"], 
        H5H4("Normal item"),
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        H5Small("Etiam eleifend velit leo.")),
      BS5ListLink(["disabled"], ["href":"#"], 
        H5H4("Disabled item"),
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        H5Small("Etiam eleifend velit leo.")))
  ), ``, ``);

auto tabsExample = demoBs5Example("tabs", "Tab panels",      
  H5Div(
    BS5Row(
      H5Div(["col-4"], 
        H5Div(["list-group"], ["role":"tablist"], 
          BS5ListLink("tab-1", ["active"], ["href":"#tab-pane-1", "data-toggle":"list", "role":"tab", "aria-controls":"tab-pane-1"], "Tab pane 1"),
          BS5ListLink("tab-2", ["href":"#tab-pane-2", "data-toggle":"list", "role":"tab", "aria-controls":"tab-pane-2"], "Tab pane 2"),
          BS5ListLink("tab-3", ["href":"#tab-pane-3", "data-toggle":"list", "role":"tab", "aria-controls":"tab-pane-3"], "Tab pane 3"))),
      H5Div(["col-4"], 
        H5Div(["tab-content"],
          H5Div("tab-pane-1", ["tab-pane", "fade", "show", "active"], ["role":"tabpanel", "aria-labelledby":"tab-1"], 
          "Tab pane 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
          H5Div("tab-pane-2", ["tab-pane", "fade", "show"], ["role":"tabpanel", "aria-labelledby":"tab-2"], 
          "Tab pane 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
          H5Div("tab-pane-3", ["tab-pane", "fade", "show"], ["role":"tabpanel", "aria-labelledby":"tab-3"], 
          "Tab pane 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
        )))
  ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
      ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "List Groups")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "listgroups")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "List Groups"),
      H5Hr,

      defaultExample, 
      activeExample,      
      disabledExample,      
      linksExample,      
      buttonsExample,      
      flushExample,      
      horizontalExample,      
      equalwidthExample,      
      colorsExample,      
      badgesExample,      
      customExample,      
      tabsExample

  ))).toString;

    }
  });
}