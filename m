Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id C9BDC228BA8
	for <lists+blinux-list@lfdr.de>; Tue, 21 Jul 2020 23:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595368197;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L94vZuLzw2H4IYiwp09h0lVn9UPnE3RsdrwSoq88i4o=;
	b=KndfgFNwPHQq1b7MXn0Lb0dw94EbLWRAaMkryA7ebiTifQEzaysv7Prh62+dNG7QWFM+1G
	67Oby+IeksSfCLmEjDWjFX6YgfJbWpZGqsaZ5N+IWncYp3Jvu+3gV9+ZE2TDD6Yc200kX+
	JJB6CEZx+8zu2Le7Z0BBRmEbCn5gGHY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-Alz0W2DJMFqiS5vJkS3DKg-1; Tue, 21 Jul 2020 17:49:53 -0400
X-MC-Unique: Alz0W2DJMFqiS5vJkS3DKg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21E18108E;
	Tue, 21 Jul 2020 21:49:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05D7C171EB;
	Tue, 21 Jul 2020 21:49:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF243730C4;
	Tue, 21 Jul 2020 21:49:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LLiPqV012212 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 17:44:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 61E52215671F; Tue, 21 Jul 2020 21:44:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 381F92156A4A
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 21:44:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06A6C86CB9F
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 21:44:23 +0000 (UTC)
Received: from sonic302-22.consmr.mail.ne1.yahoo.com
	(sonic302-22.consmr.mail.ne1.yahoo.com [66.163.186.148]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-355-jwRYhoIPO5avVz5yUprDnw-1;
	Tue, 21 Jul 2020 17:44:19 -0400
X-MC-Unique: jwRYhoIPO5avVz5yUprDnw-1
X-YMail-OSG: EjHZFFoVM1kUq9JxFyPs2Y1Zl4TgGGuNkYzpHjyZmT2gbGTKh1YzIlQbMtdmsR9
	Onunrd27.B.S5sHo5UFReL04F.pH4ofsH_N81w.stUcAVWMkSRx9aM9xrdki_Lg8LjKFcMVC_WMX
	9GP0OC_eKzmbwc7T2GfJOUuESvKckLKP7RsyAM_DASl.yqzNczGwF.j3QmSsoeQ2Dx_rYTgms07o
	yA0iElxlsxtzTIsYO.fDllzF99NcOnCL1.pDh.ylEdTcPyUfnWhZuNmKqKlmvtWWqEUR4QIxq115
	e7QgpHhdH9UhKG7qwAGpePonR5xGfEofNc66opsBnKBLpMugBGxycnKuI5YAYAY4P4E3bBpaWlG3
	oNmH6kXTbBXXrJiWV5qec2BaPAbVLbrLqXwOzRLC9uMe5z0wFPE1a9GijrbLgX6NQ4ipB1Qjd3hQ
	MsM9QUFikyMizD5kbIOv6wbOQgg0OiYlLZ1qBxnTNtRXGvV1tfh94hCp08sBzXuqm51PvT.o7MJS
	DaCKJHlOnE6Iu_IFuDMBWoCySU5qR2CDobZmHzLbhPhZknhh4yALU2XwFG3C1A_jXsjcJMO66n_5
	X2MgPVWqRctp0GQ9UXMEc_KO89TENWhh415jYMlEr4oHvZBaBJzGHBp3o5BFxAZKh2yAcKPOwj_M
	iL6QZQ.kac5ho7yNGwID6IGhyEYQX61mUWgXJIHn1RKkQLyOcqyP4OaqLfZNGL9pH3e7c3oik4fY
	2NyIMYbLUKyXB4aV7WfKcDg1TXJM808_mWnZXH6cdm2TRGt_5tr80zUXl9czhaMvLBDmM2Q4qYrg
	vcQ4hOLuvsGr_yMmEJp.gCPSXjMyKgGzvA6BkrfnQI3rTiVJgSCFISRJe7mXE40ywk8lHRsDNtav
	LkvgG5xWXsxaz23xPTHo3v692u4_NMOS1gFZ54IOieS8.GVVZ7O6nFRZZYUM2Hqx.Jx1zGryOuea
	KsqAMO0.Dr2OUtnzcCK1OoCUs1uS2xidq6X1MXrAUmj3eo8XEa05P1M_4pwIV22hMzvp0PwS2oWl
	UFCP3HSaYL.RuXvF12Kn7LrghzCEZw2TDCv2nmX6DREpevrbsvbZmlGOymG91XTd.QFE22F7PZdf
	LM9.32EuE38wV0m.DKtPtvlKQNbUSQ_0jzotT3KvVxnWcAg0IUNR8ihZPtiyAV_.LYuXrTgLoUrt
	qaaLE5N9GRHyB4nw_eaGmoq56zsmOv9iqVe87x3vAlUGBraX4TZNvobfq7Z1d3E4mNwuvu1j0RJD
	6RAj9h.cjgoAW2fhvai39aPAqdkDUaRL656pRljZse8RA9JbqG.tL7hbXev3LVD7ni0I2x33G8Hj
	zYO8j7ngh905u1ryXWGBowij2yAwypr_4Ez1lWG5ZphWI7.EFFh7iwYnAqeIpWOIs4dsDGA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 21 Jul 2020 21:44:18 +0000
Received: by smtp408.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 90022ed698f9d7d62542a926440f4af5; 
	Tue, 21 Jul 2020 21:44:17 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
In-Reply-To: <20200718110724.GA2593@rednote.net>
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 14:44:17 -0700
Message-ID: <015301d65fa8$16604280$4320c780$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQql5bnz4A==
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Thanks Janina for the info, I wonder if anyone we can ask inside Red hat to
shed some light on this topic, as I am unable to find any contact info for
their accessibility team.

I imagine I can't be the only one out there who is trying to use speakup
with RHEL, or am I?

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Saturday, July 18, 2020 4:07 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8

When he was still alive, Bill Acker routinely built Fedora kernels that
included Speakup, both before and after Speakup became part of staging.
I know for a fact that Bill tried, and never succeeded at building Speakup
into RHEL. Now Bill's been gone for a few years, but I've no reason to
believe the environment has suddenly become Speakup friendly, sorry to say.

No, I don't recall what the block was/were.

I know that's not what you wanted to hear, but it's the best answer I can
provide and I don't believe you're going to find very much different info.
I'll be happy to be proven wrong, of course.

It'll be interesting to see what RHEL does when Speakup finally becomes a
first class kernel citizen. If I understand the situation correctly, that
should come fairly soon.

Best,

Janina

Linux for blind general discussion writes:
>  
> 
> Hi there -
> 
>  
> 
> I am getting a workstation at work that will be running RHEL 7 or 8.  
> From what I understand, speakup is not a package in yum, but it is now 
> part of the kernel staging tree.
> 
>  
> 
> Does anyone have instructions on how to get speakup installed and 
> running on RHEL 7 or 8 using software speech?
> 
>  
> 
> Any help appreciated, thank you very much in advance
> 
>  
> 
> --David
> 
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

