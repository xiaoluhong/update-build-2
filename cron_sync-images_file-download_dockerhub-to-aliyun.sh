#!/bin/bash

sudo apt-get install jq -y

sudo bash -c "echo 'nameserver 223.5.5.5' > /etc/resolv.conf"
cat /etc/resolv.conf

export registry=registry.cn-hangzhou.aliyuncs.com
export registry2=registry.cn-shenzhen.aliyuncs.com

#docker login ${registry} -u${ALIYUN_ACC} -p${ALIYUN_PW}
docker login ${registry2} -u${ALIYUN_ACC} -p${ALIYUN_PW}

docker pull hongxiaolu/website:file-download
docker tag hongxiaolu/website:file-download ${registry2}/rancher/website:file-download
docker push ${registry2}/rancher/website:file-download

