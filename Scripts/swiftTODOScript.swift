TAGS="TODO:|FIXME:"
find "." \( -name "*.h" -or -name "*.m" -or -name "*.swift" \) -not -path "./Pods/*" -not -path "./Scripts/*" -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($TAGS).*\$" | perl -p -e "s/($TAGS)/ warning: \$1/"
