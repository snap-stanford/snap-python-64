%pythoncode %{

#
# define __getitem__ for [] addressing
#

def getitem_vec(self, i):
    return self.GetVal(i)

def setitem_vec(self, i, val):
    self.SetVal(i, val)

def len_vec(self):
    return self.Len()

def delitem_vec(self,  i):
    self.Del(i)

#
# define iterator for TVec
#

class IterVec:
    def __init__(self, vec):
        self.vec = vec
        self.count = -1

    def __iter__(self):
        return self

    def __next__(self):
        return self.next()

    def next(self):
        if self.count+1 < self.vec.Len():
            self.count += 1
            return self.vec[self.count]

        raise StopIteration

def itervec(self):
    return IterVec(self)

# expand TVec types with methods __iter__ and __getitem__

TIntV.__getitem__ = getitem_vec
TIntV.__setitem__ = setitem_vec
TIntV.__iter__ = itervec
TIntV.__len__ = len_vec
TIntV.__delitem__ = delitem_vec

TInt64V.__getitem__ = getitem_vec
TInt64V.__setitem__ = setitem_vec
TInt64V.__iter__ = itervec
TInt64V.__len__ = len_vec
TInt64V.__delitem__ = delitem_vec

TFltV.__getitem__ = getitem_vec
TFltV.__setitem__ = setitem_vec
TFltV.__iter__ = itervec
TFltV.__len__ = len_vec
TFltV.__delitem__ = delitem_vec

TFlt64V.__getitem__ = getitem_vec
TFlt64V.__setitem__ = setitem_vec
TFlt64V.__iter__ = itervec
TFlt64V.__len__ = len_vec
TFlt64V.__delitem__ = delitem_vec

TIntIntVV.__getitem__ = getitem_vec
TIntIntVV.__setitem__ = setitem_vec
TIntIntVV.__iter__ = itervec
TIntIntVV.__len__ = len_vec
TIntIntVV.__delitem__ = delitem_vec

TIntPrV.__getitem__ = getitem_vec
TIntPrV.__setitem__ = setitem_vec
TIntPrV.__iter__ = itervec
TIntPrV.__len__ = len_vec
TIntPrV.__delitem__ = delitem_vec

TIntPr64V.__getitem__ = getitem_vec
TIntPr64V.__setitem__ = setitem_vec
TIntPr64V.__iter__ = itervec
TIntPr64V.__len__ = len_vec
TIntPr64V.__delitem__ = delitem_vec

TFltPrV.__getitem__ = getitem_vec
TFltPrV.__setitem__ = setitem_vec
TFltPrV.__iter__ = itervec
TFltPrV.__len__ = len_vec
TFltPrV.__delitem__ = delitem_vec

TFltPr64V.__getitem__ = getitem_vec
TFltPr64V.__setitem__ = setitem_vec
TFltPr64V.__iter__ = itervec
TFltPr64V.__len__ = len_vec
TFltPr64V.__delitem__ = delitem_vec

TIntFltKdV.__getitem__ = getitem_vec
TIntFltKdV.__setitem__ = setitem_vec
TIntFltKdV.__iter__ = itervec
TIntFltKdV.__len__ = len_vec
TIntFltKdV.__delitem__ = delitem_vec

TIntFltKd64V.__getitem__ = getitem_vec
TIntFltKd64V.__setitem__ = setitem_vec
TIntFltKd64V.__iter__ = itervec
TIntFltKd64V.__len__ = len_vec
TIntFltKd64V.__delitem__ = delitem_vec

TCnComV.__getitem__ = getitem_vec
TCnComV.__setitem__ = setitem_vec
TCnComV.__iter__ = itervec
TCnComV.__len__ = len_vec
TCnComV.__delitem__ = delitem_vec

TCnCom.__getitem__ = getitem_vec
TCnCom.__setitem__ = setitem_vec
TCnCom.__iter__ = itervec
TCnCom.__len__ = len_vec
TCnCom.__delitem__ = delitem_vec

Schema.__getitem__ = getitem_vec
Schema.__setitem__ = setitem_vec
Schema.__iter__ = itervec
Schema.__len__ = len_vec
Schema.__delitem__ = delitem_vec

PNEANetV.__getitem__ = getitem_vec
PNEANetV.__setitem__ = setitem_vec
PNEANetV.__iter__ = itervec
PNEANetV.__len__ = len_vec
PNEANetV.__delitem__ = delitem_vec
%}

#if SNAP_ALL
%pythoncode %{
TBoolV.__getitem__ = getitem_vec
TBoolV.__setitem__ = setitem_vec
TBoolV.__iter__ = itervec
TBoolV.__len__ = len_vec
TBoolV.__delitem__ = delitem_vec

TChV.__getitem__ = getitem_vec
TChV.__setitem__ = setitem_vec
TChV.__iter__ = itervec
TChV.__len__ = len_vec
TChV.__delitem__ = delitem_vec

TUChV.__getitem__ = getitem_vec
TUChV.__setitem__ = setitem_vec
TUChV.__iter__ = itervec
TUChV.__len__ = len_vec
TUChV.__delitem__ = delitem_vec

TUIntV.__getitem__ = getitem_vec
TUIntV.__setitem__ = setitem_vec
TUIntV.__iter__ = itervec
TUIntV.__len__ = len_vec
TUIntV.__delitem__ = delitem_vec

TUInt64V.__getitem__ = getitem_vec
TUInt64V.__setitem__ = setitem_vec
TUInt64V.__iter__ = itervec
TUInt64V.__len__ = len_vec
TUInt64V.__delitem__ = delitem_vec

TSFltV.__getitem__ = getitem_vec
TSFltV.__setitem__ = setitem_vec
TSFltV.__iter__ = itervec
TSFltV.__len__ = len_vec
TSFltV.__delitem__ = delitem_vec

TSFlt64V.__getitem__ = getitem_vec
TSFlt64V.__setitem__ = setitem_vec
TSFlt64V.__iter__ = itervec
TSFlt64V.__len__ = len_vec
TSFlt64V.__delitem__ = delitem_vec

TAscFltV.__getitem__ = getitem_vec
TAscFltV.__setitem__ = setitem_vec
TAscFltV.__iter__ = itervec
TAscFltV.__len__ = len_vec
TAscFltV.__delitem__ = delitem_vec

TStrV.__getitem__ = getitem_vec
TStrV.__setitem__ = setitem_vec
TStrV.__iter__ = itervec
TStrV.__len__ = len_vec
TStrV.__delitem__ = delitem_vec

TStr64V.__getitem__ = getitem_vec
TStr64V.__setitem__ = setitem_vec
TStr64V.__iter__ = itervec
TStr64V.__len__ = len_vec
TStr64V.__delitem__ = delitem_vec

TChAV.__getitem__ = getitem_vec
TChAV.__setitem__ = setitem_vec
TChAV.__iter__ = itervec
TChAV.__len__ = len_vec
TChAV.__delitem__ = delitem_vec

TIntTrV.__getitem__ = getitem_vec
TIntTrV.__setitem__ = setitem_vec
TIntTrV.__iter__ = itervec
TIntTrV.__len__ = len_vec
TIntTrV.__delitem__ = delitem_vec

TIntQuV.__getitem__ = getitem_vec
TIntQuV.__setitem__ = setitem_vec
TIntQuV.__iter__ = itervec
TIntQuV.__len__ = len_vec
TIntQuV.__delitem__ = delitem_vec

TFltTrV.__getitem__ = getitem_vec
TFltTrV.__setitem__ = setitem_vec
TFltTrV.__iter__ = itervec
TFltTrV.__len__ = len_vec
TFltTrV.__delitem__ = delitem_vec

TFltTr64V.__getitem__ = getitem_vec
TFltTr64V.__setitem__ = setitem_vec
TFltTr64V.__iter__ = itervec
TFltTr64V.__len__ = len_vec
TFltTr64V.__delitem__ = delitem_vec

TIntKdV.__getitem__ = getitem_vec
TIntKdV.__setitem__ = setitem_vec
TIntKdV.__iter__ = itervec
TIntKdV.__len__ = len_vec
TIntKdV.__delitem__ = delitem_vec

TUChIntPrV.__getitem__ = getitem_vec
TUChIntPrV.__setitem__ = setitem_vec
TUChIntPrV.__iter__ = itervec
TUChIntPrV.__len__ = len_vec
TUChIntPrV.__delitem__ = delitem_vec

TUChUInt64PrV.__getitem__ = getitem_vec
TUChUInt64PrV.__setitem__ = setitem_vec
TUChUInt64PrV.__iter__ = itervec
TUChUInt64PrV.__len__ = len_vec
TUChUInt64PrV.__delitem__ = delitem_vec

TIntUInt64PrV.__getitem__ = getitem_vec
TIntUInt64PrV.__setitem__ = setitem_vec
TIntUInt64PrV.__iter__ = itervec
TIntUInt64PrV.__len__ = len_vec
TIntUInt64PrV.__delitem__ = delitem_vec

TIntUInt64KdV.__getitem__ = getitem_vec
TIntUInt64KdV.__setitem__ = setitem_vec
TIntUInt64KdV.__iter__ = itervec
TIntUInt64KdV.__len__ = len_vec
TIntUInt64KdV.__delitem__ = delitem_vec

TIntFltPrV.__getitem__ = getitem_vec
TIntFltPrV.__setitem__ = setitem_vec
TIntFltPrV.__iter__ = itervec
TIntFltPrV.__len__ = len_vec
TIntFltPrV.__delitem__ = delitem_vec

TIntFltPrKdV.__getitem__ = getitem_vec
TIntFltPrKdV.__setitem__ = setitem_vec
TIntFltPrKdV.__iter__ = itervec
TIntFltPrKdV.__len__ = len_vec
TIntFltPrKdV.__delitem__ = delitem_vec

TIntFltPrKd64V.__getitem__ = getitem_vec
TIntFltPrKd64V.__setitem__ = setitem_vec
TIntFltPrKd64V.__iter__ = itervec
TIntFltPrKd64V.__len__ = len_vec
TIntFltPrKd64V.__delitem__ = delitem_vec

TFltIntPrV.__getitem__ = getitem_vec
TFltIntPrV.__setitem__ = setitem_vec
TFltIntPrV.__iter__ = itervec
TFltIntPrV.__len__ = len_vec
TFltIntPrV.__delitem__ = delitem_vec

TFltUInt64PrV.__getitem__ = getitem_vec
TFltUInt64PrV.__setitem__ = setitem_vec
TFltUInt64PrV.__iter__ = itervec
TFltUInt64PrV.__len__ = len_vec
TFltUInt64PrV.__delitem__ = delitem_vec

TFltStrPrV.__getitem__ = getitem_vec
TFltStrPrV.__setitem__ = setitem_vec
TFltStrPrV.__iter__ = itervec
TFltStrPrV.__len__ = len_vec
TFltStrPrV.__delitem__ = delitem_vec

TAscFltStrPrV.__getitem__ = getitem_vec
TAscFltStrPrV.__setitem__ = setitem_vec
TAscFltStrPrV.__iter__ = itervec
TAscFltStrPrV.__len__ = len_vec
TAscFltStrPrV.__delitem__ = delitem_vec

TIntStrPrV.__getitem__ = getitem_vec
TIntStrPrV.__setitem__ = setitem_vec
TIntStrPrV.__iter__ = itervec
TIntStrPrV.__len__ = len_vec
TIntStrPrV.__delitem__ = delitem_vec

TIntIntStrTrV.__getitem__ = getitem_vec
TIntIntStrTrV.__setitem__ = setitem_vec
TIntIntStrTrV.__iter__ = itervec
TIntIntStrTrV.__len__ = len_vec
TIntIntStrTrV.__delitem__ = delitem_vec

TIntIntFltTrV.__getitem__ = getitem_vec
TIntIntFltTrV.__setitem__ = setitem_vec
TIntIntFltTrV.__iter__ = itervec
TIntIntFltTrV.__len__ = len_vec
TIntIntFltTrV.__delitem__ = delitem_vec

TIntFltIntTrV.__getitem__ = getitem_vec
TIntFltIntTrV.__setitem__ = setitem_vec
TIntFltIntTrV.__iter__ = itervec
TIntFltIntTrV.__len__ = len_vec
TIntFltIntTrV.__delitem__ = delitem_vec

TIntStrIntTrV.__getitem__ = getitem_vec
TIntStrIntTrV.__setitem__ = setitem_vec
TIntStrIntTrV.__iter__ = itervec
TIntStrIntTrV.__len__ = len_vec
TIntStrIntTrV.__delitem__ = delitem_vec

TIntKdV.__getitem__ = getitem_vec
TIntKdV.__setitem__ = setitem_vec
TIntKdV.__iter__ = itervec
TIntKdV.__len__ = len_vec
TIntKdV.__delitem__ = delitem_vec

TUIntIntKdV.__getitem__ = getitem_vec
TUIntIntKdV.__setitem__ = setitem_vec
TUIntIntKdV.__iter__ = itervec
TUIntIntKdV.__len__ = len_vec
TUIntIntKdV.__delitem__ = delitem_vec

TIntPrFltKdV.__getitem__ = getitem_vec
TIntPrFltKdV.__setitem__ = setitem_vec
TIntPrFltKdV.__iter__ = itervec
TIntPrFltKdV.__len__ = len_vec
TIntPrFltKdV.__delitem__ = delitem_vec

TIntStrKdV.__getitem__ = getitem_vec
TIntStrKdV.__setitem__ = setitem_vec
TIntStrKdV.__iter__ = itervec
TIntStrKdV.__len__ = len_vec
TIntStrKdV.__delitem__ = delitem_vec

TIntStrPrPrV.__getitem__ = getitem_vec
TIntStrPrPrV.__setitem__ = setitem_vec
TIntStrPrPrV.__iter__ = itervec
TIntStrPrPrV.__len__ = len_vec
TIntStrPrPrV.__delitem__ = delitem_vec

TIntStrVPrV.__getitem__ = getitem_vec
TIntStrVPrV.__setitem__ = setitem_vec
TIntStrVPrV.__iter__ = itervec
TIntStrVPrV.__len__ = len_vec
TIntStrVPrV.__delitem__ = delitem_vec

TIntIntVIntTrV.__getitem__ = getitem_vec
TIntIntVIntTrV.__setitem__ = setitem_vec
TIntIntVIntTrV.__iter__ = itervec
TIntIntVIntTrV.__len__ = len_vec
TIntIntVIntTrV.__delitem__ = delitem_vec

TIntIntIntVTrV.__getitem__ = getitem_vec
TIntIntIntVTrV.__setitem__ = setitem_vec
TIntIntIntVTrV.__iter__ = itervec
TIntIntIntVTrV.__len__ = len_vec
TIntIntIntVTrV.__delitem__ = delitem_vec

TUInt64IntPrV.__getitem__ = getitem_vec
TUInt64IntPrV.__setitem__ = setitem_vec
TUInt64IntPrV.__iter__ = itervec
TUInt64IntPrV.__len__ = len_vec
TUInt64IntPrV.__delitem__ = delitem_vec

TUInt64FltPrV.__getitem__ = getitem_vec
TUInt64FltPrV.__setitem__ = setitem_vec
TUInt64FltPrV.__iter__ = itervec
TUInt64FltPrV.__len__ = len_vec
TUInt64FltPrV.__delitem__ = delitem_vec

TUInt64StrPrV.__getitem__ = getitem_vec
TUInt64StrPrV.__setitem__ = setitem_vec
TUInt64StrPrV.__iter__ = itervec
TUInt64StrPrV.__len__ = len_vec
TUInt64StrPrV.__delitem__ = delitem_vec

TUInt64IntKdV.__getitem__ = getitem_vec
TUInt64IntKdV.__setitem__ = setitem_vec
TUInt64IntKdV.__iter__ = itervec
TUInt64IntKdV.__len__ = len_vec
TUInt64IntKdV.__delitem__ = delitem_vec

TUInt64FltKdV.__getitem__ = getitem_vec
TUInt64FltKdV.__setitem__ = setitem_vec
TUInt64FltKdV.__iter__ = itervec
TUInt64FltKdV.__len__ = len_vec
TUInt64FltKdV.__delitem__ = delitem_vec

TUInt64StrKdV.__getitem__ = getitem_vec
TUInt64StrKdV.__setitem__ = setitem_vec
TUInt64StrKdV.__iter__ = itervec
TUInt64StrKdV.__len__ = len_vec
TUInt64StrKdV.__delitem__ = delitem_vec

TFltBoolKdV.__getitem__ = getitem_vec
TFltBoolKdV.__setitem__ = setitem_vec
TFltBoolKdV.__iter__ = itervec
TFltBoolKdV.__len__ = len_vec
TFltBoolKdV.__delitem__ = delitem_vec

TFltIntKdV.__getitem__ = getitem_vec
TFltIntKdV.__setitem__ = setitem_vec
TFltIntKdV.__iter__ = itervec
TFltIntKdV.__len__ = len_vec
TFltIntKdV.__delitem__ = delitem_vec

TFltUInt64KdV.__getitem__ = getitem_vec
TFltUInt64KdV.__setitem__ = setitem_vec
TFltUInt64KdV.__iter__ = itervec
TFltUInt64KdV.__len__ = len_vec
TFltUInt64KdV.__delitem__ = delitem_vec

TFltIntPrKdV.__getitem__ = getitem_vec
TFltIntPrKdV.__setitem__ = setitem_vec
TFltIntPrKdV.__iter__ = itervec
TFltIntPrKdV.__len__ = len_vec
TFltIntPrKdV.__delitem__ = delitem_vec

TFltKdV.__getitem__ = getitem_vec
TFltKdV.__setitem__ = setitem_vec
TFltKdV.__iter__ = itervec
TFltKdV.__len__ = len_vec
TFltKdV.__delitem__ = delitem_vec

TFltKd64V.__getitem__ = getitem_vec
TFltKd64V.__setitem__ = setitem_vec
TFltKd64V.__iter__ = itervec
TFltKd64V.__len__ = len_vec
TFltKd64V.__delitem__ = delitem_vec

TFltStrKdV.__getitem__ = getitem_vec
TFltStrKdV.__setitem__ = setitem_vec
TFltStrKdV.__iter__ = itervec
TFltStrKdV.__len__ = len_vec
TFltStrKdV.__delitem__ = delitem_vec

TFltStrPrPrV.__getitem__ = getitem_vec
TFltStrPrPrV.__setitem__ = setitem_vec
TFltStrPrPrV.__iter__ = itervec
TFltStrPrPrV.__len__ = len_vec
TFltStrPrPrV.__delitem__ = delitem_vec

TFltIntIntTrV.__getitem__ = getitem_vec
TFltIntIntTrV.__setitem__ = setitem_vec
TFltIntIntTrV.__iter__ = itervec
TFltIntIntTrV.__len__ = len_vec
TFltIntIntTrV.__delitem__ = delitem_vec

TFltFltStrTrV.__getitem__ = getitem_vec
TFltFltStrTrV.__setitem__ = setitem_vec
TFltFltStrTrV.__iter__ = itervec
TFltFltStrTrV.__len__ = len_vec
TFltFltStrTrV.__delitem__ = delitem_vec

TAscFltIntPrV.__getitem__ = getitem_vec
TAscFltIntPrV.__setitem__ = setitem_vec
TAscFltIntPrV.__iter__ = itervec

TCnCom.__len__ = len_vec

TAscFltIntKdV.__getitem__ = getitem_vec
TAscFltIntKdV.__setitem__ = setitem_vec
TAscFltIntKdV.__iter__ = itervec
TAscFltIntKdV.__len__ = len_vec
TAscFltIntKdV.__delitem__ = delitem_vec

TStrPrV.__getitem__ = getitem_vec
TStrPrV.__setitem__ = setitem_vec
TStrPrV.__iter__ = itervec
TStrPrV.__len__ = len_vec
TStrPrV.__delitem__ = delitem_vec

TStrPr64V.__getitem__ = getitem_vec
TStrPr64V.__setitem__ = setitem_vec
TStrPr64V.__iter__ = itervec
TStrPr64V.__len__ = len_vec
TStrPr64V.__delitem__ = delitem_vec

TStrIntPrV.__getitem__ = getitem_vec
TStrIntPrV.__setitem__ = setitem_vec
TStrIntPrV.__iter__ = itervec
TStrIntPrV.__len__ = len_vec
TStrIntPrV.__delitem__ = delitem_vec

TStrFltPrV.__getitem__ = getitem_vec
TStrFltPrV.__setitem__ = setitem_vec
TStrFltPrV.__iter__ = itervec
TStrFltPrV.__len__ = len_vec
TStrFltPrV.__delitem__ = delitem_vec

TStrIntKdV.__getitem__ = getitem_vec
TStrIntKdV.__setitem__ = setitem_vec
TStrIntKdV.__iter__ = itervec
TStrIntKdV.__len__ = len_vec
TStrIntKdV.__delitem__ = delitem_vec

TStrFltKdV.__getitem__ = getitem_vec
TStrFltKdV.__setitem__ = setitem_vec
TStrFltKdV.__iter__ = itervec
TStrFltKdV.__len__ = len_vec
TStrFltKdV.__delitem__ = delitem_vec

TStrAscFltKdV.__getitem__ = getitem_vec
TStrAscFltKdV.__setitem__ = setitem_vec
TStrAscFltKdV.__iter__ = itervec
TStrAscFltKdV.__len__ = len_vec
TStrAscFltKdV.__delitem__ = delitem_vec

TStrTrV.__getitem__ = getitem_vec
TStrTrV.__setitem__ = setitem_vec
TStrTrV.__iter__ = itervec
TStrTrV.__len__ = len_vec
TStrTrV.__delitem__ = delitem_vec

TStrTr64V.__getitem__ = getitem_vec
TStrTr64V.__setitem__ = setitem_vec
TStrTr64V.__iter__ = itervec
TStrTr64V.__len__ = len_vec
TStrTr64V.__delitem__ = delitem_vec

TStrQuV.__getitem__ = getitem_vec
TStrQuV.__setitem__ = setitem_vec
TStrQuV.__iter__ = itervec
TStrQuV.__len__ = len_vec
TStrQuV.__delitem__ = delitem_vec

TStrFltFltTrV.__getitem__ = getitem_vec
TStrFltFltTrV.__setitem__ = setitem_vec
TStrFltFltTrV.__iter__ = itervec
TStrFltFltTrV.__len__ = len_vec
TStrFltFltTrV.__delitem__ = delitem_vec

TStrStrIntTrV.__getitem__ = getitem_vec
TStrStrIntTrV.__setitem__ = setitem_vec
TStrStrIntTrV.__iter__ = itervec
TStrStrIntTrV.__len__ = len_vec
TStrStrIntTrV.__delitem__ = delitem_vec

TStrKdV.__getitem__ = getitem_vec
TStrKdV.__setitem__ = setitem_vec
TStrKdV.__iter__ = itervec
TStrKdV.__len__ = len_vec
TStrKdV.__delitem__ = delitem_vec

TStrStrVPrV.__getitem__ = getitem_vec
TStrStrVPrV.__setitem__ = setitem_vec
TStrStrVPrV.__iter__ = itervec
TStrStrVPrV.__len__ = len_vec
TStrStrVPrV.__delitem__ = delitem_vec

TStrVIntPrV.__getitem__ = getitem_vec
TStrVIntPrV.__setitem__ = setitem_vec
TStrVIntPrV.__iter__ = itervec
TStrVIntPrV.__len__ = len_vec
TStrVIntPrV.__delitem__ = delitem_vec

TFltIntIntIntQuV.__getitem__ = getitem_vec
TFltIntIntIntQuV.__setitem__ = setitem_vec
TFltIntIntIntQuV.__iter__ = itervec
TFltIntIntIntQuV.__len__ = len_vec
TFltIntIntIntQuV.__delitem__ = delitem_vec

TIntStrIntIntQuV.__getitem__ = getitem_vec
TIntStrIntIntQuV.__setitem__ = setitem_vec
TIntStrIntIntQuV.__iter__ = itervec
TIntStrIntIntQuV.__len__ = len_vec
TIntStrIntIntQuV.__delitem__ = delitem_vec

TIntIntPrPrV.__getitem__ = getitem_vec
TIntIntPrPrV.__setitem__ = setitem_vec
TIntIntPrPrV.__iter__ = itervec
TIntIntPrPrV.__len__ = len_vec
TIntIntPrPrV.__delitem__ = delitem_vec

PFltV.__getitem__ = getitem_vec
PFltV.__setitem__ = setitem_vec
PFltV.__iter__ = itervec
PFltV.__len__ = len_vec
PFltV.__delitem__ = delitem_vec

PAscFltV.__getitem__ = getitem_vec
PAscFltV.__setitem__ = setitem_vec
PAscFltV.__iter__ = itervec
PAscFltV.__len__ = len_vec
PAscFltV.__delitem__ = delitem_vec

PStrV.__getitem__ = getitem_vec
PStrV.__setitem__ = setitem_vec
PStrV.__iter__ = itervec
PStrV.__len__ = len_vec
PStrV.__delitem__ = delitem_vec

TBoolVV.__getitem__ = getitem_vec
TBoolVV.__setitem__ = setitem_vec
TBoolVV.__iter__ = itervec
TBoolVV.__len__ = len_vec
TBoolVV.__delitem__ = delitem_vec

TChVV.__getitem__ = getitem_vec
TChVV.__setitem__ = setitem_vec
TChVV.__iter__ = itervec
TChVV.__len__ = len_vec
TChVV.__delitem__ = delitem_vec

TIntVV.__getitem__ = getitem_vec
TIntVV.__setitem__ = setitem_vec
TIntVV.__iter__ = itervec
TIntVV.__len__ = len_vec
TIntVV.__delitem__ = delitem_vec

TSFltVV.__getitem__ = getitem_vec
TSFltVV.__setitem__ = setitem_vec
TSFltVV.__iter__ = itervec
TSFltVV.__len__ = len_vec
TSFltVV.__delitem__ = delitem_vec

TFltVV.__getitem__ = getitem_vec
TFltVV.__setitem__ = setitem_vec
TFltVV.__iter__ = itervec
TFltVV.__len__ = len_vec
TFltVV.__delitem__ = delitem_vec

TStrVV.__getitem__ = getitem_vec
TStrVV.__setitem__ = setitem_vec
TStrVV.__iter__ = itervec
TStrVV.__len__ = len_vec
TStrVV.__delitem__ = delitem_vec

TIntPrVV.__getitem__ = getitem_vec
TIntPrVV.__setitem__ = setitem_vec
TIntPrVV.__iter__ = itervec
TIntPrVV.__len__ = len_vec
TIntPrVV.__delitem__ = delitem_vec

TIntVVV.__getitem__ = getitem_vec
TIntVVV.__setitem__ = setitem_vec
TIntVVV.__iter__ = itervec
TIntVVV.__len__ = len_vec
TIntVVV.__delitem__ = delitem_vec

TFltVVV.__getitem__ = getitem_vec
TFltVVV.__setitem__ = setitem_vec
TFltVVV.__iter__ = itervec
TFltVVV.__len__ = len_vec
TFltVVV.__delitem__ = delitem_vec

#TIntQV.__getitem__ = getitem_vec
#TIntQV.__setitem__ = setitem_vec
#TIntQV.__iter__ = itervec
#TIntQV.__len__ = len_vec
#TIntQV.__delitem__ = delitem_vec

TStrV.__getitem__ = getitem_vec
TStrV.__setitem__ = setitem_vec
TStrV.__iter__ = itervec
TStrV.__len__ = len_vec
TStrV.__delitem__ = delitem_vec

TStr64V.__getitem__ = getitem_vec
TStr64V.__setitem__ = setitem_vec
TStr64V.__iter__ = itervec
TStr64V.__len__ = len_vec
TStr64V.__delitem__ = delitem_vec

TIntStrStrTrV.__getitem__ = getitem_vec
TIntStrStrTrV.__setitem__ = setitem_vec
TIntStrStrTrV.__iter__ = itervec
TIntStrStrTrV.__len__ = len_vec
TIntStrStrTrV.__delitem__ = delitem_vec

TIntStrStrTr64V.__getitem__ = getitem_vec
TIntStrStrTr64V.__setitem__ = setitem_vec
TIntStrStrTr64V.__iter__ = itervec
TIntStrStrTr64V.__len__ = len_vec
TIntStrStrTr64V.__delitem__ = delitem_vec
%}
#endif

