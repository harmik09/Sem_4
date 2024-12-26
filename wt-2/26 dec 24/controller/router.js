const express=require('express');

const router=express.Router();

testMiddleWare=(req,res,next)=>{
    console.log('Test Middleware');
    next();
}

router.use('/',testMiddleWare)

router.get('/',(req,res)=>{
    res.send('Hello World');
})

module.exports=router