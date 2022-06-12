echo "** TIFF processing started **"

gdal_translate -co "ZLEVEL=9" -of mbtiles test.tif test.mbtiles
gdaladdo -r nearest test.mbtiles

echo "** Mosaic processing completed sucessfully ! **"
