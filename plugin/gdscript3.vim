if exists("g:gdscript3_loaded")
    finish
endif
let g:gdscript3_loaded=1

au BufReadCmd res://* exe "bd!|edit ".substitute(expand("<afile>"),"res://*","","") | doauto BufRead

fun! GDScriptGetDeclNamespace()
    execute s:py_cmd . " gdscript_get_decl_namespace()"
    if exists("gdscript_decl_namespace")
        return gdscript_decl_namespace
    else
        return {}
    endif
endfun
command GDScriptGetDeclNamespace :echo GDScriptGetDeclNamespace()
