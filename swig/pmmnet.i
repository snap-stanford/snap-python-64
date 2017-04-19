// pmmnet.i
// Templates for SNAP TMMNet
//

%extend TMMNet {
        TMMNetModeNetI BegModeNetI() {
          return TMMNetModeNetI($self->BegModeNetI());
        }
        TMMNetModeNetI EndModeNetI() {
          return TMMNetModeNetI($self->EndModeNetI());
        }
        TMMNetModeNetI GetModeNetI(const int64 &NId) {
          return TMMNetModeNetI($self->GetModeNetI(NId));
        }

  
        TMMNetCrossNetI BegCrossNetI() {
          return TMMNetCrossNetI ($self->BegCrossNetI());
        }
        TMMNetCrossNetI EndCrossNetI() {
          return TMMNetCrossNetI ($self->EndCrossNetI());
        }
        TMMNetCrossNetI GetCrossNetI(const int64 &CId) {
          return TMMNetCrossNetI ($self->GetCrossNetI(CId));
        }
  
};



// Basic TMMNets
%template(PMMNet) TPt< TMMNet >;