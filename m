Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C38F73922F7
	for <lists+blinux-list@lfdr.de>; Thu, 27 May 2021 00:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622069714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uFmd+p3dFtU2taI1xgLSZXUWP4950O1JUtg2uTc3cKo=;
	b=aCFRNUWtuq/H2/q0HbkQR+oV8pehjJyFayguBMtcCgLgvnVs1MCRHG9oQCYlYm/8wefUHM
	wg6hWvEMYG+pLkdGmT81k5SyYRNJjjL2VTFPNPRY18dyaAE9eYJ1yH2Lk2ceTu93RxBCwv
	hjiLOiG/JE1utsnBcigxf4WqiHtv1ZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-Szf1X6coOLuFmHiXgBU09A-1; Wed, 26 May 2021 18:55:12 -0400
X-MC-Unique: Szf1X6coOLuFmHiXgBU09A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE351501E0;
	Wed, 26 May 2021 22:55:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E0205044A;
	Wed, 26 May 2021 22:55:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E550A1800BB8;
	Wed, 26 May 2021 22:55:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14QMsoL5019574 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 18:54:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 82B9210FAA3; Wed, 26 May 2021 22:54:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D9B810FAAF
	for <blinux-list@redhat.com>; Wed, 26 May 2021 22:54:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E6FA80D0E2
	for <blinux-list@redhat.com>; Wed, 26 May 2021 22:54:47 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-351-ieOWzgzgP5-EI-xp3k9aIQ-1;
	Wed, 26 May 2021 18:54:44 -0400
X-MC-Unique: ieOWzgzgP5-EI-xp3k9aIQ-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CCBFBA39F7
	for <blinux-list@redhat.com>; Wed, 26 May 2021 23:54:25 +0200 (CEST)
Subject: Re: Command-line computer vision.
To: blinux-list@redhat.com
References: <CAO2sX31_Cu7zANccjwnX-BdLELSggRLO30ekiuydR65egve-nw@mail.gmail.com>
Message-ID: <cc0ed2d8-27f9-9a51-e160-76b8ebbf9a62@slint.fr>
Date: Thu, 27 May 2021 00:54:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31_Cu7zANccjwnX-BdLELSggRLO30ekiuydR65egve-nw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

only command line tool I have found is gmic: https://gmic.eu/

It can probably do what you want, but it's a very complex tool.

All I know is I could build it and run it on my Slint, but I don't know 
how to use it. You may ask questions on #pixls.us on irc.freenode.net

Didier
--
Didier Spaier
Slint maintainer

On 26/05/2021 23:47, Linux for blind general discussion wrote:
> Okay, I'm aware of Tesseract and cuneiform for doing OCR on image
> files, but I was wondering if anyone on this list knew of any
> command-line utilities that might be able to tell me useful things
> about the contents of images that contain no text. Even something as
> simple as printing the image's palette in descending order of
> abundance or recognition of basic geometric shapes would be useful I
> think.
> 
> My primary use case is giving meaningful filenames to digital photos
> where I know what photos are in the set, but not which photo is which,
> and primarily, the photos are of crafts I've made and taken with the
> camera my portable mediaplayer/talking eReader uses for OCRing print
> documents(the device gives the photos very long, numeric filenames
> that might be timestamps, but even that isn't of much use if I take
> more than one photo in a round of blind photography and transferring
> photos to my Desktop, especially since the device's clock resets to
> midnight the moringing of January 1, 2014 whenever the battery is
> pulled out).
> 
> I've tried googling and searching the package lists in Aptitude, but
> all I've managed to find are libaries for writing computer vision code
> into reobotics projects or cloud-based complex object AI stuff.
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

