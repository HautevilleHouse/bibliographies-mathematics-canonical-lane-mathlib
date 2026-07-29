import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure BibObject where
  key : String
  title : String
  author : String
  year : Nat
  validReference : Prop
  conclusion : validReference

structure AdmissibleClass where
  object : BibObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BibWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse