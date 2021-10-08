#!/usr/bin/env bash

DATE="2021-10-08"
sed -i -r 's,\[(IMG_[0-9]{4})],<div class="img">\n\t<a target="_blank" href="/assets/images/'$DATE'/2x/\1.jpg" title="Click to view full size"><img src="/assets/images/'$DATE'/\1.jpg" width="580" alt="" /></a>\n</div>\n,g'  $1
sed -i -r 's,\[(IMG_[0-9]{4})\|(.+?)],<div class="img img-caption">\n\t<a target="_blank" href="/assets/images/'$DATE'/2x/\1.jpg" title="Click to view full size"><img src="/assets/images/'$DATE'/\1.jpg" width="580" alt="" /></a>\n\t<p>\2</p>\n</div>\n,g'  $1
# :%s/\[\(IMG_[0-9]+\)\]/<div class="image">\r<img src="\1" width="580" alt="" \/>\r<\/div>/g
