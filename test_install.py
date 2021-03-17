#!/usr/bin/env python

import time
import subprocess
import sys
import shlex
import os

clients = {
    "BARBEROSGERBY": "@barberosgerby.com",
    "HEREDESIGN": "@heredesign.co.uk"
}


company = ""
# Function to asks input and checks that client name
# from company input exsists in 'Clients' - loops function if company not found
def client_check():
    global company
    company = raw_input("Please enter in the client name: ").replace(" ", "")
    client = company.upper()
    valid_reply = True
    while valid_reply == True:
        if client in clients.keys():
            client = clients.get(company.upper())
            valid_reply = False
        elif client == "EXIT":
            print("\nCiao Ciao Bambino!\n")
            exit()
        else:
            print(
                """\nCompany not found, or is not curerntly in App directory.
Please try another company or re-enter to try again.\n
Type in 'exit' to break out of the loop and quit the script.\n
"""
            )
            return client_check()
    return client


# Calls function and assigns client value to variable
client_name = client_check()


def here_user():
    cmd = ("curl -L" if sys.platform == "darwin" else "wget")
    url = 'https://raw.githubusercontent.com/Jim-RM/test_install/main/hd.sh'
    cmd += " {0} -o {1}".format(url, url.split("/")[-1])
    p = subprocess.Popen(shlex.split(cmd), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

    (stdout, stderr) = p.communicate()
    if stderr:
        raise Exception(stderr)
    subprocess.call(['bash', './new_machine.sh'])

    os.remove('new_machine.sh')


def bo_user():
    cmd = ("curl -L" if sys.platform == "darwin" else "wget")
    url = 'https://raw.githubusercontent.com/Jim-RM/test_install/main/bo.sh'
    cmd += " {0} -o {1}".format(url, url.split("/")[-1])
    p = subprocess.Popen(shlex.split(cmd), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

    (stdout, stderr) = p.communicate()
    if stderr:
        raise Exception(stderr)
    subprocess.call(['bash', './new_machine.sh'])

    os.remove('new_machine.sh')



if company.upper() == "HEREDESIGN":
    here_user()
elif company.upper() == "BARBEROSGERBY":
    bo_user()
