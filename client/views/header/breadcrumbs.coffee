Template.breadcrumbs.helpers
    paths: () ->
        routes = Router.current().path.split("/")
        ({'route': element} for element in routes)