Hugo Tricks:

Debugging Templates:
  - https://gohugo.io/templates/debugging/
    {{ printf "%#v" $.Site }}


Paginate only specific type of pages:
  - {{ $paginator := .Paginate (where .Data.Pages "Type" "post") }}



Get last 10 items of specific type:
  -> Section == "post"
  {{ $pages := where .Site.Pages "Section" "post" }}
  {{ range first 10 $pages }}



Debugging Go
  - https://github.com/spf13/spf13.com/blob/master/content/post/go-debugging.md


Articles:
  - https://gohugo.io/templates/list/ (MANY USEFUL SNIPPETS!)
  - http://zackofalltrades.com/notes/2014/05/hugo-from-scratch/
  - http://npf.io/2014/08/making-it-a-series/
  - http://npf.io/series/hugo-101/
