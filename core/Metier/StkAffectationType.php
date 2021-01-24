<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkAffectationType
 *
 * @ORM\Table(name="stk_affectation_type")
 * @ORM\Entity
 */
class StkAffectationType
{
    /**
     * @var integer
     *
     * @ORM\Column(name="afftype_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $afftypeCode;

    /**
     * @var string
     *
     * @ORM\Column(name="afftype_designation", type="string", length=100, nullable=true)
     */
    private $afftypeDesignation;



    /**
     * Get afftypeCode
     *
     * @return integer
     */
    public function getAfftypeCode()
    {
        return $this->afftypeCode;
    }

    /**
     * Set afftypeDesignation
     *
     * @param string $afftypeDesignation
     *
     * @return StkAffectationType
     */
    public function setAfftypeDesignation($afftypeDesignation)
    {
        $this->afftypeDesignation = $afftypeDesignation;

        return $this;
    }

    /**
     * Get afftypeDesignation
     *
     * @return string
     */
    public function getAfftypeDesignation()
    {
        return $this->afftypeDesignation;
    }
}
