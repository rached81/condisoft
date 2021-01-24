<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkCategorieArticle
 *
 * @ORM\Table(name="stk_categorie_article")
 * @ORM\Entity
 */
class StkCategorieArticle
{
    /**
     * @var integer
     *
     * @ORM\Column(name="catart_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $catartCode;

    /**
     * @var string
     *
     * @ORM\Column(name="catart_designation", type="string", length=100, nullable=true)
     */
    private $catartDesignation;



    /**
     * Get catartCode
     *
     * @return integer
     */
    public function getCatartCode()
    {
        return $this->catartCode;
    }

    /**
     * Set catartDesignation
     *
     * @param string $catartDesignation
     *
     * @return StkCategorieArticle
     */
    public function setCatartDesignation($catartDesignation)
    {
        $this->catartDesignation = $catartDesignation;

        return $this;
    }

    /**
     * Get catartDesignation
     *
     * @return string
     */
    public function getCatartDesignation()
    {
        return $this->catartDesignation;
    }
}
