<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkDevise
 *
 * @ORM\Table(name="stk_devise")
 * @ORM\Entity
 */
class StkDevise
{
    /**
     * @var integer
     *
     * @ORM\Column(name="devise_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $deviseCode;

    /**
     * @var string
     *
     * @ORM\Column(name="devise_libelle", type="string", length=100, nullable=true)
     */
    private $deviseLibelle;




    /**
     * Get deviseCode
     *
     * @return integer
     */
    public function getDeviseCode()
    {
        return $this->deviseCode;
    }

    /**
     * Set deviseLibelle
     *
     * @param string $deviseLibelle
     *
     * @return StkDevise
     */
    public function setDeviseLibelle($deviseLibelle)
    {
        $this->deviseLibelle = $deviseLibelle;

        return $this;
    }

    /**
     * Get deviseLibelle
     *
     * @return string
     */
    public function getDeviseLibelle()
    {
        return $this->deviseLibelle;
    }
}
