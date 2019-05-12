<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkTypeFournisseur
 *
 * @ORM\Table(name="stk_type_fournisseur")
 * @ORM\Entity
 */
class StkTypeFournisseur
{
    /**
     * @var integer
     *
     * @ORM\Column(name="typfrs_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $typfrsCode;

    /**
     * @var string
     *
     * @ORM\Column(name="typfrs_designation", type="string", length=150, nullable=true)
     */
    private $typfrsDesignation;



    /**
     * Get typfrsCode
     *
     * @return integer
     */
    public function getTypfrsCode()
    {
        return $this->typfrsCode;
    }

    /**
     * Set typfrsDesignation
     *
     * @param string $typfrsDesignation
     *
     * @return StkTypeFournisseur
     */
    public function setTypfrsDesignation($typfrsDesignation)
    {
        $this->typfrsDesignation = $typfrsDesignation;

        return $this;
    }

    /**
     * Get typfrsDesignation
     *
     * @return string
     */
    public function getTypfrsDesignation()
    {
        return $this->typfrsDesignation;
    }
}
