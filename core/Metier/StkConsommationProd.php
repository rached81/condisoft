<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkConsommationProd
 *
 * @ORM\Table(name="stk_consommation_prod")
 * @ORM\Entity
 */
class StkConsommationProd
{
    /**
     * @var integer
     *
     * @ORM\Column(name="cons_prod_id", type="integer", precision=0, scale=0, nullable=false, unique=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $consProdId;
    
    
     /**
     * @var \StkJourneProd
     *
     * @ORM\ManyToOne(targetEntity="StkJourneProd", inversedBy="prodCons")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cons_journe_id", referencedColumnName="cons_journe_id")
     * })
     */
    private $consJourneId;
    
    
    
    
    /**
     * @var \StkArticle
     *
     * @ORM\ManyToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="consprod_article_code", referencedColumnName="art_code")
     * })
     */
    private $consprodArticleCode;
    
    
      /**
     * @var float
     *
     * @ORM\Column(name="consprod_qte", type="float", precision=10, scale=0, nullable=true)
     */
    private $consprodQte;
    
      /**
     * @var \StkFournisseur
     *
     * @ORM\ManyToOne(targetEntity="StkFournisseur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="consprod_code_frs", referencedColumnName="frs_code")
     * })
     */
    private $consprodCodeFrs;
    
    
       /**
     * @var \DateTime
     *
     * @ORM\Column(name="consprod_date_peromption", type="datetime", nullable=true)
     */
    private $consprodDatePeromption;
    
    
  
    
     /**
     * @var string
     *
     * @ORM\Column(name="consprod_type", type="string",length=10, nullable=true)
     */
    private $consprodType;
    
    
    /**
     * Get consProdId
     *
     * @return integer
     */
    public function getConsProdId()
    {
        return $this->consProdId;
    }

    /**
     * Set prodDetailId
     *
     * @param \StkProductionDetail $prodDetailId
     *
     * @return StkConsommationProd
     */
    public function setProdDetailId(\StkProductionDetail $prodDetailId = null)
    {
        $this->prodDetailId = $prodDetailId;

        return $this;
    }

    /**
     * Get prodDetailId
     *
     * @return \StkProductionDetail
     */
    public function getProdDetailId()
    {
        return $this->prodDetailId;
    }

    /**
     * Set consprodQte
     *
     * @param float $consprodQte
     *
     * @return StkConsommationProd
     */
    public function setConsprodQte($consprodQte)
    {
        $this->consprodQte = $consprodQte;

        return $this;
    }

    /**
     * Get consprodQte
     *
     * @return float
     */
    public function getConsprodQte()
    {
        return $this->consprodQte;
    }

  
    /**
     * Set consprodDatePeromption
     *
     * @param \DateTime $consprodDatePeromption
     *
     * @return StkConsommationProd
     */
    public function setConsprodDatePeromption($consprodDatePeromption)
    {
        $this->consprodDatePeromption = $consprodDatePeromption;

        return $this;
    }

    /**
     * Get consprodDatePeromption
     *
     * @return \DateTime
     */
    public function getConsprodDatePeromption()
    {
        return $this->consprodDatePeromption;
    }

    /**
     * Set consprodType
     *
     * @param integer $consprodType
     *
     * @return StkConsommationProd
     */
    public function setConsprodType($consprodType)
    {
        $this->consprodType = $consprodType;

        return $this;
    }

    /**
     * Get consprodType
     *
     * @return integer
     */
    public function getConsprodType()
    {
        return $this->consprodType;
    }

    /**
     * Set consprodArticleCode
     *
     * @param \StkArticle $consprodArticleCode
     *
     * @return StkConsommationProd
     */
    public function setConsprodArticleCode(\StkArticle $consprodArticleCode = null)
    {
        $this->consprodArticleCode = $consprodArticleCode;

        return $this;
    }

    /**
     * Get consprodArticleCode
     *
     * @return \StkArticle
     */
    public function getConsprodArticleCode()
    {
        return $this->consprodArticleCode;
    }

  
    

    /**
     * Set consprodCodeFrs
     *
     * @param \StkFournisseur $consprodCodeFrs
     *
     * @return StkConsommationProd
     */
    public function setConsprodCodeFrs(\StkFournisseur $consprodCodeFrs = null)
    {
        $this->consprodCodeFrs = $consprodCodeFrs;

        return $this;
    }

    /**
     * Get consprodCodeFrs
     *
     * @return \StkFournisseur
     */
    public function getConsprodCodeFrs()
    {
        return $this->consprodCodeFrs;
    }

    /**
     * Set consJourneId
     *
     * @param \StkJourneProd $consJourneId
     *
     * @return StkConsommationProd
     */
    public function setConsJourneId(\StkJourneProd $consJourneId = null)
    {
        $this->consJourneId = $consJourneId;

        return $this;
    }

    /**
     * Get consJourneId
     *
     * @return \StkJourneProd
     */
    public function getConsJourneId()
    {
        return $this->consJourneId;
    }
}
