Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF78313BFE
	for <lists+blinux-list@lfdr.de>; Mon,  8 Feb 2021 19:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612807207;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9L2SlGgfAcHpYmmeTAodGlQANeJ8fqS58t6I4NHG1J4=;
	b=Lb2NA4QLv3INcajuddDoSNqpm5cyn4Io4F5u5ZC0cFJAjyw85jYe4NObny1H3s7Qvkbek6
	P1x7nsM9HS/9+FkHl2U4cQKN+YOnoul2WREIqmEUhE3a76bOQDg+WkwIlxNV4jBClVvw6R
	9xZloQ7W66gEG9BuiPOQvaGRp1DKDxE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-oNjtfegeMRGi-DmBIvTgSg-1; Mon, 08 Feb 2021 13:00:05 -0500
X-MC-Unique: oNjtfegeMRGi-DmBIvTgSg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09CBE100CCCC;
	Mon,  8 Feb 2021 18:00:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE8F95C260;
	Mon,  8 Feb 2021 17:59:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6AA7B57DF9;
	Mon,  8 Feb 2021 17:59:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 118HxlSn032701 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Feb 2021 12:59:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 41105110F721; Mon,  8 Feb 2021 17:59:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C8D6110F724
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 17:59:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24A8A858F17
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 17:59:44 +0000 (UTC)
Received: from fgw22-4.mail.saunalahti.fi (fgw22-4.mail.saunalahti.fi
	[62.142.5.109]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-457-91QkTvzBO-qUzcf9D4f9VQ-1; Mon, 08 Feb 2021 12:59:40 -0500
X-MC-Unique: 91QkTvzBO-qUzcf9D4f9VQ-1
Received: from nkl.local (91-157-221-250.elisa-laajakaista.fi [91.157.221.250])
	by fgw22.mail.saunalahti.fi (Halon) with SMTP
	id 43a4d1f6-6a37-11eb-88cb-005056bdf889;
	Mon, 08 Feb 2021 19:58:35 +0200 (EET)
Received: (qmail 12682 invoked from network); 8 Feb 2021 17:58:35 -0000
Received: from localhost (127.0.0.1)
	by nkl.local with SMTP; 8 Feb 2021 17:58:35 -0000
Date: Mon, 8 Feb 2021 19:58:35 +0200 (EET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I Increase the Volume of a PC-Speaker?
In-Reply-To: <b23c86b2-8246-e432-43b-80c1856c51e@hubert-humphrey.com>
Message-ID: <alpine.DEB.2.21.2102081953080.3146@nkl.local>
References: <b23c86b2-8246-e432-43b-80c1856c51e@hubert-humphrey.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi

Basically there is no way to adjust the harddware beeper volume unless it 
is  routed thru the sound card.

Original PC beeper is a hardware timer and it's output is directed to 
build-in speaker.   Nowadays there is  not always separate speaker but the 
signal is fed to sound card mixer.






-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Linux for blind general discussion kirjoitti
> Subject: Can I Increase the Volume of a PC-Speaker?
> Date: Mon, 8 Feb 2021 17:34:01
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Blinux Discussion List <blinux-list@redhat.com>
> 
> Hi All: I am in Debian SID, want to make my PC speaker louder. When I get 
> new-mail in alpine, I can hardly hear the beep, unlike on a laptop where it 
> plays in the sound-card. No amount of searching turns up how or if I can 
> ajust this. Sure there is a "beep" command, also setterm where I can ajust a 
> length-and-frequency of a beep, but no volume. Can any1 please inform if 
> there are ways of doing this? But no I really wouldn't want to re-direct to 
> an actual sound-card. Thanks so much in advance.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

