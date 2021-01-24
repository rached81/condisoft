<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkProduction
 *
 * @ORM\Table(name="stk_production")
 * @ORM\Entity
 */
class StkProduction
{
    
      /**
     * @var integer
     *
     * @ORM\Column(name="prod_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $prodId;
    
    
    /**
    * @ORM\OneToMany(targetEntity="StkProductionDetail", mappedBy="prodId")
    */
    private $prodDetailId;
    
    
     /**
     * @var string
     *
     * @ORM\Column(name="prod_code_devis_bc", length=100, nullable=true)
     */
    private $prodCodeDeviBc;
    
     /**
     * @var string
     *
     * @ORM\Column(name="prod_code_Prod", length=100, nullable=true)
     */
    private $prodCodeProd;
    
    
    
      /**
     * @var string
     *
     * @ORM\Column(name="prod_code_bl", length=100, nullable=true)
     */
    private $prodCodeBl;
    
    
    
       /**
     * @var string
     *
     * @ORM\Column(name="prod_code_facture", length=100, nullable=true)
     */
    private $prodCodeFacture;
    
    
    
    /**
     * @var string
     *
     * @ORM\Column(name="prod_code_mag", length=100, nullable=true)
     */
    private $prodCodeMag;
    
    
    /**
     * @var integer
     *
     * @ORM\Column(name="prod_code_client", type="integer", nullable=true)
     */
    private $prodCodeClient;
    
    
    
    
    
     /**
     * @var integer
     *
     * @ORM\Column(name="prod_exercice_devis", type="integer", nullable=true)
     */
    private $prodExerciceDevis;
    
     
 
        
    
    /**
     * @var \StkDevise
     *
     * @ORM\ManyToOne(targetEntity="StkDevise")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="prod_devise", referencedColumnName="devise_code")
     * })
     */
    private $prodDevise;
    
        /**
     * @var \Util
     *
     * @ORM\ManyToOne(targetEntity="Util")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="prod_commerciale", referencedColumnName="IDUTIL")
     * })
     */
    private $prodCommerciale;

    
       /**
     * @var integer
     *
     * @ORM\Column(name="prod_exercice_Bc", type="integer", nullable=true)
     */
    private $prodExerciceBc;
    
    
       /**
     * @var integer
     *
     * @ORM\Column(name="prod_exercice_Blfacture", type="integer", nullable=true)
     */
    private $prodExerciceBlfacture;
    
    
        /**
     * @var integer
     *
     * @ORM\Column(name="prod_exercice_prod", type="integer", nullable=true)
     */
    private $prodExerciceProd;
   
    
    
    
    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="prod_code_etat", referencedColumnName="etat_code")
     * })
     */
    private $prodCodeEtat;
    
    
    
    
     /**
     * @var float
     *
     * @ORM\Column(name="prod_prix_totale", type="float", precision=10, scale=0, nullable=true)
     */
    private $prodPrixTotale;
    
    
    
    
    /**
     * @var float
     *
     * @ORM\Column(name="prod_prix_totale_ttc", type="float", precision=10, scale=0, nullable=true)
     */
    private $prodPrixTotaleTtc;
    
    
    
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="prod_date_devis", type="datetime", nullable=true)
     */
    private $prodDateDevis;
    
    
    
     /**
     * @var \DateTime
     *
     * @ORM\Column(name="prod_date_Bc", type="datetime", nullable=true)
     */
    private $prodDateBc;
    
    
    
     /**
     * @var \DateTime
     *
     * @ORM\Column(name="prod_date_prod", type="datetime", nullable=true)
     */
    private $prodDateProd;
    
   
    
    
    
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="prod_date_Bl", type="datetime", nullable=true)
     */
    private $prodDateBl;
    
    
    
     /**
     * @var \DateTime
     *
     * @ORM\Column(name="prod_date_facture", type="datetime", nullable=true)
     */
    private $prodDateFacture;
    
    
    
 
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->prodDetailId = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get prodId
     *
     * @return integer
     */
    public function getProdId()
    {
        return $this->prodId;
    }

    /**
     * Set prodCodeDeviBc
     *
     * @param string $prodCodeDeviBc
     *
     * @return StkProduction
     */
    public function setProdCodeDeviBc($prodCodeDeviBc)
    {
        $this->prodCodeDeviBc = $prodCodeDeviBc;

        return $this;
    }

    /**
     * Get prodCodeDeviBc
     *
     * @return string
     */
    public function getProdCodeDeviBc()
    {
        return $this->prodCodeDeviBc;
    }

    /**
     * Set prodCodeProd
     *
     * @param string $prodCodeProd
     *
     * @return StkProduction
     */
    public function setProdCodeProd($prodCodeProd)
    {
        $this->prodCodeProd = $prodCodeProd;

        return $this;
    }

    /**
     * Get prodCodeProd
     *
     * @return string
     */
    public function getProdCodeProd()
    {
        return $this->prodCodeProd;
    }

    /**
     * Set prodCodeBl
     *
     * @param string $prodCodeBl
     *
     * @return StkProduction
     */
    public function setProdCodeBl($prodCodeBl)
    {
        $this->prodCodeBl = $prodCodeBl;

        return $this;
    }

    /**
     * Get prodCodeBl
     *
     * @return string
     */
    public function getProdCodeBl()
    {
        return $this->prodCodeBl;
    }

    /**
     * Set prodCodeFacture
     *
     * @param string $prodCodeFacture
     *
     * @return StkProduction
     */
    public function setProdCodeFacture($prodCodeFacture)
    {
        $this->prodCodeFacture = $prodCodeFacture;

        return $this;
    }

    /**
     * Get prodCodeFacture
     *
     * @return string
     */
    public function getProdCodeFacture()
    {
        return $this->prodCodeFacture;
    }

    /**
     * Set prodCodeMag
     *
     * @param string $prodCodeMag
     *
     * @return StkProduction
     */
    public function setProdCodeMag($prodCodeMag)
    {
        $this->prodCodeMag = $prodCodeMag;

        return $this;
    }

    /**
     * Get prodCodeMag
     *
     * @return string
     */
    public function getProdCodeMag()
    {
        return $this->prodCodeMag;
    }

    /**
     * Set prodCodeClient
     *
     * @param integer $prodCodeClient
     *
     * @return StkProduction
     */
    public function setProdCodeClient($prodCodeClient)
    {
        $this->prodCodeClient = $prodCodeClient;

        return $this;
    }

    /**
     * Get prodCodeClient
     *
     * @return integer
     */
    public function getProdCodeClient()
    {
        return $this->prodCodeClient;
    }

    /**
     * Set prodExerciceDevis
     *
     * @param integer $prodExerciceDevis
     *
     * @return StkProduction
     */
    public function setProdExerciceDevis($prodExerciceDevis)
    {
        $this->prodExerciceDevis = $prodExerciceDevis;

        return $this;
    }

    /**
     * Get prodExerciceDevis
     *
     * @return integer
     */
    public function getProdExerciceDevis()
    {
        return $this->prodExerciceDevis;
    }

    /**
     * Set prodExerciceBc
     *
     * @param integer $prodExerciceBc
     *
     * @return StkProduction
     */
    public function setProdExerciceBc($prodExerciceBc)
    {
        $this->prodExerciceBc = $prodExerciceBc;

        return $this;
    }

    /**
     * Get prodExerciceBc
     *
     * @return integer
     */
    public function getProdExerciceBc()
    {
        return $this->prodExerciceBc;
    }

    /**
     * Set prodExerciceBlfacture
     *
     * @param integer $prodExerciceBlfacture
     *
     * @return StkProduction
     */
    public function setProdExerciceBlfacture($prodExerciceBlfacture)
    {
        $this->prodExerciceBlfacture = $prodExerciceBlfacture;

        return $this;
    }

    /**
     * Get prodExerciceBlfacture
     *
     * @return integer
     */
    public function getProdExerciceBlfacture()
    {
        return $this->prodExerciceBlfacture;
    }

    /**
     * Set prodCodeEtat
     *
     * @param integer $prodCodeEtat
     *
     * @return StkProduction
     */
    public function setProdCodeEtat($prodCodeEtat)
    {
        $this->prodCodeEtat = $prodCodeEtat;

        return $this;
    }

    /**
     * Get prodCodeEtat
     *
     * @return integer
     */
    public function getProdCodeEtat()
    {
        return $this->prodCodeEtat;
    }

    /**
     * Set prodPrixTotale
     *
     * @param float $prodPrixTotale
     *
     * @return StkProduction
     */
    public function setProdPrixTotale($prodPrixTotale)
    {
        $this->prodPrixTotale = $prodPrixTotale;

        return $this;
    }

    /**
     * Get prodPrixTotale
     *
     * @return float
     */
    public function getProdPrixTotale()
    {
        return $this->prodPrixTotale;
    }

    /**
     * Set prodPrixTotaleTtc
     *
     * @param float $prodPrixTotaleTtc
     *
     * @return StkProduction
     */
    public function setProdPrixTotaleTtc($prodPrixTotaleTtc)
    {
        $this->prodPrixTotaleTtc = $prodPrixTotaleTtc;

        return $this;
    }

    /**
     * Get prodPrixTotaleTtc
     *
     * @return float
     */
    public function getProdPrixTotaleTtc()
    {
        return $this->prodPrixTotaleTtc;
    }

    /**
     * Set prodDateDevis
     *
     * @param \DateTime $prodDateDevis
     *
     * @return StkProduction
     */
    public function setProdDateDevis($prodDateDevis)
    {
        $this->prodDateDevis = $prodDateDevis;

        return $this;
    }

    /**
     * Get prodDateDevis
     *
     * @return \DateTime
     */
    public function getProdDateDevis()
    {
        return $this->prodDateDevis;
    }

    /**
     * Set prodDateBc
     *
     * @param \DateTime $prodDateBc
     *
     * @return StkProduction
     */
    public function setProdDateBc($prodDateBc)
    {
        $this->prodDateBc = $prodDateBc;

        return $this;
    }

    /**
     * Get prodDateBc
     *
     * @return \DateTime
     */
    public function getProdDateBc()
    {
        return $this->prodDateBc;
    }

    /**
     * Set prodDateProd
     *
     * @param \DateTime $prodDateProd
     *
     * @return StkProduction
     */
    public function setProdDateProd($prodDateProd)
    {
        $this->prodDateProd = $prodDateProd;

        return $this;
    }

    /**
     * Get prodDateProd
     *
     * @return \DateTime
     */
    public function getProdDateProd()
    {
        return $this->prodDateProd;
    }

    /**
     * Set prodDateBl
     *
     * @param \DateTime $prodDateBl
     *
     * @return StkProduction
     */
    public function setProdDateBl($prodDateBl)
    {
        $this->prodDateBl = $prodDateBl;

        return $this;
    }

    /**
     * Get prodDateBl
     *
     * @return \DateTime
     */
    public function getProdDateBl()
    {
        return $this->prodDateBl;
    }

    /**
     * Set prodDateFacture
     *
     * @param \DateTime $prodDateFacture
     *
     * @return StkProduction
     */
    public function setProdDateFacture($prodDateFacture)
    {
        $this->prodDateFacture = $prodDateFacture;

        return $this;
    }

    /**
     * Get prodDateFacture
     *
     * @return \DateTime
     */
    public function getProdDateFacture()
    {
        return $this->prodDateFacture;
    }

    /**
     * Add prodDetailId
     *
     * @param \StkProductionDetail $prodDetailId
     *
     * @return StkProduction
     */
    public function addProdDetailId(\StkProductionDetail $prodDetailId)
    {
        $this->prodDetailId[] = $prodDetailId;

        return $this;
    }

    /**
     * Remove prodDetailId
     *
     * @param \StkProductionDetail $prodDetailId
     */
    public function removeProdDetailId(\StkProductionDetail $prodDetailId)
    {
        $this->prodDetailId->removeElement($prodDetailId);
    }

    /**
     * Get prodDetailId
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getProdDetailId()
    {
        return $this->prodDetailId;
    }

    /**
     * Set prodExerciceProd
     *
     * @param integer $prodExerciceProd
     *
     * @return StkProduction
     */
    public function setProdExerciceProd($prodExerciceProd)
    {
        $this->prodExerciceProd = $prodExerciceProd;

        return $this;
    }

    /**
     * Get prodExerciceProd
     *
     * @return integer
     */
    public function getProdExerciceProd()
    {
        return $this->prodExerciceProd;
    }


    /**
     * Set prodDevise
     *
     * @param \StkDevise $prodDevise
     *
     * @return StkProduction
     */
    public function setProdDevise(\StkDevise $prodDevise = null)
    {
        $this->prodDevise = $prodDevise;

        return $this;
    }

    /**
     * Get prodDevise
     *
     * @return \StkDevise
     */
    public function getProdDevise()
    {
        return $this->prodDevise;
    }

    /**
     * Set prodCommerciale
     *
     * @param \Util $prodCommerciale
     *
     * @return StkProduction
     */
    public function setProdCommerciale(\Util $prodCommerciale = null)
    {
        $this->prodCommerciale = $prodCommerciale;

        return $this;
    }

    /**
     * Get prodCommerciale
     *
     * @return \Util
     */
    public function getProdCommerciale()
    {
        return $this->prodCommerciale;
    }
}
