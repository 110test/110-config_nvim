for file in $(find . -maxdepth 1 -type f); do
  echo "========================================"
  echo "ARCHIVO: $file"
  echo "========================================"
  cat "$file"
  echo -e "\n"
done > mi_config_completa.txt
