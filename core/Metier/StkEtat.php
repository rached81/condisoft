<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkEtat
 *
 * @ORM\Table(name="stk_etat")
 * @ORM\Entity
 */
class StkEtat
{
    /**
     * @var integer
     *
     * @ORM\Column(name="etat_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $etatCode;

    /**
     * @var string
     *
     * @ORM\Column(name="etat_libelle", type="string", length=100, nullable=true)
     */
    private $etatLibelle;



    /**
     * Get etatCode
     *
     * @return integer
     */
    public function getEtatCode()
    {
        return $this->etatCode;
    }

    /**
     * Set etatLibelle
     *
     * @param string $etatLibelle
     *
     * @return StkEtat
     */
    public function setEtatLibelle($etatLibelle)
    {
        $this->etatLibelle = $etatLibelle;

        return $this;
    }

    /**
     * Get etatLibelle
     *
     * @return string
     */
    public function getEtatLibelle()
    {
        return $this->etatLibelle;
    }
}
