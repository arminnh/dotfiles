# ~/.bash_functions: used by bashrc

function killallport() {
  kill -9 $(lsof -t -i:$1)
}

# Create a new directory and enter it
function mk() {
  mkdir -p "$@" && cd "$@"
}

# Open man page as PDF
function manpdf() {
 #man -t "${1}" | open -f -a /Applications/Preview.app/
 man -t "${1}" | open -f /Applications/Preview.app/
}

# Extra many types of compressed packages
# Credit: http://nparikh.org/notes/zshrc.txt
extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2)  tar -jxvf "$1"                        ;;
      *.tar.gz)   tar -zxvf "$1"                        ;;
      *.bz2)      bunzip2 "$1"                          ;;
      *.dmg)      hdiutil mount "$1"                    ;;
      *.gz)       gunzip "$1"                           ;;
      *.tar)      tar -xvf "$1"                         ;;
      *.tbz2)     tar -jxvf "$1"                        ;;
      *.tgz)      tar -zxvf "$1"                        ;;
      *.zip)      unzip "$1"                            ;;
      *.ZIP)      unzip "$1"                            ;;
      *.pax)      cat "$1" | pax -r                     ;;
      *.pax.Z)    uncompress "$1" --stdout | pax -r     ;;
      *.Z)        uncompress "$1"                       ;;
      *) echo "'$1' cannot be extracted/mounted via extract()" ;;
    esac
  else
     echo "'$1' is not a valid file to extract"
  fi
}

function compress-pdf() {
  if [ -f "$1" ]; then
    echo "Compressing file $1";
    /usr/bin/gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$1.compressed" "$1"
  else
    echo "Usage: compress_pdf [pdf_file]";
  fi
}

function pdf_to_png() {
  for i in "$@"
  do
    if [ -d "$i" ]; then
      echo "$i is a directory."
    elif [ -e "$i" ]; then
      echo "Converting $i."
      FILE_NO_EXT="${i%.*}"
      pdftoppm "$i" "$FILE_NO_EXT" -png -f 1 -singlefile -rx 200 -ry 200
    else
      echo "$i - directory empty."
    fi
  done
}

function markdown_to_pdf() {
  pandoc "$1" -o "${1%.*}.pdf" -V geometry:margin=1in -f markdown-implicit_figures --toc --number-sections
}

function combine_pdfs() {
  ghostscript -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$1" -dAutoRotatePages=/None "${@:2}"
}

function pdf_to_clipboard() {
  base64 "$1" | tr -d '\n' | xclip
}
