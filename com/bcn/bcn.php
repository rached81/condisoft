<?php 
            
                                        class bcn extends controler {

                                                  public function index() {

                                                      view::setContext(get_class($this));

                                                      view::addDefaultsCss();

                                                      view::addDefaultJs();

                                                      view::render('tpl');

                                                  } 
                                        }

                                ?>