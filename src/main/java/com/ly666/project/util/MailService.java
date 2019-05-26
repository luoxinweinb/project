package com.ly666.project.util;import lombok.extern.slf4j.Slf4j;import org.springframework.beans.factory.annotation.Value;import org.springframework.mail.javamail.JavaMailSender;import org.springframework.mail.javamail.MimeMessageHelper;import org.springframework.stereotype.Service;import javax.mail.internet.MimeMessage;/** * @author ：luoyi * @date ：Created in 2019/5/9 21:08 * @desc : {发送邮件工具类} */@Slf4j@Servicepublic class MailService {	@Value("${spring.mail.username}")	private String from;	private final JavaMailSender mailSender;	public MailService(final JavaMailSender mailSender) {		this.mailSender = mailSender;	}	/**	 * 发送邮件	 * @param to   发送目标	 * @param title  标题	 * @param content  内容	 * @throws Exception	 */	public void sendHtmlMail(String to, String title, String content) throws Exception{		MimeMessage mimeMessage = mailSender.createMimeMessage();		MimeMessageHelper helper  = new MimeMessageHelper(mimeMessage,true);		helper.setFrom(from);    //设置发送者		helper.setTo(to);		helper.setSubject(title);		helper.setText(content,true);		mailSender.send(mimeMessage);	}}