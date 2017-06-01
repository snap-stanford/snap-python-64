// pneanetmp.i
// Templates for SNAP TNEANetMP, PNEANetMP

%extend TNEANetMP {
        TNEANetMPNodeI BegNI() {
                return TNEANetMPNodeI($self->BegNI());
        }
        TNEANetMPNodeI EndNI() {
                return TNEANetMPNodeI($self->EndNI());
        }
        TNEANetMPNodeI GetNI(const int64 &NId) {
                return TNEANetMPNodeI($self->GetNI(NId));
        }
        TNEANetMPEdgeI BegEI() {
                return TNEANetMPEdgeI($self->BegEI());
        }
        TNEANetMPEdgeI EndEI() {
                return TNEANetMPEdgeI($self->EndEI());
        }
};

%pythoncode %{
# redefine TNEANetMPEdgeI.GetId to return a pair of nodes rather than -1
def GetId(self):
    return (self.GetSrcNId(), self.GetDstNId())

TNEANetMPEdgeI.GetId = GetId
%}

//#ifdef _OPENMP
//%pythoncode %{
//def ToNetworkMP(tspec, *args):
//    if tspec == PNEANetMP : return ToNetworkMP_PNEANetMP(*args)
//    return None
//
//def ToNetworkMP2(tspec, *args):
//    if tspec == PNEANetMP : return ToNetworkMP2_PNEANetMP(*args)
//    return None
//%}
//#endif


// Basic Undirected Graphs

%template(PrintGraphStatTable_PNEANetMP) PrintGraphStatTable<PNEANetMP>;

//%template(MxSccSz_PNEANetMP) TSnap::GetMxScc<PNEANetMP>;
//%template(MxWccSz_PNEANetMP) TSnap::GetMxWccSz<PNEANetMP>;
// End Basic Directed Graphs

// Basic PNEANetMPs
%template(PNEANetMP) TPt< TNEANetMP >;

// gbase.h - PNEANet
%template(PrintInfo_PNEANetMP) TSnap::PrintInfo<PNEANetMP>;

// cncom.h - PNEANetMP
%template(GetNodeWcc_PNEANetMP) TSnap::GetNodeWcc<PNEANetMP>;
%template(IsConnected_PNEANetMP) TSnap::IsConnected<PNEANetMP>;
%template(IsWeaklyConn_PNEANetMP) TSnap::IsWeaklyConn<PNEANetMP>;
%template(GetWccSzCnt_PNEANetMP) TSnap::GetWccSzCnt<PNEANetMP>;
%template(GetWccs_PNEANetMP) TSnap::GetWccs<PNEANetMP>;
%template(GetSccSzCnt_PNEANetMP) TSnap::GetSccSzCnt<PNEANetMP>;
%template(GetSccs_PNEANetMP) TSnap::GetSccs<PNEANetMP>;
%template(GetMxWccSz_PNEANetMP) TSnap::GetMxWccSz<PNEANetMP>;
%template(GetMxSccSz_PNEANetMP) TSnap::GetMxSccSz<PNEANetMP>;

%template(GetMxWcc_PNEANetMP) TSnap::GetMxWcc<PNEANetMP>;
%template(GetMxScc_PNEANetMP) TSnap::GetMxScc<PNEANetMP>;
%template(GetMxBiCon_PNEANetMP) TSnap::GetMxBiCon<PNEANetMP>;

// centr.h - PNEANetMP
%template(GetNodeEcc_PNEANetMP) TSnap::GetNodeEcc<PNEANetMP>;
%template(GetPageRank_PNEANetMP) TSnap::GetPageRank<PNEANetMP>;
%template(GetPageRank_v1_PNEANetMP) TSnap::GetPageRank_v1<PNEANetMP>;
%template(GetHits_PNEANetMP) TSnap::GetHits<PNEANetMP>;
%template(GetBetweennessCentr_PNEANetMP) TSnap::GetBetweennessCentr<PNEANetMP>;
%template(GetClosenessCentr_PNEANetMP) TSnap::GetClosenessCentr<PNEANetMP>;
%template(GetFarnessCentr_PNEANetMP) TSnap::GetFarnessCentr<PNEANetMP>;
#ifdef _OPENMP
%template(GetPageRankMP_PNEANetMP) TSnap::GetPageRankMP<PNEANetMP>;
%template(GetHitsMP_PNEANetMP) TSnap::GetHitsMP<PNEANetMP>;
#endif


// alg.h - PNEANetMP
%template(CntInDegNodes_PNEANetMP) TSnap::CntInDegNodes<PNEANetMP>;
%template(CntOutDegNodes_PNEANetMP) TSnap::CntOutDegNodes<PNEANetMP>;
%template(CntDegNodes_PNEANetMP) TSnap::CntDegNodes<PNEANetMP>;
%template(CntNonZNodes_PNEANetMP) TSnap::CntNonZNodes<PNEANetMP>;
%template(CntEdgesToSet_PNEANetMP) TSnap::CntEdgesToSet<PNEANetMP>;

%template(GetMxDegNId_PNEANetMP) TSnap::GetMxDegNId<PNEANetMP>;
%template(GetMxInDegNId_PNEANetMP) TSnap::GetMxInDegNId<PNEANetMP>;
%template(GetMxOutDegNId_PNEANetMP) TSnap::GetMxOutDegNId<PNEANetMP>;

%template(GetInDegCnt_PNEANetMP) TSnap::GetInDegCnt<PNEANetMP>;
%template(GetOutDegCnt_PNEANetMP) TSnap::GetOutDegCnt<PNEANetMP>;
%template(GetDegCnt_PNEANetMP) TSnap::GetDegCnt<PNEANetMP>;
%template(GetDegSeqV_PNEANetMP) TSnap::GetDegSeqV<PNEANetMP>;

%template(GetNodeInDegV_PNEANetMP) TSnap::GetNodeInDegV<PNEANetMP>;
%template(GetNodeOutDegV_PNEANetMP) TSnap::GetNodeOutDegV<PNEANetMP>;

%template(CntUniqUndirEdges_PNEANetMP) TSnap::CntUniqUndirEdges<PNEANetMP>;
%template(CntUniqDirEdges_PNEANetMP) TSnap::CntUniqDirEdges<PNEANetMP>;
%template(CntUniqBiDirEdges_PNEANetMP) TSnap::CntUniqBiDirEdges<PNEANetMP>;
%template(CntSelfEdges_PNEANetMP) TSnap::CntSelfEdges<PNEANetMP>;

%template(GetUnDir_PNEANetMP) TSnap::GetUnDir<PNEANetMP>;
%template(MakeUnDir_PNEANetMP) TSnap::MakeUnDir<PNEANetMP>;
%template(AddSelfEdges_PNEANetMP) TSnap::AddSelfEdges<PNEANetMP>;
//%template(DelSelfEdges_PNEANetMP) TSnap::DelSelfEdges<PNEANetMP>;
//%template(DelNodes_PNEANetMP) TSnap::DelNodes<PNEANetMP>;
//%template(DelZeroDegNodes_PNEANetMP) TSnap::DelZeroDegNodes<PNEANetMP>;
//%template(DelDegKNodes_PNEANetMP) TSnap::DelDegKNodes<PNEANetMP>;
%template(IsTree_PNEANetMP) TSnap::IsTree<PNEANetMP>;
%template(GetTreeRootNId_PNEANetMP) TSnap::GetTreeRootNId<PNEANetMP>;
%template(GetTreeSig_PNEANetMP) TSnap::GetTreeSig<PNEANetMP>;


// bfsdfs.h - PNEANetMP
%template(GetBfsTree_PNEANetMP) TSnap::GetBfsTree<PNEANetMP>;
%template(GetSubTreeSz_PNEANetMP) TSnap::GetSubTreeSz<PNEANetMP>;
%template(GetNodesAtHop_PNEANetMP) TSnap::GetNodesAtHop<PNEANetMP>;
%template(GetNodesAtHops_PNEANetMP) TSnap::GetNodesAtHops<PNEANetMP>;
// Shortest paths
%template(GetShortPath_PNEANetMP) TSnap::GetShortPath<PNEANetMP>;
// Diameter
%template(GetBfsFullDiam_PNEANetMP) TSnap::GetBfsFullDiam<PNEANetMP>;
%template(GetBfsEffDiam_PNEANetMP) TSnap::GetBfsEffDiam<PNEANetMP>;


// drawgviz.h
%template(DrawGViz_PNEANetMP) TSnap::DrawGViz<PNEANetMP>;


// ggen.h
%template(GenGrid_PNEANetMP) TSnap::GenGrid<PNEANetMP>;
%template(GenStar_PNEANetMP) TSnap::GenStar<PNEANetMP>;
%template(GenCircle_PNEANetMP) TSnap::GenCircle<PNEANetMP>;
%template(GenFull_PNEANetMP) TSnap::GenFull<PNEANetMP>;
%template(GenTree_PNEANetMP) TSnap::GenTree<PNEANetMP>;
%template(GenBaraHierar_PNEANetMP) TSnap::GenBaraHierar<PNEANetMP>;
%template(GenRndGnm_PNEANetMP) TSnap::GenRndGnm<PNEANetMP>;


// gio.h
%template(LoadEdgeList_PNEANetMP) TSnap::LoadEdgeList<PNEANetMP>;
%template(LoadEdgeListStr_PNEANetMP) TSnap::LoadEdgeListStr<PNEANetMP>;
%template(LoadConnList_PNEANetMP) TSnap::LoadConnList<PNEANetMP>;
%template(LoadConnListStr_PNEANetMP) TSnap::LoadConnListStr<PNEANetMP>;
%template(LoadPajek_PNEANetMP) TSnap::LoadPajek<PNEANetMP>;
%template(SaveEdgeList_PNEANetMP) TSnap::SaveEdgeList<PNEANetMP>;
%template(SavePajek_PNEANetMP) TSnap::SavePajek<PNEANetMP>;
%template(SaveMatlabSparseMtx_PNEANetMP) TSnap::SaveMatlabSparseMtx<PNEANetMP>;
%template(SaveGViz_PNEANetMP) TSnap::SaveGViz<PNEANetMP>;


// kcore.h
%template(GetKCore_PNEANetMP) TSnap::GetKCore<PNEANetMP>;
%template(GetKCoreEdges_PNEANetMP) TSnap::GetKCoreEdges<PNEANetMP>;
%template(GetKCoreNodes_PNEANetMP) TSnap::GetKCoreNodes<PNEANetMP>;


// subgraph.h
%template(ConvertGraph_PNEANetMP_PNEANetMP) TSnap::ConvertGraph <PNEANetMP, PNEANetMP>;
%template(ConvertGraph_PNEANetMP_PNGraph) TSnap::ConvertGraph <PNEANetMP, PNGraph>;
%template(ConvertGraph_PNEANetMP_PUNGraph) TSnap::ConvertGraph <PNEANetMP, PUNGraph>;
%template(ConvertSubGraph_PNEANetMP_PNEANetMP) TSnap::ConvertSubGraph <PNEANetMP, PNEANetMP>;
%template(ConvertSubGraph_PNEANetMP_PNGraph) TSnap::ConvertSubGraph <PNEANetMP, PNGraph>;
%template(ConvertSubGraph_PNEANetMP_PUNGraph) TSnap::ConvertSubGraph <PNEANetMP, PUNGraph>;
%template(ConvertESubGraph_PNEANetMP_PNEANetMP) TSnap::ConvertESubGraph <PNEANetMP, PNEANetMP>;
%template(GetSubGraph_PNEANetMP) TSnap::GetSubGraph<PNEANetMP>;
%template(GetESubGraph_PNEANetMP) TSnap::GetESubGraph<PNEANetMP>;
%template(GetRndSubGraph_PNEANetMP) TSnap::GetRndSubGraph<PNEANetMP>;
%template(GetRndESubGraph_PNEANetMP) TSnap::GetRndESubGraph<PNEANetMP>;


// triad.h - PNEANetMP
%template(GetClustCf_PNEANetMP) TSnap::GetClustCf<PNEANetMP>;
%template(GetNodeClustCf_PNEANetMP) TSnap::GetNodeClustCf<PNEANetMP>;
%template(GetTriads_PNEANetMP) TSnap::GetTriads<PNEANetMP>;
%template(GetTriadEdges_PNEANetMP) TSnap::GetTriadEdges<PNEANetMP>;
%template(GetNodeTriads_PNEANetMP) TSnap::GetNodeTriads<PNEANetMP>;
%template(GetTriadParticip_PNEANetMP) TSnap::GetTriadParticip<PNEANetMP>;
%template(GetTriangleCnt_PNEANetMP) TSnap::GetTriangleCnt<PNEANetMP>;

%template(GetCmnNbrs_PNEANetMP) TSnap::GetCmnNbrs<PNEANetMP>;
//%template(GetLen2Paths_PNEANetMP) TSnap::GetLen2Paths<PNEANetMP>;


// cmty.h - PNEANetMP
%template(GetModularity_PNEANetMP) TSnap::GetModularity<PNEANetMP>;
%template(GetEdgesInOut_PNEANetMP) TSnap::GetEdgesInOut<PNEANetMP>;


// anf.h - PNEANetMP
%template(GetAnf_PNEANetMP) TSnap::GetAnf<PNEANetMP>;
%template(GetAnfEffDiam_PNEANetMP) TSnap::GetAnfEffDiam<PNEANetMP>;
%template(TestAnf_PNEANetMP) TSnap::TestAnf<PNEANetMP>;


// statplot.h - PNEANetMP
%template(PlotKCoreEdges_PNEANetMP) TSnap::PlotKCoreEdges<PNEANetMP>;
%template(PlotKCoreNodes_PNEANetMP) TSnap::PlotKCoreNodes<PNEANetMP>;
%template(PlotShortPathDistr_PNEANetMP) TSnap::PlotShortPathDistr<PNEANetMP>;
%template(PlotHops_PNEANetMP) TSnap::PlotHops<PNEANetMP>;
%template(PlotClustCf_PNEANetMP) TSnap::PlotClustCf<PNEANetMP>;
%template(PlotSccDistr_PNEANetMP) TSnap::PlotSccDistr<PNEANetMP>;
%template(PlotWccDistr_PNEANetMP) TSnap::PlotWccDistr<PNEANetMP>;
%template(PlotOutDegDistr_PNEANetMP) TSnap::PlotOutDegDistr<PNEANetMP>;
%template(PlotInDegDistr_PNEANetMP) TSnap::PlotInDegDistr<PNEANetMP>;


// goodgraph.cpp - PNEANetMP
%template(PercentDegree_PNEANetMP) PercentDegree<PNEANetMP>;
%template(NodesGTEDegree_PNEANetMP) NodesGTEDegree<PNEANetMP>;
%template(MxDegree_PNEANetMP) MxDegree<PNEANetMP>;
%template(PercentMxWcc_PNEANetMP) PercentMxWcc<PNEANetMP>;
%template(PercentMxScc_PNEANetMP) PercentMxScc<PNEANetMP>;

// conv.h - PNGraph
#ifdef _OPENMP
%template(ToNetworkMP_PNEANetMP) TSnap::ToNetworkMP<PNEANetMP>;
%template(ToNetworkMP2_PNEANetMP) TSnap::ToNetworkMP2<PNEANetMP>;
#endif