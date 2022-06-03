add_cus_dep( 'tex', 'aux', 0, 'makeexternaldocument' );

sub makeexternaldocument {
    if (!($root_filename eq $_[0])) {
        system("echo \\paper >> _constants.tex; cp main.tex paper.tex; latexmk -pdf paper");
    }
}
