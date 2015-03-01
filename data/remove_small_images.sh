find . \
  -name "all_data/*.jpg" \
  -exec bash -c "sips -g pixelHeight -g pixelWidth {} | grep -E ' [12]?[0-9]{0,2}$' >/dev/null" \;\
  -print 
