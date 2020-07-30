Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8E65923376E
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jul 2020 19:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596129164;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6w3IkTej4jR1OfiXc/jx8tJqkV6JVX1VIMDrrVzcvAc=;
	b=MVdDHkIAD8dwfKRbsHyfPVEuF1SbsbrNlTYjdAM7QGZGtmLGxZVd9OHGfpnHj01GJH8Pkf
	oOmG6oEVtiWlU5EcK4GbzElRaKUpYokfHJ4GA1WFvEFsMaSxt4m1/p1q+oal1jKdpRQwn4
	BOO/e9qOQmWoBOT+0ym4cbR3SKxF4NI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-MVNN4--iMI68ve9uoj33bQ-1; Thu, 30 Jul 2020 13:12:42 -0400
X-MC-Unique: MVNN4--iMI68ve9uoj33bQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0314800487;
	Thu, 30 Jul 2020 17:12:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4355C712D9;
	Thu, 30 Jul 2020 17:12:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F347895A72;
	Thu, 30 Jul 2020 17:12:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06UHCCpv012198 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Jul 2020 13:12:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D67D7FED47; Thu, 30 Jul 2020 17:12:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D163BFED35
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 17:12:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B1D8800580
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 17:12:07 +0000 (UTC)
Received: from sonic310-24.consmr.mail.ne1.yahoo.com
	(sonic310-24.consmr.mail.ne1.yahoo.com [66.163.186.205]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-319-N7jp7fbwPNud4pionsR7Tw-1;
	Thu, 30 Jul 2020 13:12:03 -0400
X-MC-Unique: N7jp7fbwPNud4pionsR7Tw-1
X-YMail-OSG: 9PKtLlUVM1l6YvrID2cXbYtqeUcTFqw0v75r86c3r30sAWvFGHKR8_K4YUhcpvQ
	.4js5I7GvhXPJ0OAOaTC8_zOFcQVLKIbSASarrFqdBu2KGzBNl5IrBjzHtljCvLk7Ljd4z4jqaNB
	7kj6Hyay.vHuRz6qLzjghM2Vx4O3BhDhwN7WcZA2NV01PVnyLvgRoijYpYYKaIjf1rYYBty.LsSY
	cm_viqvWXVsS0wvuMaYvlpRJRjaouZU1USbHw2Drk_HD45eW.7vL0HAZKTmT8F2g5KAqrQKW0v06
	PEj.i2Y5qjDKj6PEhNjzW6OEpjWbP8BgjQOqTWNaigVHkDoW6QnEP0Baf6LvD1OtHKH49HYlgYJy
	Sxa8_mGAG_NlI9BBIKE6AwdVzzWBVcmKVbQAGIFweLePjTp9BLFhLC99RqxDYatD4SXkaRVOWzuA
	ytPzGbaCAXXADnOKlL7SRbCiutm7_Vb3RDs2OoTW4xwUZNOkIeSkagbSJiOOByaRfxet5gjwiCVI
	5YxNGV1G54JFjiXc3n2Will3r72PD2vG.PuiHhtZSOW323LBoV7M5Go2F04uwHB2QYrh5RCXnsAq
	VUqkAaqEnt6EWY4TkbN5HgY_2vr2mN0jYtj2oMuytFu.VlU6P.zbWZLc9gZ4K46.TaFKUgTgPhCD
	mvCAICnkqAwJweIF5hnNhrWNnN83rjnaaDIHilFkRzxl8gDNNb73UBZPSHEOFlYnVbUrBqRQjQSm
	ohak8GAy7ialPSuih5otISqfy83yU8DX643rT3dkO9t9x8o0L7hFEXhMbLtnQ6VzoqhAk7t3B3gg
	U9h0F8JHtsbRwNfRyHg9SFmUXZVXTDGYB6tXXddgBr4D_JMQ.coLkDKNpK9foc_T7940mSwOedx1
	wZvrMIurhI9kyzJKkEabw575Cq8zqIH1ByuB7vxm5XjxrFyX_vlZdMCdFdmfY4FpaSmW0xaVirik
	Y0vdKeobLWI6moq8AVIm9bDXepP36PGdlAxHrMYHVzRRGv_jSK8B4xX.2MCKjVVSZ6IoRx5x4Whj
	9ZcAL6Hc8CcxzeVo2zW1Iwrmh2MQR8.z16DX7MHGJP1t6uOlLn5CNIdN.2mv7HQu14RURLsJoL_d
	RyVbeFJpT9.IRag9fzURtJvrSBWiitLLcGAwzySvyJLf9NYOYnCizDtLyoB1UKMkvcbMZIPyTnML
	.NSZZnMpu5xYQ7HXFvtw0_5mSOsWOLA4fSxYKo78gKrII5h8QdQI7MBql4Bo.ly5yNjCiiMcL7v5
	rARS2y._.6mlFdBVkOZmUmOuGF..Al0QKoSs12.6eV.__B0ukdlSqxueo578ldRybQ8wHAyYE0UC
	0O3HuNMnwSbuCwyRcm4GpVBNr3u3AK4xLVUE-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.ne1.yahoo.com with HTTP;
	Thu, 30 Jul 2020 17:12:02 +0000
Received: by smtp411.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 7e9c145f1fbc91b812d6b6cf8f7f3a13; 
	Thu, 30 Jul 2020 17:11:57 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>	<015301d65fa8$16604280$4320c780$@yahoo.com>	<20200723165930.GB2593@rednote.net>	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>	<daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>	<20200726163624.y7loskvf3jg4nw65@function>	<54181004-f8ea-344a-29e7-ab437c03f22f@slint.fr>	<20200729154715.66njgipo7l3jxbdv@function>
	<20200730134209.GA2791@rednote.net>
In-Reply-To: <20200730134209.GA2791@rednote.net>
Subject: RE: installing speakup on RHEL 7/8
Date: Thu, 30 Jul 2020 10:11:55 -0700
Message-ID: <026701d66694$87db2f90$97918eb0$@yahoo.com>
MIME-Version: 1.0
Content-Language: en-us
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScgG9pUF+AiUAoMkBggCcIQJx0bWRAoJ/rp4CncORxAFfrQMEpXA+udA=
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


This is definitely great news!!  So what's next from here?

As you said Janina it's probably not going to help me in the short run, but
at least we know it's coming [I hope]

I have contacted IBM Accessibility and awaiting their response, let's hope
someone over there knows something about speakup and RHEL

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Thursday, July 30, 2020 6:42 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8

Indeed, but this conversation started over the question of Speakup in a RHEL
kernel.

So, now that we've established the technical objections are all cleared, it
will be interesting whether Speakup is promoted to main or not. If it goes
into main, RHEL would seemingly need to include it at long last. Or am I
wrong about that?

I'm watching to see whether we still have political opposition as we have in
the past, by my memory of events. One would hope not, but it's deeds that
count.

Best,

Janina

Linux for blind general discussion writes:
> Linux for blind general discussion, le mer. 29 juil. 2020 17:24:15 +0200,
a ecrit:
> > Not that it matters much for Slackware and derivatives as speakup 
> > drivers have been provided in Slackware since version 8.0 released 
> > on 2001-06-27, in kernel version 2.2.19...
> 
> Yes, Debian as well. Just one thing: remember to enable 
> CONFIG_ACCESSIBILITY if it's not already.
> 
> Samuel
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

