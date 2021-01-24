<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Menu
 *
 * @ORM\Table(name="menu")
 * @ORM\Entity
 */
class Menu
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idMENU", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idmenu;

    /**
     * @var string
     *
     * @ORM\Column(name="MENUnom", type="string", length=45, nullable=true)
     */
    private $menunom;

    /**
     * @var integer
     *
     * @ORM\Column(name="MENUparent", type="integer", nullable=true)
     */
    private $menuparent;

    /**
     * @var string
     *
     * @ORM\Column(name="MENUmod", type="string", length=45, nullable=true)
     */
    private $menumod;

    /**
     * @var string
     *
     * @ORM\Column(name="MENUicon", type="string", length=100, nullable=false)
     */
    private $menuicon;

    /**
     * @var integer
     *
     * @ORM\Column(name="MENUmnseq", type="integer", nullable=true)
     */
    private $menumnseq;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="MENUdcr", type="date", nullable=true)
     */
    private $menudcr;



    /**
     * Get idmenu
     *
     * @return integer
     */
    public function getIdmenu()
    {
        return $this->idmenu;
    }

    /**
     * Set menunom
     *
     * @param string $menunom
     *
     * @return Menu
     */
    public function setMenunom($menunom)
    {
        $this->menunom = $menunom;

        return $this;
    }

    /**
     * Get menunom
     *
     * @return string
     */
    public function getMenunom()
    {
        return $this->menunom;
    }

    /**
     * Set menuparent
     *
     * @param integer $menuparent
     *
     * @return Menu
     */
    public function setMenuparent($menuparent)
    {
        $this->menuparent = $menuparent;

        return $this;
    }

    /**
     * Get menuparent
     *
     * @return integer
     */
    public function getMenuparent()
    {
        return $this->menuparent;
    }

    /**
     * Set menumod
     *
     * @param string $menumod
     *
     * @return Menu
     */
    public function setMenumod($menumod)
    {
        $this->menumod = $menumod;

        return $this;
    }

    /**
     * Get menumod
     *
     * @return string
     */
    public function getMenumod()
    {
        return $this->menumod;
    }

    /**
     * Set menuicon
     *
     * @param string $menuicon
     *
     * @return Menu
     */
    public function setMenuicon($menuicon)
    {
        $this->menuicon = $menuicon;

        return $this;
    }

    /**
     * Get menuicon
     *
     * @return string
     */
    public function getMenuicon()
    {
        return $this->menuicon;
    }

    /**
     * Set menumnseq
     *
     * @param integer $menumnseq
     *
     * @return Menu
     */
    public function setMenumnseq($menumnseq)
    {
        $this->menumnseq = $menumnseq;

        return $this;
    }

    /**
     * Get menumnseq
     *
     * @return integer
     */
    public function getMenumnseq()
    {
        return $this->menumnseq;
    }

    /**
     * Set menudcr
     *
     * @param \DateTime $menudcr
     *
     * @return Menu
     */
    public function setMenudcr($menudcr)
    {
        $this->menudcr = $menudcr;

        return $this;
    }

    /**
     * Get menudcr
     *
     * @return \DateTime
     */
    public function getMenudcr()
    {
        return $this->menudcr;
    }
}
