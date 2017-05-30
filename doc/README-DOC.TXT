Undocumented Functions
Provided in C++, but not documented for Python
Mar 11, 2014

TUNGraph
- AddNode (const int64 &NId, const TInt64V &NbrNIdV)
- AddNode (const int64 &NId, const TVecPool< TInt64, int64 > &Pool, const int64 &NIdVId)
- GetNIdV (TInt64V &NIdV)
- IsOk (const bool &ThrowExcept=true)
- operator =

TNGraph
- AddNode (const int64 &NId, const TInt64V &InNIdV, const TInt64V &OutNIdV)
- AddNode (const int64 &NId, const TVecPool< TInt64, int64 > &Pool, const int64 &SrcVId, const int64 &DstVId)
- GetNIdV (TInt64V &NIdV)
- IsOk (const bool &ThrowExcept=true)
- operator =

TNEANet
- GetNIdV (TInt64V &NIdV)
- IsOk (const bool &ThrowExcept=true)

- AttrNameNI(const TInt64& NId, TStr64V& Names)
- AttrNameNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TStr64V& Names)
- AttrValueNI(const TInt64& NId, TStr64V& Values)
- AttrValueNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TStr64V& Values)
- IntAttrNameNI(const TInt64& NId, TStr64V& Names) 
- IntAttrNameNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TStr64V& Names)
- IntAttrValueNI(const TInt64& NId, TInt64V& Values)
- IntAttrValueNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TInt64V& Values)
- StrAttrNameNI(const TInt64& NId, TStr64V& Names)
- StrAttrNameNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TStr64V& Names)
- StrAttrValueNI(const TInt64& NId, TStr64V& Values)
- StrAttrValueNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TStr64V& Values)
- FltAttrNameNI(const TInt64& NId, TStr64V& Names)
- FltAttrNameNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TStr64V& Names)
- FltAttrValueNI(const TInt64& NId, TFlt64V& Values)
- FltAttrValueNI(const TInt64& NId, TStrIntPr64H::TIter NodeHI, TFlt64V& Values)

- AttrNameEI(const TInt64& EId, TStr64V& Names)
- AttrNameEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TStr64V& Names)
- AttrValueEI(const TInt64& EId, TStr64V& Values)
- AttrValueEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TStr64V& Values)
- IntAttrNameEI(const TInt64& EId, TStr64V& Names)
- IntAttrNameEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TStr64V& Names)
- IntAttrValueEI(const TInt64& EId, TInt64V& Values)
- IntAttrValueEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TInt64V& Values)
- StrAttrNameEI(const TInt64& EId, TStr64V& Names)
- StrAttrNameEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TStr64V& Names)
- StrAttrValueEI(const TInt64& EId, TStr64V& Values)
- StrAttrValueEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TStr64V& Values)
- FltAttrNameEI(const TInt64& EId, TStr64V& Names)
- FltAttrNameEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TStr64V& Names)
- FltAttrValueEI(const TInt64& EId, TFlt64V& Values)
- FltAttrValueEI(const TInt64& EId, TStrIntPr64H::TIter EdgeHI, TFlt64V& Values)

- NodeAttrIsDeleted(const int64& NId, const TStrIntPr64H::TIter& NodeHI)
- NodeAttrIsIntDeleted(const int64& NId, const TStrIntPr64H::TIter& NodeHI)
- NodeAttrIsStrDeleted(const int64& NId, const TStrIntPr64H::TIter& NodeHI)
- NodeAttrIsFltDeleted(const int64& NId, const TStrIntPr64H::TIter& NodeHI)

- EdgeAttrIsDeleted(const int64& EId, const TStrIntPr64H::TIter& EdgeHI)
- EdgeAttrIsIntDeleted(const int64& EId, const TStrIntPr64H::TIter& EdgeHI)
- EdgeAttrIsStrDeleted(const int64& EId, const TStrIntPr64H::TIter& EdgeHI)
- EdgeAttrIsFltDeleted(const int64& EId, const TStrIntPr64H::TIter& EdgeHI)
- GetNodeAttrValue(const int64& NId, const TStrIntPr64H::TIter& NodeHI)
- GetEdgeAttrValue(const int64& EId, const TStrIntPr64H::TIter& EdgeHI)

