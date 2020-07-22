Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 679EA229EA5
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 19:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595439637;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uZhwdFHwaA8q7LBdi/s448ik5NJihaYg7jmpOqP/vQ8=;
	b=hVIZKZ8HHLc9RStZIAx0P0eddQO3rqynzG2nmWYh1B3r88D+lvsRYpoAwmuwrhaxm6KXNH
	9GQFddwfmz0ASIPTT8z71jhpx3jyGjODQksCu4rj5oOXT8/rYl6xenRX+NmnWZ7IVLiEnr
	FxWEdiMd+L7qdn1pEyOvPgUe0lVvXTU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-jy4SCefJOdetYqq-a3TaAA-1; Wed, 22 Jul 2020 13:40:32 -0400
X-MC-Unique: jy4SCefJOdetYqq-a3TaAA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A30B8015FB;
	Wed, 22 Jul 2020 17:40:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08C4471D04;
	Wed, 22 Jul 2020 17:40:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37B6B1809547;
	Wed, 22 Jul 2020 17:40:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06MHZ4Vl029972 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 22 Jul 2020 13:35:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0B9A2FED33; Wed, 22 Jul 2020 17:35:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07545FED21
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 17:35:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2892B8007A4
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 17:35:01 +0000 (UTC)
Received: from sonic306-21.consmr.mail.ne1.yahoo.com
	(sonic306-21.consmr.mail.ne1.yahoo.com [66.163.189.83]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-83-ci0R0PWRMIm1wVkhPHeijg-1;
	Wed, 22 Jul 2020 13:34:58 -0400
X-MC-Unique: ci0R0PWRMIm1wVkhPHeijg-1
X-YMail-OSG: 43bx2JUVM1mUHHCia_blJunTkRG0LL6PFm1Er.b08et6rObiDeYzp0jwWfI.kXG
	9yluZfakd8Q34YkOSa65hn7Py4ZTH53WF98qwy1Rb4OB1oGuLpTnieHeBb0.wbOjNzNT0YyBOejy
	AiQNh47rT_OFVHDGFp_Mql6MRKB3z_e0ahCFZsgzMtT5AXce_Pa03zB2Vygv7zFKVfFCbywlyIrX
	jzc85SO7On7X9jWeJZOaTc6aQBAZNwGZW2HB0ZilP7koKY7nTwiYGWLEtjKYrqRU5oilhkQDuh8.
	m8Tk872XmwnOyyfP5fuoZHPrGcek.mivbLeGZOBlLgIUvremFu9lZQcE6HoOQKa4JuUAy8D6oyGI
	eregt4FpMaZi8GmLZeUSmkAd4EJn7Wvgm4chcLdW5OE.M7cA.3Ce8dAJ4m_lMxeguAyi7sl6LNHP
	5.MoGi94Ii.I1t1vHqlQA4Wz_Md6ryO5RdDECn7wgLHJHfJrreqE_9L7B7oKB5xj_0OH8HDjaaf.
	Ac9vqX4PN7.kjFsydqo6Pvaz3ORQOCSFeNBzDfS51xK5iliryNt2NJh0ecUaaf2sMS1NrUG750hH
	6DCece7tVTeB2LP_OvE2DzG0zv8x_odZ58Wk8rwrk8FcNTVDDsK8DMPfnHe_TTF.wIN.vudpG0lS
	CfKtVdfevu7Sl3V0qNcu.Aic.oJnq6fCwOxexiF13dZuF6LMPFghou9GWt9OUKQEKzpqjreU87Gr
	TJmfe0cbtvrzv8bt61KT.5hVmPVPRoc3lylhfwlg37SHru9umaud4uEub4VEtUblp796.ecAAPk6
	DTF6.tA9VGPX93yd62aTlCb3vYYQi6tPxsRi1Q2cgCbqg3U8L3grVnbaci3AV2TzoMY2O4WOTIqO
	z1a7RlpmVvAyLacVjjjITIdqrM6Q6AD0s29LH_r_o0K_kRi_WsOZLYXztIaOkLOQNeAVVVaU96p8
	vMDrmeT.qBxVcUA9aOFlRcRxWCWkhsBScYwGjKamoaWvtkgXmNmSt_BqlHO4E_dVEqZjxiLMkHOs
	.rzDL1C4Z.g7iNn0xXH39A1IKHWJxJRK2MA1x6ci_J80u8f8_sB1dNctcbtZh1zofld82sTcdLt9
	iCISqEOn1RLoByOk72lXy93eBA4PTtJ7l88DbIxDJSdCCCSK05F6cQMV43fqA5BEpyXVV_Aqr9G8
	I_O7osVgfVDTtq4kSgH11sUyKVUYKzI9EO1YxWapQeFuPsl4GhRnuxsi_fbWf0Mt6qjozsNH3Lqo
	gZug4F88djCMrNIRbU6GLee2U4zrtXqFVzVi3K.Kt3NaZoRTfXCEwgpQ2xpjFrUQL5mkL0OcUj.x
	PGovxsCYlXqePfJ67tVpNUHJOVRhl8IwpvN4hHw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 22 Jul 2020 17:34:57 +0000
Received: by smtp421.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 574df9904458917db48c4acf8087d814; 
	Wed, 22 Jul 2020 17:34:55 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>	<015301d65fa8$16604280$4320c780$@yahoo.com>	<005c01d65fb7$4cb802f0$e62808d0$@gmail.com>	<01a001d65fb9$d8e51a90$8aaf4fb0$@yahoo.com>	<CAO2sX30v8J32H9fQ-Ouxqy3fnBBBHO=-3wV3tEnd+XoJSznAvg@mail.gmail.com>	<01d201d65fc9$276abc60$76403520$@yahoo.com>
	<20200722.020032.256.35@[192.168.1.130]>
In-Reply-To: <20200722.020032.256.35@[192.168.1.130]>
Subject: RE: installing speakup on RHEL 7/8
Date: Wed, 22 Jul 2020 10:34:54 -0700
Message-ID: <002201d6604e$6a153a60$3e3faf20$@yahoo.com>
MIME-Version: 1.0
Content-Language: en-us
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScgHkpUN3AWcyaOoCk/nA7gIuTL7PAXCAdbOlinTzYA==
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


The only reason they would let me do speakup is because it is in the staging
tree, nothing outside of yum is allowed

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Tuesday, July 21, 2020 7:01 PM
To: blinux-list@redhat.com
Subject: RE: installing speakup on RHEL 7/8

I'd check into something like Fenrir. Might do what you want, unless you
need that low level access for some reason.

Rob

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: <blinux-list@redhat.com>
Date: Tue, 21 Jul 2020 18:40:59 -0700
Subject: RE: installing speakup on RHEL 7/8

> 
> Yes we are prepared to rebuild the kernel but if the code is excluded 
> from the staging tree then it's going to be a problem
> 
> I have enquired into the possibilities of using a different distro, 
> and I am not going to say it will not happen, but the chance is 
> extremely slim at this point.  Unless I can prove that we can't get 
> speakup to run on RHEL unfortunately that is not an option.
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> 
> On Behalf Of Linux for blind general discussion
> Sent: Tuesday, July 21, 2020 5:27 PM
> To: blinux-list@redhat.com
> Subject: Re: installing speakup on RHEL 7/8
> 
> The Kernel is pretty much a black box from my perspective, but as I 
> understand it, Speakup is a Kernel module, each distro is free to 
> decide which kernel modules to include in their default kernel, and 
> that due to REL being an extremely conservative distro, they exclude 
> pretty much everything in the staging tree, which includes Speakup.
> 
> I could be wrong, but I suspect that in order to use speakup on a REL 
> system, one would have to compile speakup and any other part of the 
> accessibility stack that directly relies on it, if not recompile the 
> whole kernel.
> 
> If switching to a different distro that does include speakup in its 
> default kernel isn't an option, one might have better luck getting a 
> userland screen reader like Fenrir up and running instead.
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

