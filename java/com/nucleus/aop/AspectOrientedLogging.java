package com.nucleus.aop;

import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AspectOrientedLogging {

	public final static Logger logger=Logger.getLogger(com.nucleus.aop.AspectOrientedLogging.class);
 
	Object obj=null;
	
	
	
	
	
	/*This method executes the aspect oriented concept for logger,where we only need to mention the places where we need advice
	 * ,around is the strongest advice which wrap s around the method*/
	@Around("execution(* com.nucleus.dao.CustomerDaoImpl.*(..))")
	public Object advice1(ProceedingJoinPoint proceedingJoinPoint)
	{
		
		
		logger.info("Method name:"+proceedingJoinPoint.getSignature().getName()+" Started Exceution....");
		try {
			obj=proceedingJoinPoint.proceed();
		
			
		} catch (Throwable e) {
		
			logger.error(e.getMessage());
			
		}
		
		logger.info("Method name:"+proceedingJoinPoint.getSignature().getName()+" End Exceution....");
		
		return obj;
	}
	
	
	
}
