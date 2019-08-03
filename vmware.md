# VMwareが起動しないとき

dpkg -l linux-headers-`uname -r`
# 成功したら
sudo vmware-modconfig --console --install-all
