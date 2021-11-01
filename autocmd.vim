"---------------------------------------------------------------------------
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[File Types]%%%%
"---------------------------------------------------------------------------

"-----------------------------------------------------------------[HTML]----
autocmd BufNewFile,BufRead *.htm,*.html set filetype=html.css.javascript.jsx
autocmd FileType html.css.javascript.jsx set nocindent autoindent smartindent
autocmd FileType eruby set colorcolumn=100

"------------------------------------------------------------------[CSS]----
autocmd BufNewFile,BufRead *.css,*.less set filetype=css

"-----------------------------------------------------------------[YAML]----

"-----------------------------------------------------------------[HAML]----
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd FileType haml set makeprg=haml\ %:p\ %:p:s?haml?html?

"-----------------------------------------------------------------[SASS]----
autocmd BufNewFile,BufRead *.sass set filetype=sass


"-----------------------------------------------------------------[SCSS]----
autocmd BufNewFile,BufRead *.scss set filetype=scss
autocmd BufNewFile,BufRead *.less set filetype=less


"-----------------------------------------------------------------[ERB]----
autocmd BufNewFile,BufRead *.erb set filetype=eruby
autocmd FileType eruby set nocindent autoindent smartindent
autocmd FileType eruby set colorcolumn=140

"-----------------------------------------------------------[JavaScript]----
autocmd BufNewFile,BufRead *.tsx,*.ts,*.js,*.es6,*.jsx set filetype=javascript.jsx
autocmd FileType javascript.jsx set nocindent autoindent smartindent
autocmd FileType javascript.jsx hi jsFuncCall guifg=#b0ff49
autocmd FileType javascript.jsx hi jsObjectKey guifg=#FFD398
autocmd FileType javascript.jsx hi jsFuncArgs guifg=#FF7349
autocmd FileType javascript.jsx set colorcolumn=160

"---------------------------------------------------------[TypeScript]----
" autocmd BufNewFile,BufRead *.tsx,*.ts set filetype=typescript
" autocmd FileType typescript :set makeprg=tsc
let g:typescript_compiler_binary = 'tsc'
let g:typescript_indent_disable = 1

"---------------------------------------------------------[Coffeescript]----
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

"-----------------------------------------------------------------[Ruby]----
"make -> ruby -c
autocmd BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,[rR]akefile,*.rake,*.thor set filetype=ruby
autocmd FileType ruby set dictionary=$HOME/.vim/dict/ruby.dict
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby set re=1
autocmd FileType ruby set colorcolumn=140

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
autocmd FileType markdown set wrap linebreak spell

"---------------------------------------------------------[ Processing ]----
autocmd BufNewFile,BufRead *.pde set filetype=java

"-----------------------------------------------------------[ Protobuf ]----
autocmd BufNewFile,BufRead *.proto set filetype=proto


