echo "** TIFF processing started **"
gdal_translate -co "ZLEVEL=9" -of mbtiles /home/sehbaz/test.tif princes_new_mosaic.mbtiles
gdaladdo -r nearest princes_new_mosaic.mbtiles
echo "** Mosaic processing completed sucessfully ! **"
