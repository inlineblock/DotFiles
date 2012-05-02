"---------------------------------------------------------------------------
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[File Types]%%%%
"---------------------------------------------------------------------------

"-----------------------------------------------------------------[HTML]----
autocmd BufNewFile,BufRead *.htm,*.html set filetype=html.css.javascript
autocmd FileType html.css.javascript set nocindent autoindent smartindent

"------------------------------------------------------------------[CSS]----
autocmd BufNewFile,BufRead *.css,*.less set filetype=css

"-----------------------------------------------------------------[YAML]----

"-----------------------------------------------------------------[HAML]----
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd FileType haml set makeprg=haml\ %:p\ %:p:s?haml?html?

"-----------------------------------------------------------------[SASS]----
autocmd BufNewFile,BufRead *.sass set filetype=sass

"-----------------------------------------------------------[JavaScript]----
autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd FileType javascript set nocindent autoindent smartindent

"---------------------------------------------------------[Coffeescript]----
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

"-----------------------------------------------------------------[Ruby]----
"make -> ruby -c
autocmd BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,[rR]akefile,*.rake,*.thor set filetype=ruby
autocmd FileType ruby set dictionary=$HOME/.vim/dict/ruby.dict
autocmd FileType ruby set omnifunc=rubycomplete#Complete

"---------------------------------------------------------[ActionScript]----
autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd FileType actionscript set omnifunc=actionscriptcomplete#Complete
autocmd FileType actionscript set complete=k$HOME/.vim/dict/actionscript.dict,.,w,b,u,t,i
autocmd FileType actionscript set makeprg=as3compile\ %:p\ -X\ 320\ -Y\ 240\ -o\ %:p:s?as?swf?

"---------------------------------------------------------------[Python]----
"autocmd BufNewFile,BufRead *.py set filetype=python
autocmd FileType python let python_highlight_space_errors=1
autocmd FileType python let python_highlight_all=1
autocmd FileType python set omnifunc=pythoncomplete#Complete

"--------------------------------------------------------------------[C]----

"----------------------------------------------------------------[Obj-C]----

"-------------------------------------------------------------[Markdown]----
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set filetype=markdown
autocmd FileType markdown set wrap linebreak

"---------------------------------------------------------[ Processing ]----
autocmd BufNewFile,BufRead *.pde set filetype=java

"-----------------------------------------------------------[ Protobuf ]----
autocmd BufNewFile,BufRead *.proto set filetype=proto


