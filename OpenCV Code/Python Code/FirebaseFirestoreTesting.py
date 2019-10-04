import firebase_admin
import random
from firebase_admin import credentials
from firebase_admin import firestore
import math

# Use a service account
cred = credentials.Certificate('/Users/matthewyamamoto/Desktop/PythonStuff/smart-parking-7fbfd-8f87ee0330a4.json')
firebase_admin.initialize_app(cred)
db = firestore.client()
lot7A = [True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True, True]
#lot7A = [bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool]

def updateLot7A(lot7A):
    db = firestore.client()
    count = -1
    count2 = 1
    count3 = -1
    for x in lot7A:
        count += 1
        count3 += 1
        if(count3 == 10):
            count2 += 1
            count3 = 0
            count = 0
        strcnt = str(count)
        strcnt2 = str(count2)
        if (x == False):
           doc_ref = db.collection(u'Lot7').document(u'spot' + strcnt2 + '_' + strcnt)
           doc_ref.set({
               u'Open': u'False'
            })
        if(x == True):
            doc_ref = db.collection(u'Lot7').document(u'spot' + strcnt2 + '_' + strcnt)
            doc_ref.set({
                u'Open': u'True'
            })
#updateLot7A(lot7A)


def update(index, TorF):
    db = firestore.client()
    count = 1 + int(math.floor(index / 10.0));
    count = 1 + int(math.floor(index / 10.0)) ;
    string = str(index)
    index = int(string[len(string) - 1])
    if (TorF == True):
        doc_ref = db.collection(u'Lot7').document(u'spot' + str(count) + '_' + str(index))
        doc_ref.update({
            u'Open': (u'' + str(TorF))
        })
    else:
        doc_ref = db.collection(u'Lot7').document(u'spot' + str(count) + '_' + str(index))
        doc_ref.update({
            u'Open': (u'' + str(TorF))
        })


