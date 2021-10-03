Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4DE154200E3
	for <lists+blinux-list@lfdr.de>; Sun,  3 Oct 2021 10:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633250558;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SUzjEqjjNpY0qpOPH/2TiTj2V7HDJ1JSn76piSnGu80=;
	b=cn3qROW6Y5vHX3ii9Mi0sYsCaeWS8e0xlHhLd8BjY4WIld5pR8WbDDLN3mW5WCZpOxSlxE
	OUzoKDQmexi4WJwKRZ5134ck8MJqc9suiyrxvz6ZJILKYDxDfM/3ET65jdF2W4n41vQ6SE
	MVYhjrlGC6fUlfLPDfCTs8wW9mpbWOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-uJw9xHVANeyftRYW-l2GQA-1; Sun, 03 Oct 2021 04:42:37 -0400
X-MC-Unique: uJw9xHVANeyftRYW-l2GQA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FB2B18414A1;
	Sun,  3 Oct 2021 08:42:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFC2810013C1;
	Sun,  3 Oct 2021 08:42:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F91B180598A;
	Sun,  3 Oct 2021 08:42:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1938gCBN010096 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Oct 2021 04:42:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 630BD1004C6C; Sun,  3 Oct 2021 08:42:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E440111142F
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 08:42:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B525D899EC0
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 08:42:09 +0000 (UTC)
Received: from fgw22-4.mail.saunalahti.fi (fgw22-4.mail.saunalahti.fi
	[62.142.5.109]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-551-lP8NcmikMSCuPz52w0wTNA-1; Sun, 03 Oct 2021 04:42:07 -0400
X-MC-Unique: lP8NcmikMSCuPz52w0wTNA-1
Received: from nkl.local (81-197-11-229.elisa-laajakaista.fi [81.197.11.229])
	by fgw22.mail.saunalahti.fi (Halon) with SMTP
	id a499b5b8-2425-11ec-ae1c-005056bdf889;
	Sun, 03 Oct 2021 11:41:03 +0300 (EEST)
Received: (qmail 30995 invoked from network); 3 Oct 2021 08:41:03 -0000
Received: from localhost (127.0.0.1)
	by nkl.local with SMTP; 3 Oct 2021 08:41:03 -0000
Date: Sun, 3 Oct 2021 11:41:03 +0300 (EEST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Crawling/downloading a website to test permissions.
In-Reply-To: <CAO2sX301FwZ+Zs3nfktkAKdeA=W-08eb7E54Twh-mRjt8Hp9tg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2110031139110.11318@nkl.local>
References: <CAO2sX301FwZ+Zs3nfktkAKdeA=W-08eb7E54Twh-mRjt8Hp9tg@mail.gmail.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello

There is at least the wget with it's recursive features. On the  other 
hand if you have access to the web server logs you can look there any 
access 
errors.



-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Linux for blind general discussion kirjoitti
> Subject: Crawling/downloading a website to test permissions.
> Date: Sun, 3 Oct 2021 08:47:26
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> 
> Okay, so a few minutes ago, I realized at least one folder on my
> website that's supposed to be readable by visitors isn't... and that
> got me wondering.
>
> Is there a command I can run from the Linux terminal with my domain as
> an arguement and it'll start at the homepage, go through all the links
> and embedded images, and either generate a report of the content's
> that's accessible or download everything preserving full paths that I
> can then compare to an offline copy of the site or an ls -R thereof to
> ensure everthing that's supposed to be reachable through normal
> browsing is without having to manually follow every link?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

