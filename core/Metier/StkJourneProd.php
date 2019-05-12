<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkConsommationProd
 *
 * @ORM\Table(name="stk_journe_prod")
 * @ORM\Entity
 */
class StkJourneProd
{
    /**
     * @var integer
     *
     * @ORM\Column(name="cons_journe_id", type="integer", precision=0, scale=0, nullable=false, unique=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $consJourneId;
    
    
     /**
     * @var \StkProductionDetail
     *
     * @ORM\ManyToOne(targetEntity="StkProductionDetail", inversedBy="consProdId")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="prod_detail_id", referencedColumnName="prod_detail_id")
     * })
     */
    private $prodDetailId;
    
    
    
      /**
     * @var float
     *
     * @ORM\Column(name="journe_qte", type="float", precision=10, scale=0, nullable=true)
     */
    private $journeQte;
    
     
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="journe_date", type="datetime", nullable=true)
     */
    private $journeDate;
    
    
    
      /**
     * @var \DateTime
     *
     * @ORM\Column(name="journe_date_peromption", type="datetime", nullable=true)
     */
    private $journeDatePeromption;
    
    
      /**
    * @ORM\OneToMany(targetEntity="StkConsommationProd", mappedBy="consJourneId")
    */
    private $prodCons;
    
   
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->prodCons = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get consJourneId
     *
     * @return integer
     */
    public function getConsJourneId()
    {
        return $this->consJourneId;
    }

    /**
     * Set journeQte
     *
     * @param float $journeQte
     *
     * @return StkJourneProd
     */
    public function setJourneQte($journeQte)
    {
        $this->journeQte = $journeQte;

        return $this;
    }

    /**
     * Get journeQte
     *
     * @return float
     */
    public function getJourneQte()
    {
        return $this->journeQte;
    }

    /**
     * Set journeDate
     *
     * @param \DateTime $journeDate
     *
     * @return StkJourneProd
     */
    public function setJourneDate($journeDate)
    {
        $this->journeDate = $journeDate;

        return $this;
    }

    /**
     * Get journeDate
     *
     * @return \DateTime
     */
    public function getJourneDate()
    {
        return $this->journeDate;
    }

    /**
     * Set prodDetailId
     *
     * @param \StkProductionDetail $prodDetailId
     *
     * @return StkJourneProd
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
     * Add prodCon
     *
     * @param \StkConsommationProd $prodCon
     *
     * @return StkJourneProd
     */
    public function addProdCon(\StkConsommationProd $prodCon)
    {
        $this->prodCons[] = $prodCon;

        return $this;
    }

    /**
     * Remove prodCon
     *
     * @param \StkConsommationProd $prodCon
     */
    public function removeProdCon(\StkConsommationProd $prodCon)
    {
        $this->prodCons->removeElement($prodCon);
    }

    /**
     * Get prodCons
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getProdCons()
    {
        return $this->prodCons;
    }

    /**
     * Set journeDatePeromption
     *
     * @param \DateTime $journeDatePeromption
     *
     * @return StkJourneProd
     */
    public function setJourneDatePeromption($journeDatePeromption)
    {
        $this->journeDatePeromption = $journeDatePeromption;

        return $this;
    }

    /**
     * Get journeDatePeromption
     *
     * @return \DateTime
     */
    public function getJourneDatePeromption()
    {
        return $this->journeDatePeromption;
    }
}
