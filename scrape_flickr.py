import flickrapi
import random
import time
from urllib import FancyURLopener
import urllib2
import simplejson
import sys

api_key = '35559c2af176639026c9b9eec2eba76f'
api_secret = '6506b7b3419bfafc'

# Define search term
search_term = "corgi"

# Replace spaces ' ' in search term for '%20' in order to comply with request
search_term = search_term.replace(' ','%20')

url_template = 'http://farm%(farm_id)s.staticflickr.com/%(server_id)s/%(photo_id)s_%(secret)s.jpg'

def url_for_photo(p):
    return url_template % {
        'server_id': p.get('server'),
        'farm_id': p.get('farm'),
        'photo_id': p.get('id'),
        'secret': p.get('secret'),
    }

flickr = flickrapi.FlickrAPI(api_key, api_secret)
# photos = flickr.photos_search(tags=search_term, text=search_term, per_page=100, sort="relevance")[0]
photos = flickr.photos_getRecent(per_page=500)[0]

# Start FancyURLopener with defined version
class MyOpener(FancyURLopener):
    version = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11'
myopener = MyOpener()

for i, photo in enumerate(photos):
    url = url_for_photo(photo)
    print url
    myopener.retrieve(url, "flickr_" + str(i).zfill(3) + '.jpg')

    # Sleep for one second to prevent IP blocking from Google
    time.sleep(1)
