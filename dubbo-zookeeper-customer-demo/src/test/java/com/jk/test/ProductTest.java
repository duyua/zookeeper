package com.jk.test;

import com.jk.service.IIndentService;
import com.jk.service.IProductService;
import org.activiti.engine.impl.test.PvmTestCase;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import sun.jvmstat.perfdata.monitor.PerfStringMonitor;

public class ProductTest {
    public static void main(String[] args) {
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring-dubbo-consumer.xml");
        IIndentService indentService = (IIndentService) ac.getBean("indentService");
        String ss=indentService.indentlist();
        System.out.println(ss);

    }

}
