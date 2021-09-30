#!/usr/bin/env bash

DATE="2021-09-28"
sed -i -r 's,\[(IMG_[0-9]{4})],<div class="img">\n\t<img src="/assets/images/'$DATE'/\1.jpg" width="580" alt="" />\n</div>\n,g'  $1
sed -i -r 's,\[(IMG_[0-9]{4})\|(.+?)],<div class="img img-caption">\n\t<img src="/assets/images/'$DATE'/\1.jpg" width="580" alt="" />\n\t<p>\2</p>\n</div>\n,g'  $1
# :%s/\[\(IMG_[0-9]+\)\]/<div class="image">\r<img src="\1" width="580" alt="" \/>\r<\/div>/g