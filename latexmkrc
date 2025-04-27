
# From https://raw.githubusercontent.com/vectorgraphics/asymptote/HEAD/doc/latexmkrc
sub asy {return system("asy -o '$_[0]' '$_[0]'");}
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");
push @generated_exts, "pre", "%R-[0-9]*.pdf", "%R-[0-9]*.prc", "%R-[0-9]*.tex", "%R-[0-9]*.out", "%R-[0-9]*.pbsdat", "%R.pbsdat", "%R-[0-9]*.eps", "%R-*.asy" ;



# Trying this out...
# Copied parts from https://github.com/vEnhance/dotfiles/blob/main/latexmkrc

# This version is better than the one given by official asy doc
# because it will work with latexmk -cd as well.
# Unfortunately, I doubt it works on windows,
# because dirname is a linux command.
# sub run_asy {
#     return system("asy -o \$(dirname '$_[0]') '$_[0]'");
# }
# add_cus_dep("asy", "eps", 0, "run_asy");
# add_cus_dep("asy", "pdf", 0, "run_asy");
# add_cus_dep("asy", "tex", 0, "run_asy");


# latexmk should change directory to the source file of the TeX
# so relative paths get resolved correctly
$do_cd = 1;


# We always want to generate PDF files, not the old DVI/PS formats.
$dvi_mode = 0;
$postscript_mode = 0;

# SyncTeX gives certain editors and PDF viewers a way to jump like in Overleaf.
# So we just always enable this option by default.
push @extra_pdflatex_options, '-synctex=1' ;
push @extra_lualatex_options, '-synctex=1' ;

# By default, latex is really noisy and produces a lot of output
# that scrolls so fast that you can't read it even if you wanted to.
# It's stored in the *.log file anyway, so we just silence it.
$silent = 1;


# However, if latex crashes, we probably DO care about the error
# The following failure command searches the log file for lines beginning
# with exclamation marks, which are likely candidates for errors.
# It prints those lines and five lines following it.
# $failure_cmd = 'echo -e "\\033[1;31m---- BEGIN ERROR LOG %T ----\\033[1;37m"; '
#     . 'grep -A 5 "^! " %R.log; '
#     . 'echo -e "\\033[1;31m---- ENDOF ERROR LOG %T ----\\033[0m"; ';


$cleanup_includes_generated = 0;
$cleanup_includes_cusdep_generated = 1;
@generated_exts = ( 'aux', 'bbl', 'bcf', 'brf', 'fls', 'idx', 'ind', 'lof',
                    'lot', 'out', 'pre', 'toc', 'nav', 'snm',
                    'synctex.gz', 'synctex.gz.sum.synctex', 'pytxpyg', 'pytxmcr', 'pytxcode', 'tdo');

# vim: ft=perl
