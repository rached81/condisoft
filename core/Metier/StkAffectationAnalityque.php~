<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkAffectationAnalityque
 *
 * @ORM\Table(name="stk_affectation_analityque")
 * @ORM\Entity
 */
class StkAffectationAnalityque
{
    /**
     * @var integer
     *
     * @ORM\Column(name="affectation_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $affectationCode;

    /**
     * @var string
     *
     * @ORM\Column(name="affectation_designation", type="string", length=45, nullable=true)
     */
    private $affectationDesignation;

    /**
     * @var string
     *
     * @ORM\Column(name="affectation_type", type="string", length=45, nullable=true)
     */
    private $affectationType;



    /**
     * Get affectationCode
     *
     * @return integer
     */
    public function getAffectationCode()
    {
        return $this->affectationCode;
    }

    /**
     * Set affectationDesignation
     *
     * @param string $affectationDesignation
     *
     * @return StkAffectationAnalityque
     */
    public function setAffectationDesignation($affectationDesignation)
    {
        $this->affectationDesignation = $affectationDesignation;

        return $this;
    }

    /**
     * Get affectationDesignation
     *
     * @return string
     */
    public function getAffectationDesignation()
    {
        return $this->affectationDesignation;
    }

    /**
     * Set affectationType
     *
     * @param string $affectationType
     *
     * @return StkAffectationAnalityque
     */
    public function setAffectationType($affectationType)
    {
        $this->affectationType = $affectationType;

        return $this;
    }

    /**
     * Get affectationType
     *
     * @return string
     */
    public function getAffectationType()
    {
        return $this->affectationType;
    }
}
