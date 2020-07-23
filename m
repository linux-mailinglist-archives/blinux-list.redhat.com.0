Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 89B5B22B8E2
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jul 2020 23:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595540852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gRZx+pKLmnX6+eN0ZnolP6Or08SgRCXqRwdbBKWS3uk=;
	b=hPabWPc05qCFxDtUFIr2mGE90vKk1whFyc9iT06YXFSy5frgPkVzMBeGFz8Yao5Wqbr3E0
	T+Y3Se8AH2Ij4U1N11Z91mRszmkfMT5ajDs3b9/B2vphJsJdVQQVco77mVdb2hHNeckkBH
	tyVFUY2EdD6ICjL3L5MBKNykupOI/Tc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-knOK0KH4Ncal5NRclY9Hrg-1; Thu, 23 Jul 2020 17:47:30 -0400
X-MC-Unique: knOK0KH4Ncal5NRclY9Hrg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66CDF80BCA4;
	Thu, 23 Jul 2020 21:47:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B025737DD;
	Thu, 23 Jul 2020 21:47:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 451A81809554;
	Thu, 23 Jul 2020 21:47:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06NLhHwj031289 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Jul 2020 17:43:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 014D0202B16D; Thu, 23 Jul 2020 21:43:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1567202B16C
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 21:43:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A38F78007C8
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 21:43:14 +0000 (UTC)
Received: from sonic302-22.consmr.mail.ne1.yahoo.com
	(sonic302-22.consmr.mail.ne1.yahoo.com [66.163.186.148]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-391-XoO3L7ZYONaI7XQh-PlvIQ-1;
	Thu, 23 Jul 2020 17:43:12 -0400
X-MC-Unique: XoO3L7ZYONaI7XQh-PlvIQ-1
X-YMail-OSG: IcbTrmoVM1mlOl1g1FGSHk8VAFM3dapQTh79QwWOQGXzRvsSh.ZAo_VCrubg.es
	pp.uUz5nwtkxzK.25gKFRSd_0jT9Bg37z.BnV3x2fo_jDFdw1KaNNbbkuzOMX_v9fQgzFGLoxJuW
	f0kXd2s8t_rSenVIThgHNuUudzxsuS7QgcJSNeF8tcdFFfHzX_jhGUVxeFfiSOpx2z_HlruqCOD.
	1XSGq0QSMG7buu_PXIgqAau7OxTXzOu.uYbavCCrQlxe3hD6jcTliRQfKbSf5uoknLCz8NhKAaJl
	7KX.W2ZOwNq23toPz5onL9vzMEIJu8Lgvzil8d7lGObVm41DDhGUh3OPUGcb6dqQB49sqy.MpCK5
	o8yPSUFkRFEEnHzmphszt6IU7pWCH_PnoSHjojjfV22rsfliJq2pgATGvGsWKty4HJ96NKt9se9F
	yWSis2oIpffcf9tSrhWoV.3_E3Al.AhOsOH3xpd8cVjJOKyUvdlBjgg8EuJVp3Zg8.jj6jlKCa3w
	aU_XelwkGb2uBXWYDDL4OiwjCNHkkq.xmP3TTPyVzuMYhvNqdTR31GglJA033s5UpFk7YGXpXB4p
	yZj5rsbia9nXeCC3EqNI7gL8I7Q9s2zBfQZrzbxYJpYpepocYKPY6rG_BEJBTEPpXZftBi3wCLRT
	fgoVPQOOdCkt_cHiOYxXYLmgHsWo9JkTaPvP6MInDzrXmKKfwDzaxMSD_.TPUMuVR0jphLSIljkZ
	NCy_0Wz9Hk5Z25Yf._Mtrye5eShqeAlCdt2TaL7rf4YxT_LHOI8_bn1Lwp5VDAHfv4NiEozrWYUK
	p48pLBol1svjyEAgxldXeMw6HZSdKgeuPml.cVg_q9JSwYbHCT_3gy6muvnXjQBBDn.O0mk71gCl
	V5fuAE.eboq1x.ZuSwudCc53gFcelxeguUS.Twcy2q2ksk8z6wnhDQ70_vEnwsG1HYEBsx9FwiHU
	vgGHdstkj0zwirF3_3BXWB4QflEEaCKt2CFCh4JZ9nNgHuU66NX.kGTqs7R33ZT7n7LMinVjHCQg
	FNaEKIVXgwf8.iyFRnLamAY5EYK667AoMLR78bl42WtYvne.SGAQep.226Lna8q4gZwVw9oF8KvC
	RYLXSupzRF1BeMhvDGqR2cQURJVYlXP2LUArhZY_Bgf68clOT65zkautJw9Fd2nReFy0DpLMQgxQ
	JRqtOI3TKY8UaCt7O_hhoTznitOsN5nd5nW64nbYCRtIHMYUa.P6ZqW9gnB0BpGofAu8wa04MY4F
	e01h5FgXamfu8H988RcGwW259vlOSnkPRHK179K4_A5luargx.aiEzNyTZHkWkZfGBJbBLYQ906o
	PMb0MVN3rAfDMVw_sdC5N61C0ZyjBR13K0VoTffsBjnvZaLvgM.4qVB6ah3oBKzuYTYRemNbIb3s
	Uvc0.
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.ne1.yahoo.com with HTTP;
	Thu, 23 Jul 2020 21:43:11 +0000
Received: by smtp410.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 913c83e042c2c5be8cfcf4b693c0f327; 
	Thu, 23 Jul 2020 21:43:07 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
In-Reply-To: <20200723165930.GB2593@rednote.net>
Subject: RE: installing speakup on RHEL 7/8
Date: Thu, 23 Jul 2020 14:43:06 -0700
Message-ID: <00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
MIME-Version: 1.0
Content-Language: en-us
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScgG9pUF+pcpRU2A=
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Thanks again Janina, this is definitely good info.  So, speakup is moving
into the main trunk soon?  That's definitely good news!!

The irony of this story is, what we are talking about here, *IS* the second
small machine 

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Thursday, July 23, 2020 10:00 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8

The dirty little secret is that the U.S. Government gave Redhat a pass under
508 back around 2002 when the the then new Sec. 508 regulations where newly
in force.

So, with their pass they happily stepped away. While they did indeed
participate in our National Science Foundation sponsored conference on Linux
and desktop accessibility, they were far more interested in desktop than
console accessibility all along after 2002.

It may be time to revisit that 18-year old decision, but that won't likely
help you in the short run.

Best advice I can concot is to get a second small machine up and ssh in to
the RHEL system. Not a great solution, I know.

PS: I'm unaware whether Redhat has named an accessibility officer or not.
However, Redhat is now owned by IBM who definitely does have accessibility
people. Shaking their cage may be the better way to approach this--still a
longer term strategy, but they do need to do something when Speakup leaves
staging, so maybe not so very long term after all.

hth.

Janina

Linux for blind general discussion writes:
> 
> Thanks Janina for the info, I wonder if anyone we can ask inside Red 
> hat to shed some light on this topic, as I am unable to find any 
> contact info for their accessibility team.
> 
> I imagine I can't be the only one out there who is trying to use 
> speakup with RHEL, or am I?
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> 
> On Behalf Of Linux for blind general discussion
> Sent: Saturday, July 18, 2020 4:07 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: installing speakup on RHEL 7/8
> 
> When he was still alive, Bill Acker routinely built Fedora kernels 
> that included Speakup, both before and after Speakup became part of
staging.
> I know for a fact that Bill tried, and never succeeded at building 
> Speakup into RHEL. Now Bill's been gone for a few years, but I've no 
> reason to believe the environment has suddenly become Speakup friendly,
sorry to say.
> 
> No, I don't recall what the block was/were.
> 
> I know that's not what you wanted to hear, but it's the best answer I 
> can provide and I don't believe you're going to find very much different
info.
> I'll be happy to be proven wrong, of course.
> 
> It'll be interesting to see what RHEL does when Speakup finally 
> becomes a first class kernel citizen. If I understand the situation 
> correctly, that should come fairly soon.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> >  
> > 
> > Hi there -
> > 
> >  
> > 
> > I am getting a workstation at work that will be running RHEL 7 or 8.  
> > From what I understand, speakup is not a package in yum, but it is 
> > now part of the kernel staging tree.
> > 
> >  
> > 
> > Does anyone have instructions on how to get speakup installed and 
> > running on RHEL 7 or 8 using software speech?
> > 
> >  
> > 
> > Any help appreciated, thank you very much in advance
> > 
> >  
> > 
> > --David
> > 
> >  
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> --
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
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

