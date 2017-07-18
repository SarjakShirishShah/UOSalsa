package com.uosalsa.configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.uosalsa")
public class AppConfig extends WebMvcConfigurerAdapter{
	
	
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");

		return viewResolver;
	}
	
	@Bean
	public MessageSource messageSource() {
	    ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
	    messageSource.setBasename("messages");
	    return messageSource;
	}
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");
        registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/resources/img/");
        registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/resources/css/");
        registry.addResourceHandler("/views/**").addResourceLocations("/WEB-INF/views/");
        registry.addResourceHandler("/fancybox/**").addResourceLocations("/WEB-INF/resources/fancyBox/");
        
        //registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/resources/img/homepage/");
        //registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/WEB-INF/resources/webjars/");
    }
	
	/*@Bean
	public JavaMailSenderImpl javaMailSenderImpl() {
	    JavaMailSenderImpl mailSenderImpl = new JavaMailSenderImpl();
	    mailSenderImpl.setHost("smtp.gmail.com");
	    mailSenderImpl.setPort(587);
	    mailSenderImpl.setUsername("sarjak.s.shah@gmail.com");
	    mailSenderImpl.setPassword("9898756121");
	    
	    Properties javaMailProperties = new Properties();
	    javaMailProperties.setProperty("mail.smtp.auth", "true");
	    javaMailProperties.setProperty("mail.smtp.starttls.enable", "true");
	    
	    mailSenderImpl.setJavaMailProperties(javaMailProperties);
	    
	    //mailSenderImpl.setSession(session());
	    return mailSenderImpl;
	}*/

    
}

