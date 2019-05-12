<?php
use Doctrine\ORM\Mapping as ORM;

/**
 * StkProductionDetail
 *
 * @ORM\Table(name="stk_production_detail")
 * @ORM\Entity
 */
class StkProductionDetail
{
    
      /**
     * @var integer
     *
     * @ORM\Column(name="prod_detail_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $prodDetailId;
    
    /**
     * @var \StkProduction
     *
     * @ORM\ManyToOne(targetEntity="StkProduction", inversedBy="prodDetailId")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="prod_id", referencedColumnName="prod_id")
     * })
     */
    private $prodId;
    
    
    
    
     /**
    * @ORM\OneToMany(targetEntity="StkJourneProd", mappedBy="prodDetailId")
    */
    private $consProdId;

    
     /**
     * @var \StkArticle
     *
     * @ORM\ManyToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="proddetail_article_code", referencedColumnName="art_code")
     * })
     */
     private $proddetailArticleCode;
     
     
     /**
     * @var float
     *
     * @ORM\Column(name="proddetail_qte_devis", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailQteDevis;
    
    
     /**
     * @var float
     *
     * @ORM\Column(name="proddetail_qte_bc", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailQteBc;
    
    
     /**
     * @var float
     *
     * @ORM\Column(name="proddetail_qte_prod", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailQteProd;
    
    
    /**
     * @var integer
     *
     * @ORM\Column(name="proddetail_code_frs", type="integer", nullable=true)
     */
    private $proddetailCodeFrs;
    
    
        /**
     * @var \DateTime
     *
     * @ORM\Column(name="proddetail_date_peromption", type="datetime", nullable=true)
     */
    private $proddetailDatePeromption;
    
     /**
     * @var float
     *
     * @ORM\Column(name="proddetail_prix_unitaire", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailPrixUnitaire;
    
    
     /**
     * @var float
     *
     * @ORM\Column(name="proddetail_prix_unitaire_devise", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailPrixUniaireDevise;
    
    
     /**
     * @var \StkTva
     *
     * @ORM\ManyToOne(targetEntity="StkTva")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="proddetail_tva", referencedColumnName="tva_code")
     * })
     */
    private $proddetailTva;
    
    
    
    
    /**
     * @var float
     *
     * @ORM\Column(name="proddetail_prix_unitaire_devis", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailPrixUnitaireDevis;
    
    
     /**
     * @var float
     *
     * @ORM\Column(name="proddetail_prix_unitaire_devise_devis", type="float", precision=10, scale=0, nullable=true)
     */
    private $proddetailPrixUniaireDeviseDevis;
    
    
     /**
     * @var \StkTva
     *
     * @ORM\ManyToOne(targetEntity="StkTva")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="proddetail_tva_devise", referencedColumnName="tva_code")
     * })
     */
    private $proddetailTvaDevis;
    
    
     /**
     * @var integer
     *
     * @ORM\Column(name="proddetail_etat", type="integer", nullable=true)
     */
    private $proddetailEtat;
    
 

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->consProdId = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get prodDetailId
     *
     * @return integer
     */
    public function getProdDetailId()
    {
        return $this->prodDetailId;
    }

    /**
     * Set proddetailQteDevis
     *
     * @param float $proddetailQteDevis
     *
     * @return StkProductionDetail
     */
    public function setProddetailQteDevis($proddetailQteDevis)
    {
        $this->proddetailQteDevis = $proddetailQteDevis;

        return $this;
    }

    /**
     * Get proddetailQteDevis
     *
     * @return float
     */
    public function getProddetailQteDevis()
    {
        return $this->proddetailQteDevis;
    }

    /**
     * Set proddetailQteBc
     *
     * @param float $proddetailQteBc
     *
     * @return StkProductionDetail
     */
    public function setProddetailQteBc($proddetailQteBc)
    {
        $this->proddetailQteBc = $proddetailQteBc;

        return $this;
    }

    /**
     * Get proddetailQteBc
     *
     * @return float
     */
    public function getProddetailQteBc()
    {
        return $this->proddetailQteBc;
    }

    /**
     * Set proddetailQteProd
     *
     * @param float $proddetailQteProd
     *
     * @return StkProductionDetail
     */
    public function setProddetailQteProd($proddetailQteProd)
    {
        $this->proddetailQteProd = $proddetailQteProd;

        return $this;
    }

    /**
     * Get proddetailQteProd
     *
     * @return float
     */
    public function getProddetailQteProd()
    {
        return $this->proddetailQteProd;
    }

    /**
     * Set proddetailCodeFrs
     *
     * @param integer $proddetailCodeFrs
     *
     * @return StkProductionDetail
     */
    public function setProddetailCodeFrs($proddetailCodeFrs)
    {
        $this->proddetailCodeFrs = $proddetailCodeFrs;

        return $this;
    }

    /**
     * Get proddetailCodeFrs
     *
     * @return integer
     */
    public function getProddetailCodeFrs()
    {
        return $this->proddetailCodeFrs;
    }

    /**
     * Set proddetailDatePeromption
     *
     * @param \DateTime $proddetailDatePeromption
     *
     * @return StkProductionDetail
     */
    public function setProddetailDatePeromption($proddetailDatePeromption)
    {
        $this->proddetailDatePeromption = $proddetailDatePeromption;

        return $this;
    }

    /**
     * Get proddetailDatePeromption
     *
     * @return \DateTime
     */
    public function getProddetailDatePeromption()
    {
        return $this->proddetailDatePeromption;
    }

    /**
     * Set proddetailPrixUnitaire
     *
     * @param float $proddetailPrixUnitaire
     *
     * @return StkProductionDetail
     */
    public function setProddetailPrixUnitaire($proddetailPrixUnitaire)
    {
        $this->proddetailPrixUnitaire = $proddetailPrixUnitaire;

        return $this;
    }

    /**
     * Get proddetailPrixUnitaire
     *
     * @return float
     */
    public function getProddetailPrixUnitaire()
    {
        return $this->proddetailPrixUnitaire;
    }

    /**
     * Set proddetailPrixUniaireDevise
     *
     * @param float $proddetailPrixUniaireDevise
     *
     * @return StkProductionDetail
     */
    public function setProddetailPrixUniaireDevise($proddetailPrixUniaireDevise)
    {
        $this->proddetailPrixUniaireDevise = $proddetailPrixUniaireDevise;

        return $this;
    }

    /**
     * Get proddetailPrixUniaireDevise
     *
     * @return float
     */
    public function getProddetailPrixUniaireDevise()
    {
        return $this->proddetailPrixUniaireDevise;
    }

  
    /**
     * Set proddetailEtat
     *
     * @param integer $proddetailEtat
     *
     * @return StkProductionDetail
     */
    public function setProddetailEtat($proddetailEtat)
    {
        $this->proddetailEtat = $proddetailEtat;

        return $this;
    }

    /**
     * Get proddetailEtat
     *
     * @return integer
     */
    public function getProddetailEtat()
    {
        return $this->proddetailEtat;
    }

    /**
     * Set prodId
     *
     * @param \StkProduction $prodId
     *
     * @return StkProductionDetail
     */
    public function setProdId(\StkProduction $prodId = null)
    {
        $this->prodId = $prodId;

        return $this;
    }

    /**
     * Get prodId
     *
     * @return \StkProduction
     */
    public function getProdId()
    {
        return $this->prodId;
    }

    /**
     * Add consProdId
     *
     * @param \StkConsommationProd $consProdId
     *
     * @return StkProductionDetail
     */
    public function addConsProdId(\StkConsommationProd $consProdId)
    {
        $this->consProdId[] = $consProdId;

        return $this;
    }

    /**
     * Remove consProdId
     *
     * @param \StkConsommationProd $consProdId
     */
    public function removeConsProdId(\StkConsommationProd $consProdId)
    {
        $this->consProdId->removeElement($consProdId);
    }

    /**
     * Get consProdId
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getConsProdId()
    {
        return $this->consProdId;
    }

    /**
     * Set proddetailArticleCode
     *
     * @param \StkArticle $proddetailArticleCode
     *
     * @return StkProductionDetail
     */
    public function setProddetailArticleCode(\StkArticle $proddetailArticleCode = null)
    {
        $this->proddetailArticleCode = $proddetailArticleCode;

        return $this;
    }

    /**
     * Get proddetailArticleCode
     *
     * @return \StkArticle
     */
    public function getProddetailArticleCode()
    {
        return $this->proddetailArticleCode;
    }

    /**
     * Set proddetailPrixUnitaireDevis
     *
     * @param float $proddetailPrixUnitaireDevis
     *
     * @return StkProductionDetail
     */
    public function setProddetailPrixUnitaireDevis($proddetailPrixUnitaireDevis)
    {
        $this->proddetailPrixUnitaireDevis = $proddetailPrixUnitaireDevis;

        return $this;
    }

    /**
     * Get proddetailPrixUnitaireDevis
     *
     * @return float
     */
    public function getProddetailPrixUnitaireDevis()
    {
        return $this->proddetailPrixUnitaireDevis;
    }

    /**
     * Set proddetailPrixUniaireDeviseDevis
     *
     * @param float $proddetailPrixUniaireDeviseDevis
     *
     * @return StkProductionDetail
     */
    public function setProddetailPrixUniaireDeviseDevis($proddetailPrixUniaireDeviseDevis)
    {
        $this->proddetailPrixUniaireDeviseDevis = $proddetailPrixUniaireDeviseDevis;

        return $this;
    }

    /**
     * Get proddetailPrixUniaireDeviseDevis
     *
     * @return float
     */
    public function getProddetailPrixUniaireDeviseDevis()
    {
        return $this->proddetailPrixUniaireDeviseDevis;
    }

   

    /**
     * Set proddetailTva
     *
     * @param \StkTva $proddetailTva
     *
     * @return StkProductionDetail
     */
    public function setProddetailTva(\StkTva $proddetailTva = null)
    {
        $this->proddetailTva = $proddetailTva;

        return $this;
    }

    /**
     * Get proddetailTva
     *
     * @return \StkTva
     */
    public function getProddetailTva()
    {
        return $this->proddetailTva;
    }

    /**
     * Set proddetailTvaDevis
     *
     * @param \StkTva $proddetailTvaDevis
     *
     * @return StkProductionDetail
     */
    public function setProddetailTvaDevis(\StkTva $proddetailTvaDevis = null)
    {
        $this->proddetailTvaDevis = $proddetailTvaDevis;

        return $this;
    }

    /**
     * Get proddetailTvaDevis
     *
     * @return \StkTva
     */
    public function getProddetailTvaDevis()
    {
        return $this->proddetailTvaDevis;
    }
}
