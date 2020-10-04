Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id AA549282A3B
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 12:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601808051;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wIE18LWwEZc+uICMI4m3Ay0Vdq4KT2LhO9YbfVgxJQQ=;
	b=AhhBPSXc0AjjKGrZpQWh9q7Z8Xjm1GIxE6dHv2WnsbYHWKCPyaMADLaLiMoYfVa6TLNHGW
	AsGF340/Sf23e3nmrNr5rHtAYFpblxMdIqntnMx2qXVcvKC8EjscG0qSdn1425t7NP4RMD
	zeQWAZ/uNF3nbkOghjtg5ugwn5IjQqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-ygtpP1VqMsavNyQC0SRa-w-1; Sun, 04 Oct 2020 06:40:49 -0400
X-MC-Unique: ygtpP1VqMsavNyQC0SRa-w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 199991005504;
	Sun,  4 Oct 2020 10:40:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B679D10013D7;
	Sun,  4 Oct 2020 10:40:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07AB444A47;
	Sun,  4 Oct 2020 10:40:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094Aeb9E016937 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 06:40:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8ECEA100296B; Sun,  4 Oct 2020 10:40:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A7F210031E6
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 10:40:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29E17803913
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 10:40:35 +0000 (UTC)
Received: from fgw20-4.mail.saunalahti.fi (fgw20-4.mail.saunalahti.fi
	[62.142.5.107]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-506-lFd_aa52NBSRkgGyDv3j3Q-1; Sun, 04 Oct 2020 06:40:32 -0400
X-MC-Unique: lFd_aa52NBSRkgGyDv3j3Q-1
Received: from nkl.local (91-157-220-37.elisa-laajakaista.fi [91.157.220.37])
	by fgw20.mail.saunalahti.fi (Halon) with SMTP
	id e0ba1029-062d-11eb-ba23-005056bd6ce9;
	Sun, 04 Oct 2020 13:39:28 +0300 (EEST)
Received: (qmail 8706 invoked from network); 4 Oct 2020 10:39:27 -0000
Received: from localhost (127.0.0.1)
	by nkl.local with SMTP; 4 Oct 2020 10:39:27 -0000
Date: Sun, 4 Oct 2020 13:39:27 +0300 (EEST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
Message-ID: <alpine.DEB.2.21.2010041335290.9748@nkl.local>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello

Braille terminal at the settings makes the had cusor to follow the arrow 
keys so it is easier to find where the focus is. Tab also moves to the 
next link or field.  Try to enable the braille terminal to see if it hels.



-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Linux for blind general discussion kirjoitti
> Subject: speakup and links browser
> Date: Sun, 4 Oct 2020 12:59:52
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> 
> I tried downloading a file from a website using links and couldn't
> download the file.
> Using speakup I was able to cursor onto the desired file or that's what
> speakup told me.
> However when I tried to download that file I got offered an image file
> from another cursor location on the screen I did not want.
> I think this is more of a links problem than a speakup problem and am
> wondering if it's possible to configure links in some way to clear this
> problem.
> I don't know what the braille setting would have bought me since I have no
> braille display.
> As things stand, I had more success with wget and a bash script I wrote.
> For that reason I'm going to share this one with the list.
> The script could probably be improved by adding a site variable to the
> download variable for wget to process but I haven't done that yet.
>
> #!/usr/bin/env bash
> # file: s3.sh - gentoo stage3 download script
> download="stage3-amd64-20201001T120249Z.tar.xz"
> wget -bc https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/$download
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

