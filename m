Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E64DF228CC3
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 01:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595374960;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gmrGqfuAbur/ZKyGymeO+dkM5BajCRG059fqOfIJ0wc=;
	b=a7GqN5AUd8w+Gzgw8KX3H4aobM7jt/6SyuR+O0EO55sndQoegWUcgAD3aZqY/sU6sWFgqY
	mYineZPLZhmbPgL9AaGZO2y5Qp36Bl7Z4MvcsEPrDVDJ7ToUMUQovDnzcd1M223zbt5XkY
	aSSJk7Muo0bb0mZ4RjEQEjeMOm7shFw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-406-yb4gKYABPZKrJV0IqHHz7Q-1; Tue, 21 Jul 2020 19:42:33 -0400
X-MC-Unique: yb4gKYABPZKrJV0IqHHz7Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EB6D80183C;
	Tue, 21 Jul 2020 23:42:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2BF272696;
	Tue, 21 Jul 2020 23:42:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C72C9730D4;
	Tue, 21 Jul 2020 23:42:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LNgM2u026459 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 19:42:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F414E103F30B; Tue, 21 Jul 2020 23:42:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFCD7103F304
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 23:42:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2F571012449
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 23:42:19 +0000 (UTC)
Received: from sonic317-33.consmr.mail.ne1.yahoo.com
	(sonic317-33.consmr.mail.ne1.yahoo.com [66.163.184.44]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-361-lankFGQ_O9aELn6MOEKDhA-1;
	Tue, 21 Jul 2020 19:42:17 -0400
X-MC-Unique: lankFGQ_O9aELn6MOEKDhA-1
X-YMail-OSG: 1zWbUgkVM1m9Fpel5Rwbx9eXskPEyBm.F2cnbDWIrP4abrX17ZLkJonqki.kdub
	gM_l64bbTnIJc1MmVjHRqPandAZXpoP9TN931mDPLBk1p3qHAXHStIG_PXlY75l_vfVa5QAnKl24
	Kp.dVOmwXA9BGfeXSNuEJ.9m34rcFnGGLPb8uT666Ya_AcQtKiL98ycqK8XWAH.EXgS5Dp8WWgPq
	OTtQQPfGXv4ATwCzjYZHjYRWjTDk0czeD7osmz0yU2S9j4ZCVLJsQfmF7Yfm3Ot_PgaHGgFEvyg_
	dWe5cbcpxj1u3LJHRgNeDcSLeZ42.5IK0PBFWEOu1j82ZliU2sAUA0.kZv5PRQU15UAaNwnPMSow
	uvR37TESAKYF31qMz245R4OEYaFBTTq2dvbFizjJ3x1EnTA.2BAzQh0cun6vsjdUYrABG3VEbEii
	m7rRvTklhfLM2STmQ57.4xgJ3xuk9wHkMqC5s5MFkJM1Dp9.RlpxX3rMU6CtP9hX_zPFMeE_D.O0
	bwH5yjAdb.Hqw5d_S2HxABOPtBnp6K9dZgbPJJhKouT5Sy5eb42Op5w0hPHZz6hid6CZeihp2yyy
	dt7dXlWwjEg2bvmj9hPaXkFOeETKlt9bn.BSA9DZ7MEd1vbXxEQSrLDbW_cHB2YKVfPlNWCECNCS
	Zpo9YFjUNIYO0wH4tJvCNJTkOiUeoNcCc662PHuo6FvJ3rQ.sPYt_FQx0q8neNGls89Bbx6ZPMde
	uYGnKer4faS5NyKUnWgppe4c1bOABHED9pFXVHtVWOroVlgvmBD1qKLs_535MFwGW6esVXGtBxJC
	CJi6rw7.lPyPG8EbmcdM1A90uWiULRzfn_Dkwgn03nD8WxnRgG.UMQWVompsJYVQYki6uQCrohrx
	Xx1n2ZcX3HbpAFWToK5qCVFEzxbbvHb0hEAQdYsa4myWz.Tu9z3lyCJ4nqxsL5bkNe9Fu.90oTEU
	MOHt2IvqxzmniP6l40plAQoOHM40jZab9rP_xGKPcHZEkZtkl3i4CXzVOFyx4Yc1XzyMnGW22fGy
	1VSInJgMT1_1WzVcF8_tjLGkw3cs5nUKo_a1Y0Oo4Xd6bft8rKVxYduYuQxvYdpmoO9PbiR27nsn
	ArJx2w7ahGbtupo4p30srLKD3ZdS5Vt69yE7QJ7WrPHbodL.wE_WvBsD64_UC4vAu3qk8EfZZXvD
	uN9PStmO03GY_qmojDIduOms6gcObpj5QJC5gbKzn7F3QY3f3ejxdNYagcY7IyOefTAkjL4CuO8O
	iqgEpVZWAvmXo0l45fzEtMQARGSllX5Wl0IFS1ayZokpjh2ZYzkePtoMALMjvY_Yf0.Z4jePgnTJ
	nfwkunhUSbzZQXgLpgkwrlhUeUisMgQny0tPBlgPNxPqtAGtcx2M-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 21 Jul 2020 23:42:16 +0000
Received: by smtp412.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 9507130f1db0913e5a8aecc40cf74647; 
	Tue, 21 Jul 2020 23:42:12 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200721.220100.192.33@[192.168.1.130]>
In-Reply-To: <20200721.220100.192.33@[192.168.1.130]>
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 16:42:11 -0700
Message-ID: <019d01d65fb8$8f11d4e0$ad357ea0$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScgHxeTBUpcWyySA=
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


That's a good question, maybe that's why I can't find them?

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Tuesday, July 21, 2020 3:01 PM
To: blinux-list@redhat.com
Subject: RE: installing speakup on RHEL 7/8

Does Red Hat even have an A11y team? 

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: <blinux-list@redhat.com>
Date: Tue, 21 Jul 2020 14:44:17 -0700
Subject: RE: installing speakup on RHEL 7/8

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
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

