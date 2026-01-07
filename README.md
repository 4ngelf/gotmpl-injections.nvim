# gotmpl injections for neovim

Select the desired injection language into any go template.
I made this plugin for use with [chezmoi] but it can be used for any go
template.

[chezmoi]: https://www.chezmoi.io

## Usage

Add the comment `{{- /*lang:{injection.language}*/ -}}` at the top of the
template replacing `injection.language`. This comment may be preceded by any text
but it must be the _first_ [go template action] in the template.

[go template action]: https://pkg.go.dev/text/template#hdr-Actions

Example in an `index.html` file:

```gotmpl
{{- /*lang:html*/ -}}
<html>
<head>
    <title>{{.mytitle}}</title>
</head>
</html>

<!-- You can use vim modelines for files without the .tmpl extension -->
<!-- vim: ft=gotmpl -->
```

## Contents

This plugin just has two things:

1. [The query for the injections](./queries/gotmpl/injections.scm)
2. [A filetype definition for `.tmpl` files](./filetype.lua)
