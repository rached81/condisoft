<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkArticle
 *
 * @ORM\Table(name="stk_article", indexes={@ORM\Index(name="fk_stk_article_stk_etat_idx", columns={"art_etatCode"}), @ORM\Index(name="fk_stk_article_stk_categorie_article1_idx", columns={"art_categorieCode"})})
 * @ORM\Entity
 */
class StkArticle
{
     /**
     * @var string
     *
     * @ORM\Column(name="art_code", type="string", length=100, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $artCode;

    /**
     * @var string
     *
     * @ORM\Column(name="art_designation", type="string", length=200, nullable=true)
     */
    private $artDesignation;
    
     /**
     * @var string
     *
     * @ORM\Column(name="art_unite", type="string", length=200, nullable=true)
     */
    private $artUnite;

    /**
     * @var string
     *
     * @ORM\Column(name="art_description", type="text", length=16777215, nullable=true)
     */
    private $artDescription;

    /**
     * @var string
     *
     * @ORM\Column(name="art_image", type="string", length=45, nullable=true)
     */
    private $artImage;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="art_DDM", type="datetime", nullable=true)
     */
    private $artDdm;

    /**
     * @var float
     *
     * @ORM\Column(name="art_dernierPrix", type="float", precision=10, scale=0, nullable=true)
     */
    private $artDernierprix;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="art_dateCreation", type="datetime", nullable=true)
     */
    private $artDatecreation;

    /**
     * @var integer
     *
     * @ORM\Column(name="art_delaisLivraison", type="integer", nullable=true)
     */
    private $artDelaislivraison;
    
    
      /**
     * @var integer
     *
     * @ORM\Column(name="art_class", type="integer", nullable=true)
     */
    private $artClass;

    /**
     * @var float
     *
     * @ORM\Column(name="art_coutPossetion", type="float", precision=10, scale=0, nullable=true)
     */
    private $artCoutpossetion;

    /**
     * @var float
     *
     * @ORM\Column(name="art_coutPassation", type="float", precision=10, scale=0, nullable=true)
     */
    private $artCoutpassation;

    /**
     * @var float
     *
     * @ORM\Column(name="art_stockMinimale", type="float", precision=10, scale=0, nullable=true)
     */
    private $artStockminimale;
    
    
    /**
     * @var float
     *
     * @ORM\Column(name="art_prix", type="float", precision=10, scale=0, nullable=true)
     */
    private $artPrix;

    
    
    /**
     * @var integer
     *
     * @ORM\Column(name="art_tva", type="integer", precision=10, scale=0, nullable=true)
     */
    private $artTva;

    /**
     * @var integer
     *
     * @ORM\Column(name="art_weight", type="float", precision=10, scale=0, nullable=true)
     */
    private $artWeight;

    /**
     * @var \StkCategorieArticle
     *
     * @ORM\ManyToOne(targetEntity="StkCategorieArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="art_categorieCode", referencedColumnName="catart_code")
     * })
     */
    private $artCategoriecode;

    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="art_etatCode", referencedColumnName="etat_code")
     * })
     */
    private $artEtatcode;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\OneToMany(targetEntity="StkConsomationEntete", mappedBy="consArtcode")
     */
    private $consCode;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->consCode = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Get artCode
     *
     * @return string
     */
    public function getArtCode()
    {
        return $this->artCode;
    }
    
    
      /**
     * Set artCode
     *
     * @param string $artCode
     *
     * @return StkArticle
     */
    public function setArtCode($artCode)
    {
        $this->artCode = $artCode;

        return $this;
    }
    

    /**
     * Set artDesignation
     *
     * @param string $artDesignation
     *
     * @return StkArticle
     */
    public function setArtDesignation($artDesignation)
    {
        $this->artDesignation = $artDesignation;

        return $this;
    }

    /**
     * Get artDesignation
     *
     * @return string
     */
    public function getArtDesignation()
    {
        return $this->artDesignation;
    }

    /**
     * Set artDescription
     *
     * @param string $artDescription
     *
     * @return StkArticle
     */
    public function setArtDescription($artDescription)
    {
        $this->artDescription = $artDescription;

        return $this;
    }

    /**
     * Get artDescription
     *
     * @return string
     */
    public function getArtDescription()
    {
        return $this->artDescription;
    }

    /**
     * Set artImage
     *
     * @param string $artImage
     *
     * @return StkArticle
     */
    public function setArtImage($artImage)
    {
        $this->artImage = $artImage;

        return $this;
    }

    /**
     * Get artImage
     *
     * @return string
     */
    public function getArtImage()
    {
        return $this->artImage;
    }

    /**
     * Set artDdm
     *
     * @param \DateTime $artDdm
     *
     * @return StkArticle
     */
    public function setArtDdm($artDdm)
    {
        $this->artDdm = $artDdm;

        return $this;
    }

    /**
     * Get artDdm
     *
     * @return \DateTime
     */
    public function getArtDdm()
    {
        return $this->artDdm;
    }

    /**
     * Set artDernierprix
     *
     * @param float $artDernierprix
     *
     * @return StkArticle
     */
    public function setArtDernierprix($artDernierprix)
    {
        $this->artDernierprix = $artDernierprix;

        return $this;
    }

    /**
     * Get artDernierprix
     *
     * @return float
     */
    public function getArtDernierprix()
    {
        return $this->artDernierprix;
    }

    /**
     * Set artDatecreation
     *
     * @param \DateTime $artDatecreation
     *
     * @return StkArticle
     */
    public function setArtDatecreation($artDatecreation)
    {
        $this->artDatecreation = $artDatecreation;

        return $this;
    }

    /**
     * Get artDatecreation
     *
     * @return \DateTime
     */
    public function getArtDatecreation()
    {
        return $this->artDatecreation;
    }

    /**
     * Set artDelaislivraison
     *
     * @param integer $artDelaislivraison
     *
     * @return StkArticle
     */
    public function setArtDelaislivraison($artDelaislivraison)
    {
        $this->artDelaislivraison = $artDelaislivraison;

        return $this;
    }

    /**
     * Get artDelaislivraison
     *
     * @return integer
     */
    public function getArtDelaislivraison()
    {
        return $this->artDelaislivraison;
    }

    /**
     * Set artCoutpossetion
     *
     * @param float $artCoutpossetion
     *
     * @return StkArticle
     */
    public function setArtCoutpossetion($artCoutpossetion)
    {
        $this->artCoutpossetion = $artCoutpossetion;

        return $this;
    }

    /**
     * Get artCoutpossetion
     *
     * @return float
     */
    public function getArtCoutpossetion()
    {
        return $this->artCoutpossetion;
    }

    /**
     * Set artCoutpassation
     *
     * @param float $artCoutpassation
     *
     * @return StkArticle
     */
    public function setArtCoutpassation($artCoutpassation)
    {
        $this->artCoutpassation = $artCoutpassation;

        return $this;
    }

    /**
     * Get artCoutpassation
     *
     * @return float
     */
    public function getArtCoutpassation()
    {
        return $this->artCoutpassation;
    }

    /**
     * Set artStockminimale
     *
     * @param float $artStockminimale
     *
     * @return StkArticle
     */
    public function setArtStockminimale($artStockminimale)
    {
        $this->artStockminimale = $artStockminimale;

        return $this;
    }

    /**
     * Get artStockminimale
     *
     * @return float
     */
    public function getArtStockminimale()
    {
        return $this->artStockminimale;
    }
    
    
    
    /**
     * Set artPrix
     *
     * @param float $artPrix
     *
     * @return StkArticle
     */
    public function setArtPrix($artPrix)
    {
        $this->artPrix = $artPrix;

        return $this;
    }

    /**
     * Get artStockminimale
     *
     * @return float
     */
    public function getArtPrix()
    {
        return $this->artPrix;
    }
    
    
    /**
     * Set artTva
     *
     * @param integer $artTva
     *
     * @return StkArticle
     */
    public function setArtTva($artTva)
    {
        $this->artTva = $artTva;

        return $this;
    }


    
    /**
     * Get artTva
     *
     * @return float
     */
    public function getArtTva()
    {
        return $this->artTva;
    }



    /**
     * Set artWeight
     *
     * @param float $artWeight
     *
     * @return StkArticle
     */
    public function setArtWeight($artWeight)
    {
        $this->artWeight = $artWeight;

        return $this;
    }


    
    /**
     * Get artWeight
     *
     * @return float
     */
    public function getArtWeight()
    {
        return $this->artWeight;
    }
    



    






    /**
     * Set artCategoriecode
     *
     * @param \StkCategorieArticle $artCategoriecode
     *
     * @return StkArticle
     */
    public function setArtCategoriecode(\StkCategorieArticle $artCategoriecode = null)
    {
        $this->artCategoriecode = $artCategoriecode;

        return $this;
    }

    /**
     * Get artCategoriecode
     *
     * @return \StkCategorieArticle
     */
    public function getArtCategoriecode()
    {
        return $this->artCategoriecode;
    }

    /**
     * Set artEtatcode
     *
     * @param \StkEtat $artEtatcode
     *
     * @return StkArticle
     */
    public function setArtEtatcode(\StkEtat $artEtatcode = null)
    {
        $this->artEtatcode = $artEtatcode;

        return $this;
    }

    /**
     * Get artEtatcode
     *
     * @return \StkEtat
     */
    public function getArtEtatcode()
    {
        return $this->artEtatcode;
    }

    /**
     * Add consCode
     *
     * @param \StkConsomationEntete $consCode
     *
     * @return StkArticle
     */
    public function addConsCode(\StkConsomationEntete $consCode)
    {
        $this->consCode[] = $consCode;

        return $this;
    }

    /**
     * Remove consCode
     *
     * @param \StkConsomationEntete $consCode
     */
    public function removeConsCode(\StkConsomationEntete $consCode)
    {
        $this->consCode->removeElement($consCode);
    }

    /**
     * Get consCode
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getConsCode()
    {
        return $this->consCode;
    }

    /**
     * Set artClass
     *
     * @param integer $artClass
     *
     * @return StkArticle
     */
    public function setArtClass($artClass)
    {
        $this->artClass = $artClass;

        return $this;
    }

    /**
     * Get artClass
     *
     * @return integer
     */
    public function getArtClass()
    {
        return $this->artClass;
    }

    /**
     * Set artUnite
     *
     * @param string $artUnite
     *
     * @return StkArticle
     */
    public function setArtUnite($artUnite)
    {
        $this->artUnite = $artUnite;

        return $this;
    }

    /**
     * Get artUnite
     *
     * @return string
     */
    public function getArtUnite()
    {
        return $this->artUnite;
    }
}
