Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 552B83FFC52
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 10:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630659084;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7XnwjkprLyM3PYs6A1x9t73GeIZJ3V/OnnDVO9bIciU=;
	b=ayZBVY01bOeGSRIyLDaP1M2VZk4bbcWiGafcAVecjDeVAUmo6bgwC+l1Z+LXEdNJ6q9qm8
	imXUkO4/ylJKsAKRqDFGqhL6UYye91cHOCnzO3Lb4Tr/2URWg8N/JCBjlJbHWKQI/nfEw0
	1LSFZ67SoFP7Pi5YM3F5rzPgZf8F5KQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-F3xiwCX_NYiZOiRUUydzow-1; Fri, 03 Sep 2021 04:51:23 -0400
X-MC-Unique: F3xiwCX_NYiZOiRUUydzow-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E98AB107ACC7;
	Fri,  3 Sep 2021 08:51:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBEA912D4A;
	Fri,  3 Sep 2021 08:51:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9AFE144A5B;
	Fri,  3 Sep 2021 08:51:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1838ovdt032700 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 04:50:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D8A2E203663F; Fri,  3 Sep 2021 08:50:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D310C20BB91B
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 08:50:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB2421066681
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 08:50:54 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-541-uBgjlsBdMp63joAtDwn04A-1;
	Fri, 03 Sep 2021 04:50:52 -0400
X-MC-Unique: uBgjlsBdMp63joAtDwn04A-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.133] ([87.172.182.239]) by mail.gmx.net (mrgmx005
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1M6Db0-1mJu211hQe-006fhg
	for <blinux-list@redhat.com>; Fri, 03 Sep 2021 10:45:49 +0200
Subject: Re: https://blindcomputing.org/ status
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
Message-ID: <75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
Date: Fri, 3 Sep 2021 10:45:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
X-Provags-ID: V03:K1:wXN7cCCpUln1p27c5bhdqahZd8CIN/VBrt1F87kK7dTu6jkuP58
	VV6c82wgO7IM/yo8o/EUZk6+EtB6vn0jkg8LEE7i5Hejms3r2dKJiOo/fBWhlYvoSEGMHVl
	JMp6lee3/CRWoJzsoysqz+aruk6jdaVYlce2dZRQjpaSfrVomQXz+ivz0qoUUskU4Zo75Fr
	vUA5rEwHHMN8zKiV8BATA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n/YDai5ucmA=:07YUBSdyHurqHqt/VKWAch
	r4PP1wBYwoqjiCuhOUElvcLqAbZhz9K0MAutAOiTMhljlyI6G4jW21FTPa20L+nYMqP//+R9j
	yn8jQw0SvsbYRtl24rruJRwdbH30/rghruwnjiFbFYTk86B3qXqS4A+FMN5Bef9so8M33A+VI
	wSGivhFTT5PdKkOo7GfWEofsr6KfqwZKPrydhNsRGrGYM6avJ2oVRAtIs/5CpeFncSn9uP3On
	gbjqN3O62vviOGFZsSznKBilnEovGG6B5cGYm1XxCFHTq5aNjuiZEoop8HoYhCJlXT1T3xUfL
	bG51SifgFI1Kqlq3hbfYAFyBPq/Kt1/TpObOeNkOg9hsuxD/L4rWSHQFEFXz9hnTi0oXpHjUm
	L83W1mCSeb3PxWzQc4ysqPubEXPLWTGBaNxkrSmGTHhbWrdFICLmPTcEor8iutrssZTXmdzv2
	yGRBWeI3NVuRkrPt7sq1fE1T0WPGxgQqTCYdzItMKkXizH2BKRSE1bCals6kUsBRUDIDupmWa
	xe7lK7ZAhmDnra5ydMK2mMNEvM9zV5zQ1T+hkpo0n0HUYxkYoQhDyeM9sCczo6GtmiElIMQ1D
	/hBeWerFLdoksvOzqIC6+YWqBYThECToxIVI5cFcMpSYLCdTByNp2iT++prW1qzw4lJO43CYK
	Ou7pCzxAuO2AUzcJGbMAQ6BqSy1ucbeoX5MeTwiFWcgAS6kdCIpU7dPb5jw7hugJOyTkMuybb
	Q3w0xi4v1cvedyoiiszxry5EyMTlxfOsA6O2lYy0iSSiaSM6RQHxKuQPjunTx5zE0EnU6z5PU
	lAA3ROdcXkofVhvOVtPUmiZuSHUHK9GYtnX27AKR4YT438tWcy248ZuzzNqHliJtqnzSHGXI8
	5tIRDDjzlFPDvPE6cUaWMdxd2kjDeHcMYNGe8VcGYdgpLVAC3TbzcGnqqTzzKd3myotHIuF5D
	Y00veBc1my9DoAFdrDF8aJ/FSRNItGvQNJQcF9dVFbTEnNJK7S4LMLHgsiHAuYeBC+9jZHFnc
	KBwWiWdw1sTDtBXLaxGwNh6R/G3qrGAXnQAcpZ++xbfxKEOvSRzdxmh6iV0zPc/ZPngE4+Ny4
	4ELbKbGBKznj2ZZ2EETLVnOdOk2N3Z04TCkf88fAbhS3Ra1w1690Wph9A==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1838ovdt032700
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

For problems, suggestions etc. with blindcomputing.org you may contact the maintainer at github.
https://github.com/blind-computing

HTH,
guenter

Am 03.09.21 um 05:55 schrieb Linux for blind general discussion:
> A blog with no content,
> A comments section not possible to use,
> the comments management company is where you end up after giving that site
> an email address and that site is directed at getting more business for
> the comments manager site and you don't get back to the original website
> to leave any comments.
> All in all, a very dodgey operation so far as I can figure.
> This was after using firefox to log into the site and no it wasn't worth
> the firefox login or the extra time it took to find all of this out.


--
.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

