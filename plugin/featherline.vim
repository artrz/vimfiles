"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" FeatherLine (c) 2016 Arturo Rodríguez
" Version 0.1.0
"
" This software is provided as is under the MIT Licence
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" configure some settings considering the new line

set ls=2                               " Always show status line
set noshowmode                         " Hide default line

if !exists('g:FeatherLineScheme')
    let g:FeatherLineScheme = 'sleekhack'  " 'bubblegun' | 'sleekhack' | 'whatever'
endif


""""""""""""""""""""""""""""""""""""""""""""""""" Schemes

""""""""""""""""""""""""""""""""""""""""""""""" Bubblegun

let g:FeatherLineColorPalette_bubblegun = {
            \ 1 : ['110:235:NONE', '000000:ffffff:NONE'],
            \ 2 : ['235:238:NONE', 'ffffff:000000:NONE'],
            \ 3 : ['110:238:NONE', 'ffffff:000000:NONE'],
            \ 4 : ['235:110:NONE', 'ffff00:0000ff:NONE'],
            \ 5 : ['235:238:NONE', 'ffffff:000000:NONE'],
            \ 6 : ['0:238:NONE',   'ff00ff:00ff00:NONE'],
            \ 7 : ['0:0:NONE',     '000000:000000:NONE'],
            \}

let g:FeatherLineItems_bubblegun = [
            \ [8, [' ', '<<mode', ' ']],
            \ [1, ['<<s_left']],
            \ [2, ['<<s_left']],
            \ [3, ['<<filename']],
            \ [6, [' ', '<<s_git', ' ']],
            \ [3, ['<<git', '<<->>']],
            \ [6, ['<<file_format']],
            \ [3, [' ', '<<encoding', ' ']],
            \ [5, ['<<s_right']],
            \ [1, ['<<s_right']],
            \ [4, [' ','pos_percent', ' ', '<<line_num',' ', '<<column_num', ' ']],
            \]

let g:FeatherLineEditorMode_bubblegun = {
            \ 'normal'  : ['N',  '235:110:NONE', 'ffffff:000000:NONE'],
            \ 'insert'  : ['I',  '124:110:NONE', 'ffffff:000000:NONE'],
            \ 'replace' : ['R',  '124:110:NONE', 'ffffff:000000:NONE'],
            \ 'visual'  : ['V',  '122:110:NONE', 'ff00ff:00ff00:NONE'],
            \ 'vline'   : ['L',  '122:110:NONE', 'ff00ff:00ff00:NONE'],
            \ 'vblock'  : ['B',  '122:110:NONE', 'ff00ff:00ff00:NONE']
            \}

""""""""""""""""""""""""""""""""""""""""""""""" Sleekhack

let g:FeatherLineColorPalette_sleekhack = {
            \ 1 : ['234:0:NONE',  '000000:ffffff:NONE'],
            \ 2 : ['64:234:NONE', 'ffffff:000000:NONE'],
            \ 3 : ['10:64:NONE',  'ffffff:000000:NONE'],
            \ 4 : ['244:0:NONE',  'ffff00:0000ff:NONE'],
            \ 5 : ['233:10:NONE', 'ffffff:000000:NONE'],
            \ 6 : ['64:234:NONE', '000000:000000:NONE'],
            \ 7 : ['234:0:NONE',  '000000:000000:NONE'],
            \}

let g:FeatherLineItems_sleekhack = [
            \ [8, [' ', '<<mode', ' ']],
            \ [3, ['<<s_left', ' ', '<<s_git', ' ', '<<git', ' ']],
            \ [2, ['<<s_left']],
            \ [1, ['<<s_left']],
            \ [4, [' ', '<<filename', '<<->>', '<<encoding', ' ', '<<file_format', ' ']],
            \ [7, ['<<s_right']],
            \ [6, ['<<s_right']],
            \ [3, [' Col ', '<<column_num', ' ', '<<line_num', ' ', '<<pos_percent', ' ', '<<s_right']],
            \ [5, [' Buf ', '<<buffer_num'  ,'  ', '⎨', '<<is_modified', '⎬', ' ']],
            \]

let g:FeatherLineEditorMode_sleekhack = {
            \ 'normal'  : ['NOR', '233:10:NONE', 'ffffff:000000:NONE'],
            \ 'insert'  : ['INS', '1:10:NONE',   'ffffff:000000:NONE'],
            \ 'replace' : ['REP', '1:10:NONE',   'ffffff:000000:NONE'],
            \ 'visual'  : ['VIS', '19:10:NONE',  'ff00ff:00ff00:NONE'],
            \ 'vline'   : ['V·L', '19:10:NONE',  'ff00ff:00ff00:NONE'],
            \ 'vblock'  : ['V·B', '19:10:NONE',  'ff00ff:00ff00:NONE']
            \}

"""""""""""""""""""""""""""""""""""""""""""""""""" Default

if !exists('g:FeatherLineColorPalette')
    let g:FeatherLineColorPalette = {
                \ 1 : ['0:4:NONE',   '000000:ffffff:NONE'],
                \ 2 : ['4:0:NONE',   'ffffff:000000:NONE'],
                \ 3 : ['0:256:NONE', 'ffff00:0000ff:NONE'],
                \ 4 : ['6:0:NONE',   'ffffff:000000:NONE'],
                \ 5 : ['0:0:NONE',   '000000:000000:NONE'],
                \ 6 : ['0:0:NONE',   '000000:000000:NONE'],
                \ 7 : ['0:0:NONE',   '000000:000000:NONE'],
                \}
endif

if !exists('g:FeatherLineItems')
    let g:FeatherLineItems = [
                \ [8, [' ', '<<mode', ' ']],
                \ [1, ['<<s_left', ' ', '<<s_git', ' ', '<<git', ' ']],
                \ [2, ['<<s_left']],
                \ [2, ['%< ', '<<filepath', ' ']],
                \ [3, ['<<s_left']],
                \ [9, ['<<->>']],
                \ [3, ['<<s_right']],
                \ [2, [' ', '<<file_type', ' ', '<<s_right']],
                \ [1, [' ', '<<encoding', ' ', '<<file_format', ' ', '<<s_right']],
                \ [2, [' COL ', '<<column_num', ' ', '<<line_num', ' ', '<<pos_percent', ' ', '<<s_right']],
                \ [1, ['BUF', '<<buffer_num'  ,'  ', '⎨', '<<is_modified', '⎬', ' ']],
                \]
endif

if !exists('g:FeatherLineEditorMode')
    let g:FeatherLineEditorMode = {
                \ 'normal'  : ['NORMAL',  '4:0:NONE', 'ffffff:000000:NONE'],
                \ 'insert'  : ['INSERT',  '1:0:NONE', 'ffffff:000000:NONE'],
                \ 'replace' : ['REPLACE', '1:0:NONE', 'ffffff:000000:NONE'],
                \ 'visual'  : ['VISUAL',  '5:0:NONE', 'ff00ff:00ff00:NONE'],
                \ 'vline'   : ['V LINE',  '5:0:NONE', 'ff00ff:00ff00:NONE'],
                \ 'vblock'  : ['VBLOCK',  '5:0:NONE', 'ff00ff:00ff00:NONE']
                \}
endif

if !exists('g:FeatherLineSymbols')
    let g:FeatherLineSymbols = {
                \ 's_left'  : "\ue0b0",
                \ 's_right' : "\ue0b2",
                \ 's_alt'   : "\u2b80",
                \ 's_git'   : "\ue0a0",
                \ 's_pl'    : "\u00b1",
                \ 's_arrow' : "\u27a6",
                \ 's_x'     : "\u2718",
                \ 's_flash' : "\u26a1",
                \ 's_o'     : "\u2699",
                \}
endif

if !exists('g:FeatherLineElements')
    let g:FeatherLineElements = {
                \ 'filename'    : "%f",
                \ 'filepath'    : "%F",
                \ 'file_attrs'  : "%( [%R%M] %)",
                \ 'file_type'   : "%(%{&filetype}%)",
                \ 'file_format' : "%{&fileformat}",
                \ 'mode'        : "%8*%{Mode()}",
                \ 'git'         : "%{gitbranch#name()}",
                \ 'is_editable' : "%( %{(&ro!=0?'(readonly)':'')}%)",
                \ 'encoding'    : "%(%{(&fenc!=''?&fenc:&enc)}%)",
                \ 'line_num'    : "%l/%L",
                \ 'buffer_num'  : "#%n",
                \ 'pos_percent' : "%p%%",
                \ 'column_num'  : "%-3.c",
                \ 'is_modified' : "%{&modified ? 'dirty':'clean'}",
                \ '->>'         : "%="
                \}
endif

if !exists('g:FeatherLineElementHandlers')
    let g:FeatherLineElementHandlers = {
                \ 'left'  : '<<', 
                \ 'right' : ''
                \}
endif


""""""""""""""""""""""""""""""""""""""""""""""""" Methods

if has('statusline')

    ""
    " Buids the status line
    ""
    function! BuildStatusLine()
        call SetColors(GetPluginVariable('g:FeatherLineColorPalette'))

        call AddItems(GetPluginVariable('g:FeatherLineItems'),
                    \GetPluginVariable('g:FeatherLineElements'),
                    \GetPluginVariable('g:FeatherLineSymbols'),
                    \GetPluginVariable('g:FeatherLineElementHandlers')
                    \)
    endfunc

    ""
    " Dynamically gets a scheme plugin variable or the default as fallback
    ""
    function! GetPluginVariable(variableName)
        if exists('g:FeatherLineScheme')
            if exists(a:variableName.'_'.g:FeatherLineScheme)
                return {a:variableName.'_'.g:FeatherLineScheme}
            endif
        endif

        return {a:variableName}
    endfunc

    ""
    " Sets the color scheme
    ""
    function! SetColors(colorPalette)
        let colorScheme = []

        for [idx, colorDefinition] in items(a:colorPalette)
            let termColor = split(colorDefinition[0], ':')
            let guiColor  = split(colorDefinition[1], ':')

            let colorScheme += [
                        \'hi User'.idx.
                        \' guifg=#'.guiColor[0].' guibg=#'.guiColor[1].' gui='.guiColor[2].
                        \' ctermfg='.termColor[0].' ctermbg='.termColor[1].' cterm='.termColor[2]
                        \]
        endfor

        for paletteColor in colorScheme
            exec paletteColor
        endfor

        let g:FeatherLineColorScheme = colorScheme
    endfunc


    ""
    " Adds the items to the line
    ""
    function! AddItems(items, elements, symbols, handlers)
        let &stl = ''
        for colorItems in a:items
            let &stl .= '%'.colorItems[0].'*'

            for element in colorItems[1]
                let cleanedName = substitute(element, a:handlers['left'], "", "")
                let cleanedName = substitute(cleanedName, a:handlers['right'], "", "")

                if get(a:elements, cleanedName, '1') != '1' && get(a:elements, cleanedName, '2') != '2'
                    let &stl.=get(a:elements, cleanedName)
                elseif get(a:symbols, cleanedName, '1') != '1' && get(a:symbols, cleanedName, '2') != '2'
                    let &stl.=get(a:symbols, cleanedName)
                else
                    let &stl.= element
                endif
            endfor

            let &stl .= '%0*'
        endfor
    endfunc


    ""
    " Improves mode label
    ""
    function! Mode()
        redraw
        let l:mode = mode()

        let label = ''

        let codeMap = {
                \ 'n'  : 'normal',
                \ 'i'  : 'insert',
                \ 'R'  : 'replace',
                \ 'v'  : 'visual',
                \ 'V'  : 'vline',
                \ '': 'vblock'
                \}

        let colorDefinition = get(GetPluginVariable('g:FeatherLineEditorMode'), codeMap[mode], [])

        if len(colorDefinition) > 0
            let label     = colorDefinition[0]
            let termColor = split(colorDefinition[1], ':')
            let guiColor  = split(colorDefinition[2], ':')

            let colorScheme =
                    \'hi User8'.
                    \' guifg=#'.  guiColor[0].  ' guibg=#'.  guiColor[1].  ' gui='.  guiColor[2].
                    \' ctermfg='. termColor[0]. ' ctermbg='. termColor[1]. 'cterm='. termColor[2]

            exec colorScheme
        endif

        return label
    endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""" Launch

    au ColorScheme * call BuildStatusLine()

    call BuildStatusLine()
endif
