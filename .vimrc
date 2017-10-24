set mouse=""                "keine mouse-funtionalitaet
set showbreak=\             "anzeigen wenn die Zeile breiter als in columns 
                            "angegeben
set columns=80              "Zeile 80 Zeichen breit
set expandtab
set tabstop=4               
set shiftwidth=4
set wildmode=list:longest   "tabcompletion wie von der Konsole gewoehnt
set backspace=2             "backspace macht backspace und nicht delete
set vb t_vb=                "keine Piepen und kein Blinken
set ruler                   "Zeilen-Spalten anzeige aktivieren
set laststatus=2            "Statuszeile immer anzeigen
set autoindent     
set modeline
set modelines=1

" Only do this for Vim version 5.0 and later.
if version >= 500
    set background=dark
    syntax on               "syntax highlighting
    set hlsearch            "suchergebnisse gehylightet
    "cident fuer c und java dateien aktivieren
    augroup indents
        au BufNewFile,BufRead *.c,*.cc,*.cpp,*.java set cindent
    augroup END
endif

if version >= 600 
    "folding konfigurieren
    "wer mit folding nicht zurecht kommt sollte die ganze gruppe entfernen
    augroup foldings
        au BufNewFile,BufRead * set foldmethod=manual
        au BufNewFile,BufRead *.c,*.cc,*.cpp,*.java set foldmethod=indent
        au BufNewFile,BufRead *.c,*.cc,*.cpp set foldnestmax=1
        au BufNewFile,BufRead *.java set foldnestmax=2
    augroup END
endif

set rtp+=/Library/Frameworks/Python.framework/Versions/3.6/lib/python3.6/site-packages/powerline/bindings/vim
