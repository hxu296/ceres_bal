for file in *.log; do
  # If the filename ends with .txt.log, just remove the trailing .log.
  if [[ "$file" =~ \.txt\.log$ ]]; then
    newfile="${file%.log}"
  else
    # Otherwise, replace the .log with .txt.
    newfile="${file%.log}.txt"
  fi
  echo "Renaming '$file' to '$newfile'"
  mv "$file" "$newfile"
done

