
#!/usr/bin/env python
'''
__purpose__:  This file used to create custom keywords for robot framework
__date created__: 20th March, 2021
__date modified__: 20th March,2021

Note: Currently it is not used as there is no use of any of the custom fuction for currently automated test flow
'''


import base64

def decode_password(encoded_passwd):
    passwd = base64.b64decode(encoded_passwd)
    return passwd
