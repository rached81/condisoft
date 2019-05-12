<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkTva
 *
 * @ORM\Table(name="stk_tva")
 * @ORM\Entity
 */
class StkTva
{
    /**
     * @var integer
     *
     * @ORM\Column(name="tva_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $tvaCode;

    /**
     * @var float
     *
     * @ORM\Column(name="tva_pourcentage", type="float", precision=10, scale=0, nullable=true)
     */
    private $tvaPourcentage;

    /**
     * @var string
     *
     * @ORM\Column(name="tva_designation", type="string", length=45, nullable=true)
     */
    private $tvaDesignation;



    /**
     * Get tvaCode
     *
     * @return integer
     */
    public function getTvaCode()
    {
        return $this->tvaCode;
    }

    /**
     * Set tvaPourcentage
     *
     * @param float $tvaPourcentage
     *
     * @return StkTva
     */
    public function setTvaPourcentage($tvaPourcentage)
    {
        $this->tvaPourcentage = $tvaPourcentage;

        return $this;
    }

    /**
     * Get tvaPourcentage
     *
     * @return float
     */
    public function getTvaPourcentage()
    {
        return $this->tvaPourcentage;
    }

    /**
     * Set tvaDesignation
     *
     * @param string $tvaDesignation
     *
     * @return StkTva
     */
    public function setTvaDesignation($tvaDesignation)
    {
        $this->tvaDesignation = $tvaDesignation;

        return $this;
    }

    /**
     * Get tvaDesignation
     *
     * @return string
     */
    public function getTvaDesignation()
    {
        return $this->tvaDesignation;
    }

    /**
     * Set tvaCode
     *
     * @param integer $tvaCode
     *
     * @return StkTva
     */
    public function setTvaCode($tvaCode)
    {
        $this->tvaCode = $tvaCode;

        return $this;
    }
}
