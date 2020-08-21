Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id BE70C24E396
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 00:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598050001;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y4DeCfvm8b2I7tbIB/IKTlyfBozaSuF2Or3tLPGW7MM=;
	b=BfVA3ASyIFi3MbRQdLIpFSv+oxGItA7/mrKihtAWR6go9W/hqgROxEz9rJi1Of5iXlfonE
	CG8yqySntvdOZDzi9RvxxnDLbLvYPVzJ/as57rMANpYIKHwAWW3yJgC9JjfBMChg1XjgOf
	kZ9nRWsoCdhpIOrENAC/oZSzgt4HZRk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-u0Tcyke-OqOEmK2yCI91Mw-1; Fri, 21 Aug 2020 18:46:39 -0400
X-MC-Unique: u0Tcyke-OqOEmK2yCI91Mw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D4411074659;
	Fri, 21 Aug 2020 22:46:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6189A2C724;
	Fri, 21 Aug 2020 22:46:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 110291832FC5;
	Fri, 21 Aug 2020 22:46:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LMiY2X002525 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 18:44:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6435510769A; Fri, 21 Aug 2020 22:44:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 492C6F6435
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 22:44:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CC44811E93
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 22:44:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-42-j_grcwUrNj6p9C9lzINWJg-1; Fri, 21 Aug 2020 18:44:30 -0400
X-MC-Unique: j_grcwUrNj6p9C9lzINWJg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BYGmF5KYhzcHN
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 18:44:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BYGmF4k1kzcbY; Fri, 21 Aug 2020 18:44:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BYGmF4J9pzcbV
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 18:44:29 -0400 (EDT)
Date: Fri, 21 Aug 2020 18:44:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <alpine.DEB.2.11.2008212337110.12135@debian.work>
Message-ID: <alpine.NEB.2.23.451.2008211841370.29494@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
	<20200821.140441.108.39@[192.168.1.130]>
	<alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
	<alpine.DEB.2.11.2008212337110.12135@debian.work>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The working assumption behind within a reasonable time is that the
security team either has or finds a good fix for the vulnerabilities
exposed.  Microsoft which has way better funding than Debian has let
vulnerabilities continue for months in some cases.

On Sat, 22 Aug 2020, Linux for blind general discussion wrote:

> Date: Fri, 21 Aug 2020 17:10:21
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Accessible Distros for a beginner?
>
> On Fri, 21 Aug 2020, Linux for blind general discussion wrote:
>
> > Being way behind in lots of packages means security exposures galore.
> > Exim was hacked by the Russians already and ssh servers world-wide have
> > malware attacking them now too.
>
> This is why you subscribe to Debian security updates, which should be
> configured by default.
>
> >From their security page:
>
>    Debian takes security very seriously. We handle all security problems
> brought to our
>    attention and ensure that they are corrected within a reasonable timeframe.
> Many advisories
>    are coordinated with other free software vendors and are published the same
> day a
>    vulnerability is made public and we also have a Security Audit team that
> reviews the
>    archive looking for new or unfixed security bugs.
>
> Security fixes are provided for a year after the next stable version of Debian
> is released.  In practice, this tends to mean that a Debian release will get
> regular security fixes for three years.
>
> Following this, LTS security updates for certain architectures will be
> provided for an additional two years or so.
>
> You can get Debian security notices via email if you wish.
>
> For more information, see https://security.debian.org and
> https://wiki.debian.org/LTS
>
> Both Exim and SSh have had several security fixes applied since Debian Buster
> was released.
>
> If you are concerned about a specific vulnerability, you can use its CVE
> number and the resources at security.debian.org to see if these have been
> fixed in Debian.
>
> For Debian installations, you can also see which security updates have been
> applied by reading /usr/share/doc/<packagename>/changelog.debian.gz
>
> HTH,
> Geoff.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

