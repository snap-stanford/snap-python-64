import snap

Graph = snap.GenFull(snap.PNEANet, 10)

NIdV = snap.TInt64V()
Graph.GetNIdV(NIdV)
for i in NIdV:
    print "node", i

EIdV = snap.TInt64V()
Graph.GetEIdV(EIdV)
for i in EIdV:
    print "edge", i

