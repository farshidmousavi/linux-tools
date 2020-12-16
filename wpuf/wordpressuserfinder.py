import requests
from urllib.parse import urlparse
import os.path

title ="""
|----------------------------------------------------------------|
|                   Wordpress username finder                    |
|              Created by D4rkC0d3 for Lazy hackers :D           |
|                         Version: 1.0.0                         |
|         ----------------------------------------------         |
|                     ─────█─▄▀█──█▀▄─█─────                     |
|                     ────▐▌──────────▐▌────                     |
|                     ────█▌▀▄──▄▄──▄▀▐█────                     |
|                     ───▐██──▀▀──▀▀──██▌───                     |
|                     ──▄████▄──▐▌──▄████▄──                     |
|________________________________________________________________|
Usage:"""
print(title)
def inputTxt(command):
    txt = input(command)
    if txt == 'exit':
        sys.exit()
    #elif txt == '':
        #print (bcolors.BOLD+'Please type requested data!'+ bcolors.ENDC)
    else:
        return txt
target = input('\nTarget URL(with http:// or https://):\t')
if target != None:
    for i in range(10):
        try:
            gets = target+"?author="+str(i)
            r = requests.get(gets)
            if r.status_code == 200:
                username = (urlparse(r.url).path).replace('/author/','').replace('/','')
                if len(username)>2:
                    print ("userid:"+str(i)+"=  "+username)
        except:
            pass
