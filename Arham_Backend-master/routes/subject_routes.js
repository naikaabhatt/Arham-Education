var subject=require('../models/subject_model');
var express=require('express');
var router=express.Router();

router.get('/',function(req,res,next){
    subject.getAllSubject(function(err,rows){
        if(err)
        {
            res.json(err);
        }
        else
        {
            res.json(rows);
        }
    });
})

module.exports=router;

