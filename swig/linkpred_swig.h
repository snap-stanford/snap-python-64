
// random walk with restars to node JumpNId
template <class PGraph>
void GetRndWalkRestart(const PGraph& Graph, const double& JumpProb, const int64& JumpNId, THash<TInt64, TFlt, int64>& RwrNIdH) {
  const double DefVal = 1.0/Graph->GetNodes();
  RwrNIdH.Clr(false);
  TInt64H NIdOutDegH;
  for (typename PGraph::TObj::TNodeI NI = Graph->BegNI(); NI < Graph->EndNI(); NI++) {
    RwrNIdH.AddDat(NI.GetId(), DefVal);
    NIdOutDegH.AddDat(NI.GetId(), NI.GetOutDeg());
  }
  THash<TInt64, TFlt, int64> RwrNIdH2(Graph->GetNodes());
  for (int64 iter = 0; iter < 10; iter++) {
    double Sum = 0;
    for (typename PGraph::TObj::TNodeI NI = Graph->BegNI(); NI < Graph->EndNI(); NI++) {
      double Val = 0;
      for (int64 i = 0; i < NI.GetInDeg(); i++) {
        const int64 InId = NI.GetInNId(i);
        Val += (1.0-JumpProb) * 1.0/(NIdOutDegH.GetDat(InId)) * RwrNIdH.GetDat(InId);
      }
      if (NI.GetId() == JumpNId) { Val+= JumpProb; }
      RwrNIdH.AddDat(NI.GetId(), Val);
      Sum += Val;
    }
    for (int64 i = 0; i < RwrNIdH.Len(); i++) {
      RwrNIdH[i] /= Sum;
    }
  }
}

