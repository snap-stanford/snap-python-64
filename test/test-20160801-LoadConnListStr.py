import snap

H = snap.TStrInt64SH()
Graph = snap.LoadConnListStr(snap.PNGraph,
            "data/example-LoadConnListStr.txt", H)
# get node ID of "A"
print H.GetDat("A")

H = snap.TStrInt64SH()
UGraph = snap.LoadConnListStr(snap.PUNGraph,
            "data/example-LoadConnListStr.txt", H)

H = snap.TStrInt64SH()
Network = snap.LoadConnListStr(snap.PNEANet,
            "data/example-LoadConnListStr.txt", H)

