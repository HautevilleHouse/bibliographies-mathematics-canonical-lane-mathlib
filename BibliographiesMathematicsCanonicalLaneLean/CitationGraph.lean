import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.BibliographyObject

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure CitationGraph where
  nodes : List BibliographyObject
  edges : List (BibliographyObject × BibliographyObject) -- a cites b
  graphIsAcyclic : Prop
  everyNodeReachableFromRoot : Prop
  rootExists : ∃ r : BibliographyObject, r ∈ nodes ∧ ∀ n ∈ nodes, (r = n) ∨ (∃ path : List (BibliographyObject × BibliographyObject), pathValid path r n)

def pathValid (path : List (BibliographyObject × BibliographyObject)) (from to : BibliographyObject) : Prop :=
  match path with
  | [] => from = to
  | (a,b) :: rest => a = from ∧ pathValid rest b to

structure CitationGraphEvidence (G : CitationGraph) where
  acyclicClosed : G.graphIsAcyclic
  reachableClosed : G.everyNodeReachableFromRoot
  rootClosed : G.rootExists

def CitationGraphClosed (G : CitationGraph) : Prop :=
  G.graphIsAcyclic ∧ G.everyNodeReachableFromRoot ∧ G.rootExists

theorem citation_graph_closed_from_evidence (G : CitationGraph) (E : CitationGraphEvidence G) :
  CitationGraphClosed G := by
  exact And.intro E.acyclicClosed (And.intro E.reachableClosed E.rootClosed)

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse