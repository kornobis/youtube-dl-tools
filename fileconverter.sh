# Fileconverter for downloaded files via youtube.dl
#
# (c) 2019 Michael Kornobis <github@kornobis.com>
# Version 0.1
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
############################################################################

# Change from mp4 to webm if needed
for FILE in *.mp4;
do
    echo -e "Processing video '\e[32m$FILE\e[0m'";
    
	# Convert to oga without re-compression. Works with .webm files
	#ffmpeg -i "${FILE}" -vn -y -acodec copy "${FILE%.webm}.oga"
	
	# Convert to ogg with re-compression, needed when converting from .mp4 files
	#ffmpeg -i "${FILE}" -vn -acodec libvorbis -y "${FILE%}.ogg"
	
	#echo "${FILE}" "${FILE%.webm}.oga"
done
