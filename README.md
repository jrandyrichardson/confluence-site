Terracotta Confluence static site
-------

This repository is a static export from the original Terracotta Confluence site. 
It is hosted using GitHub Pages (GitHub runs Jekyll).  Push to `main` is a **publish** (after a short delay on GH side). 

## Caveats

### Permalinks and Hiding Extensions
Jekyll limitations make removing `.html` extension (to preserve old URLs) difficult for **pages with dots** in the url.
* https://talk.jekyllrb.com/t/how-to-remove-extension-on-pages-with-dots-periods-in-the-name/6556
* https://github.com/jekyll/jekyll/issues/4996
* https://github.com/jekyll/jekyll/issues/3809#issuecomment-114566200

A workaround is in place:
* All front matter `permalink` tags have `.html` on the end (at least for pages with dots in the permalink)
* The nav from the theme (`_includes/header.html`) was modified to remove `.html`
* Jekyll/GH seem to serve pages with or without `.html`

### Linking to Pages and Anchors

Link to pages without `.html` suffix!

* Sibling link: `[Name](The+Page+Name)` (basename of the permalink without path)
* Non-sibling link: `[Name](/path/to/The+Page+Name)` (full permalink of target page)
* Anchor link: `[Name](The+Page+Name#lower-case-dashes-for-spaces-in-target-heading)` (headings have implicit ids)

### Adding Pages

* Filename does not matter (but should be easy to find and ideally free of special characters)
* `permalink` in front matter... matters and defines final filename.
* Ensure `permalink` ends in `.html` if there are any dots in the permalink value.
* New pages appear in nav menu automatically

## Local Testing

### Local Jekyll
At this time, local testing is done using the same versions of ruby and jekyll as https://pages.github.com/versions/

Easiest way is to use [rbenv](https://github.com/rbenv/rbenv), then:
```shell
rbenv install 2.7.3
rbenv shell 2.7.3  #select for this shell
rbenv bundle install # install gems
rbenv bundle exec jekyll s --watch [--incremental] # incremental is fast but does not apply structural changes
```

### Link Checking

* Download linkcheck from https://github.com/filiph/linkcheck/releases
* `./linkcheck http://localhost:4000`
