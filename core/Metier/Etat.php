<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Etat
 *
 * @ORM\Table(name="etat")
 * @ORM\Entity
 */
class Etat
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idETAT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idetat;

    /**
     * @var string
     *
     * @ORM\Column(name="ETATnom", type="string", length=45, nullable=true)
     */
    private $etatnom;



    /**
     * Get idetat
     *
     * @return integer
     */
    public function getIdetat()
    {
        return $this->idetat;
    }

    /**
     * Set etatnom
     *
     * @param string $etatnom
     *
     * @return Etat
     */
    public function setEtatnom($etatnom)
    {
        $this->etatnom = $etatnom;

        return $this;
    }

    /**
     * Get etatnom
     *
     * @return string
     */
    public function getEtatnom()
    {
        return $this->etatnom;
    }
}
