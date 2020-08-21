Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5359824C8F9
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 02:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597968486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tKgznGI0fc17wU1QNbeSB1KYaWas3j/2haXnFHlFUIY=;
	b=KTspGivexAf6h1b/Rt1sd9/gIlAeQnNbprPo14GlCQ2PXEDRC7+Ux+ro/sqJb0bOoij4s1
	Tn2ZSAlrTVTZfmUlrTI5E+cA/Oy1xJcBq0WG6ixg4ojpe4EF2X61J5ryxK3L5CtojcgRP8
	Sk+zfFqh3Q7emOR9tDp38iaiSNF+57U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-514-6nJ2dDayNMeBAiCGAgin7g-1; Thu, 20 Aug 2020 20:08:03 -0400
X-MC-Unique: 6nJ2dDayNMeBAiCGAgin7g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A84C1074649;
	Fri, 21 Aug 2020 00:07:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 881EF7E301;
	Fri, 21 Aug 2020 00:07:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D6F8E85CD;
	Fri, 21 Aug 2020 00:07:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07L07mte004819 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 20:07:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C908C2157F24; Fri, 21 Aug 2020 00:07:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C503C2157F23
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 00:07:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D037386C083
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 00:07:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-134-uZq74jLlOoGwj0D5YSm6nw-1; Thu, 20 Aug 2020 20:07:43 -0400
X-MC-Unique: uZq74jLlOoGwj0D5YSm6nw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BXhfl2Fw6z1ZY1
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 20:07:43 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BXhfl1FFBzcbY; Thu, 20 Aug 2020 20:07:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BXhfl0dWJzcbW
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 20:07:43 -0400 (EDT)
Date: Thu, 20 Aug 2020 20:07:42 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2008202007160.12040@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
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
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you tried:
git clone http://openblinux.de/repos/sbl
On Thu, 20 Aug 2020, Linux for
blind general discussion
wrote:

> Date: Thu, 20 Aug 2020 19:31:19
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Accessible Distros for a beginner?
>
> I remembered I had the following page bookmarked:
>
> http://www.openblinux.de/en/index.php?page=download
>
> Which seems to have the URL for a git repository for SBL.
>
> admittedly, I'm not sure this really helps much...
>
> Turns out that I do have a copy of some version of SBL's source
> sitting in my programming folder... skimming some of the files in the
> debian directory, it sounds like someone might have tried packaging
> versiong 3.3.something for Debian circa 2008 as some of the files in
> there mention dates around that time and there's what seems to be
> skeletons of the kind of metadata stored in /var/lib/dpkg/status for
> software installed on Debian-based systems and displayed by apt
> frontends such as aptitude.
>
> My system is running SBL 3.5.1+1knoppix1 or something like that and is
> based on Knoppix 8.5.x or 8.6.x while I think the latest version of
> Knoppix is 9.something, but only available with acertain issue of the
> German Linux Magazine.
>
> Considering that Knoppix is debian based and that I get the impression
> its a one man distro, I wonder if Klaus Knopper could provide any
> insight on how to build SBL for vanilla Debian and its other
> derivatives, but I have no idea how to contact the man.
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

