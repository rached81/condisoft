<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkEntreEntete
 *
 * @ORM\Table(name="stk_entre_entete",  indexes={@ORM\Index(name="fk_stk_entre_entete_stk_etat1_idx", columns={"ent_etatCode"}), @ORM\Index(name="fk_stk_entre_entete_stk_fournisseur1_idx", columns={"ent_fournisseurCode"})})
 * @ORM\Entity
 */
class StkEntreEntete
{
    /**
     * @var string
     *
     * @ORM\Column(name="ent_code", type="string", length=10, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $entCode;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_exercice", type="integer", nullable=true)
     */
    private $entExercice;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_bcOlCode", type="string", length=45, nullable=true)
     */
    private $entBcolcode;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_bcOlExercice", type="integer", nullable=true)
     */
    private $entBcolexercice;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_contratCode", type="string", length=45, nullable=true)
     */
    private $entContratcode;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_contratExercice", type="integer", nullable=true)
     */
    private $entContratexercice;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_magRecepCode", type="integer", nullable=true)
     */
    private $entMagrecepcode;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ent_dateReception", type="datetime", nullable=true)
     */
    private $entDatereception;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_numBL", type="string", length=50, nullable=true)
     */
    private $entNumbl;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ent_dateBL", type="date", nullable=true)
     */
    private $entDatebl;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_numFacture", type="string", length=50, nullable=true)
     */
    private $entNumfacture;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ent_dateFacture", type="date", nullable=true)
     */
    private $entDatefacture;

    /**
     * @var integer
     *
     * @ORM\Column(name="ent_typeCode", type="integer", nullable=true)
     */
    private $entTypecode;
    
    
        /**
     * @var integer
     *
     * @ORM\Column(name="ent_motifCode", type="integer", nullable=true)
     */
    private $entMotifcode;


    /**
     * @var string
     *
     * @ORM\Column(name="ent_numTransit", type="string", length=45, nullable=true)
     */
    private $entNumtransit;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_devise", type="float", precision=10, scale=0, nullable=true)
     */
    private $entDevise;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_cours", type="float", precision=10, scale=0, nullable=true)
     */
    private $entCours;

    /**
     * @var float
     *
     * @ORM\Column(name="ent_valeurTotaleDT", type="float", precision=10, scale=0, nullable=true)
     */
    private $entValeurtotaledt;

    /**
     * @var string
     *
     * @ORM\Column(name="ent_observation", type="text", length=65535, nullable=true)
     */
    private $entObservation;

  

    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ent_etatCode", referencedColumnName="etat_code")
     * })
     */
    private $entEtatcode;

    /**
     * @var \StkFournisseur
     *
     * @ORM\ManyToOne(targetEntity="StkFournisseur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ent_fournisseurCode", referencedColumnName="frs_code")
     * })
     */
    private $entFournisseurcode;



    /**
     * Get entCode
     *
     * @return string
     */
    public function getEntCode()
    {
        return $this->entCode;
    }
    
    
       /**
     * Set entCode
     *
     * @param integer $entCode
     *
     * @return StkEntreEntete
     */
    public function setEntCode($entCode)
    {
        $this->entCode = $entCode;

        return $this;
    }

    /**
     * Set entExercice
     *
     * @param integer $entExercice
     *
     * @return StkEntreEntete
     */
    public function setEntExercice($entExercice)
    {
        $this->entExercice = $entExercice;

        return $this;
    }

    /**
     * Get entExercice
     *
     * @return integer
     */
    public function getEntExercice()
    {
        return $this->entExercice;
    }

    /**
     * Set entBcolcode
     *
     * @param string $entBcolcode
     *
     * @return StkEntreEntete
     */
    public function setEntBcolcode($entBcolcode)
    {
        $this->entBcolcode = $entBcolcode;

        return $this;
    }

    /**
     * Get entBcolcode
     *
     * @return string
     */
    public function getEntBcolcode()
    {
        return $this->entBcolcode;
    }

    /**
     * Set entBcolexercice
     *
     * @param integer $entBcolexercice
     *
     * @return StkEntreEntete
     */
    public function setEntBcolexercice($entBcolexercice)
    {
        $this->entBcolexercice = $entBcolexercice;

        return $this;
    }

    /**
     * Get entBcolexercice
     *
     * @return integer
     */
    public function getEntBcolexercice()
    {
        return $this->entBcolexercice;
    }

    /**
     * Set entContratcode
     *
     * @param string $entContratcode
     *
     * @return StkEntreEntete
     */
    public function setEntContratcode($entContratcode)
    {
        $this->entContratcode = $entContratcode;

        return $this;
    }

    /**
     * Get entContratcode
     *
     * @return string
     */
    public function getEntContratcode()
    {
        return $this->entContratcode;
    }

    /**
     * Set entContratexercice
     *
     * @param integer $entContratexercice
     *
     * @return StkEntreEntete
     */
    public function setEntContratexercice($entContratexercice)
    {
        $this->entContratexercice = $entContratexercice;

        return $this;
    }

    /**
     * Get entContratexercice
     *
     * @return integer
     */
    public function getEntContratexercice()
    {
        return $this->entContratexercice;
    }

    /**
     * Set entMagrecepcode
     *
     * @param integer $entMagrecepcode
     *
     * @return StkEntreEntete
     */
    public function setEntMagrecepcode($entMagrecepcode)
    {
        $this->entMagrecepcode = $entMagrecepcode;

        return $this;
    }

    /**
     * Get entMagrecepcode
     *
     * @return integer
     */
    public function getEntMagrecepcode()
    {
        return $this->entMagrecepcode;
    }

    /**
     * Set entDatereception
     *
     * @param \DateTime $entDatereception
     *
     * @return StkEntreEntete
     */
    public function setEntDatereception($entDatereception)
    {
        $this->entDatereception = $entDatereception;

        return $this;
    }

    /**
     * Get entDatereception
     *
     * @return \DateTime
     */
    public function getEntDatereception()
    {
        return $this->entDatereception;
    }

    /**
     * Set entNumbl
     *
     * @param string $entNumbl
     *
     * @return StkEntreEntete
     */
    public function setEntNumbl($entNumbl)
    {
        $this->entNumbl = $entNumbl;

        return $this;
    }

    /**
     * Get entNumbl
     *
     * @return string
     */
    public function getEntNumbl()
    {
        return $this->entNumbl;
    }

    /**
     * Set entDatebl
     *
     * @param \DateTime $entDatebl
     *
     * @return StkEntreEntete
     */
    public function setEntDatebl($entDatebl)
    {
        $this->entDatebl = $entDatebl;

        return $this;
    }

    /**
     * Get entDatebl
     *
     * @return \DateTime
     */
    public function getEntDatebl()
    {
        return $this->entDatebl;
    }

    /**
     * Set entNumfacture
     *
     * @param string $entNumfacture
     *
     * @return StkEntreEntete
     */
    public function setEntNumfacture($entNumfacture)
    {
        $this->entNumfacture = $entNumfacture;

        return $this;
    }

    /**
     * Get entNumfacture
     *
     * @return string
     */
    public function getEntNumfacture()
    {
        return $this->entNumfacture;
    }

    /**
     * Set entDatefacture
     *
     * @param \DateTime $entDatefacture
     *
     * @return StkEntreEntete
     */
    public function setEntDatefacture($entDatefacture)
    {
        $this->entDatefacture = $entDatefacture;

        return $this;
    }

    /**
     * Get entDatefacture
     *
     * @return \DateTime
     */
    public function getEntDatefacture()
    {
        return $this->entDatefacture;
    }

    /**
     * Set entTypecode
     *
     * @param integer $entTypecode
     *
     * @return StkEntreEntete
     */
    public function setEntTypecode($entTypecode)
    {
        $this->entTypecode = $entTypecode;

        return $this;
    }

    /**
     * Get entTypecode
     *
     * @return integer
     */
    public function getEntTypecode()
    {
        return $this->entTypecode;
    }
    
    
    
    /**
     * Set entMotifcode
     *
     * @param integer $entMotifcode
     *
     * @return StkEntreEntete
     */
    public function setEntMotifcode($entMotifcode)
    {
        $this->entMotifcode = $entMotifcode;
        return $this;
    }

    /**
     * Get entMotifcode
     *
     * @return integer
     */
    public function getEntMotifcode()
    {
        return $this->entMotifcode;
    }

    /**
     * Set entNumtransit
     *
     * @param string $entNumtransit
     *
     * @return StkEntreEntete
     */
    public function setEntNumtransit($entNumtransit)
    {
        $this->entNumtransit = $entNumtransit;

        return $this;
    }

    /**
     * Get entNumtransit
     *
     * @return string
     */
    public function getEntNumtransit()
    {
        return $this->entNumtransit;
    }

    /**
     * Set entDevise
     *
     * @param float $entDevise
     *
     * @return StkEntreEntete
     */
    public function setEntDevise($entDevise)
    {
        $this->entDevise = $entDevise;

        return $this;
    }

    /**
     * Get entDevise
     *
     * @return float
     */
    public function getEntDevise()
    {
        return $this->entDevise;
    }

    /**
     * Set entCours
     *
     * @param float $entCours
     *
     * @return StkEntreEntete
     */
    public function setEntCours($entCours)
    {
        $this->entCours = $entCours;

        return $this;
    }

    /**
     * Get entCours
     *
     * @return float
     */
    public function getEntCours()
    {
        return $this->entCours;
    }

    /**
     * Set entValeurtotaledt
     *
     * @param float $entValeurtotaledt
     *
     * @return StkEntreEntete
     */
    public function setEntValeurtotaledt($entValeurtotaledt)
    {
        $this->entValeurtotaledt = $entValeurtotaledt;

        return $this;
    }

    /**
     * Get entValeurtotaledt
     *
     * @return float
     */
    public function getEntValeurtotaledt()
    {
        return $this->entValeurtotaledt;
    }

    /**
     * Set entObservation
     *
     * @param string $entObservation
     *
     * @return StkEntreEntete
     */
    public function setEntObservation($entObservation)
    {
        $this->entObservation = $entObservation;

        return $this;
    }

    /**
     * Get entObservation
     *
     * @return string
     */
    public function getEntObservation()
    {
        return $this->entObservation;
    }

    /**
     * Set entDetail
     *
     * @param string $entDetail
     *
     * @return StkEntreEntete
     */
    public function setEntDetail($entDetail)
    {
        $this->entDetail = $entDetail;

        return $this;
    }

    /**
     * Get entDetail
     *
     * @return string
     */
    public function getEntDetail()
    {
        return $this->entDetail;
    }

    /**
     * Set entEtatcode
     *
     * @param \StkEtat $entEtatcode
     *
     * @return StkEntreEntete
     */
    public function setEntEtatcode(\StkEtat $entEtatcode = null)
    {
        $this->entEtatcode = $entEtatcode;

        return $this;
    }

    /**
     * Get entEtatcode
     *
     * @return \StkEtat
     */
    public function getEntEtatcode()
    {
        return $this->entEtatcode;
    }

    /**
     * Set entFournisseurcode
     *
     * @param \StkFournisseur $entFournisseurcode
     *
     * @return StkEntreEntete
     */
    public function setEntFournisseurcode(\StkFournisseur $entFournisseurcode = null)
    {
        $this->entFournisseurcode = $entFournisseurcode;

        return $this;
    }

    /**
     * Get entFournisseurcode
     *
     * @return \StkFournisseur
     */
    public function getEntFournisseurcode()
    {
        return $this->entFournisseurcode;
    }
}
