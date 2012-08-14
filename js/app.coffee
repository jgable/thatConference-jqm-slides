
# Load our scripts with head js

head.js if !document.body.classList then 'lib/js/classList.js' else null 
head.js '/js/lib/reveal.js', ->
    # Taken from the example index.html in the reveal.js download.
    query = {};
    location.search.replace /[A-Z0-9]+?=(\w*)/gi, (a) ->
        query[ a.split( '=' ).shift() ] = a.split( '=' ).pop()
    

    # Full list of configuration options available here:
    # https://github.com/hakimel/reveal.js#configuration
    Reveal.initialize
        controls: true,
        progress: true,
        history: true,
        theme: query.theme || 'default', # default/neon/beige
        transition: query.transition || 'default' # default/cube/page/concave/linear(2d)

head.js '/js/lib/highlight.js', ->
    hljs.initHighlightingOnLoad()
        
    
