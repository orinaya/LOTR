<?php

class QuoteController extends MainController{
    public function renderQuote(){
        require '../app/Models/QuoteModel.php';
        $quoteModel = new QuoteModel();
        
        $this-> quotes = $quoteModel->getQuotes();
        $this-> render();
    }
}