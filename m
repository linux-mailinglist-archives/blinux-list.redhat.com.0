Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 32189279237
	for <lists+blinux-list@lfdr.de>; Fri, 25 Sep 2020 22:36:15 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601066174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DVtjPZwSbviozLsrmrG3kW2/pCzu5q78jvM7bBDZ43c=;
	b=iejLwvJdJ+SyJkNfP07rH7sDG5iJoKB9LpxVyDPGTTtUSMNUQDDnQlCDwgsw/0AVVgkNft
	JQ/1t30B5acbtgzQYBqb67RkLpBJe2x1yJoDWSdUkbOhLHjdpbZYqaKcoKg5CV1c2Dbmju
	T/v90qlLS4d1KKEixhqDBE9AO5gB3Rk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-oqT6JGR0M5ig15D9I7FX_g-1; Fri, 25 Sep 2020 16:36:12 -0400
X-MC-Unique: oqT6JGR0M5ig15D9I7FX_g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71EA3186DD40;
	Fri, 25 Sep 2020 20:36:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D975F73692;
	Fri, 25 Sep 2020 20:36:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B9B051826D31;
	Fri, 25 Sep 2020 20:35:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08PKZmOL025529 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Sep 2020 16:35:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 261422018034; Fri, 25 Sep 2020 20:35:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20B8A2022794
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 20:35:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DF35800969
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 20:35:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-5-qXP4eCMHNpeGYdH4jZQ8xA-1; Fri, 25 Sep 2020 16:35:42 -0400
X-MC-Unique: qXP4eCMHNpeGYdH4jZQ8xA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BykFT4sVNzhNY;
	Fri, 25 Sep 2020 16:35:41 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BykFT2p7Rzcbc; Fri, 25 Sep 2020 16:35:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BykFT2B9WzcbV;
	Fri, 25 Sep 2020 16:35:41 -0400 (EDT)
Date: Fri, 25 Sep 2020 16:35:41 -0400
To: Glenn K0LNY <glennervin@cableone.net>, orca-list@gnome.org
Subject: Re: [orca-list] jenux status
In-Reply-To: <0b3401d69353$43db9140$7001a8c0@NUCPPYH>
Message-ID: <alpine.NEB.2.23.451.2009251630502.8733@panix1.panix.com>
References: <alpine.NEB.2.23.451.2009250454490.7003@panix1.panix.com>
	<0b3401d69353$43db9140$7001a8c0@NUCPPYH>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
Cc: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jenux has had bugs in its past and aside from those if the developer is
doing work on the scripts themselves that install jenux as you try to
 install jenux the download won't go perfectly.  So if that happens, try
again later and the install should work.  If installing linux rather
than android, for this version until a bug is fixed with the setup
screen run in post-install it's best to avoid the gnome footprint and go
for mate.  You can do command line, mate, or gnome installs with jenux
and you have the option for lux encryption with all installations of
jenux.

On Fri, 25 Sep 2020, Glenn K0LNY wrote:

> Date: Fri, 25 Sep 2020 11:48:07
> From: Glenn K0LNY <glennervin@cableone.net>
> To: Jude DaShiell <jdashiel@panix.com>, orca-list@gnome.org
> Cc: blinux-list@redhat.com
> Subject: Re: [orca-list] jenux status
>
> Can you refresh us on what Genux is?
> I recall I was interested at one time, but I don't recall why I could not
> get it going.
> And the message only gives download links.
> Thanks.
>
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: <orca-list@gnome.org>
> Cc: <blinux-list@redhat.com>
> Sent: Friday, September 25, 2020 3:55 AM
> Subject: [orca-list] jenux status
>
>
> A new iso is now available; to get it:
>
> mailto:dnl.nash@gmail.com
> wget -bc
> https://nashcentral.duckdns.org/projects/Jenux-2020.08.16-x86_64.iso.sha512
> wget -bc
> https://nashcentral.duckdns.org/projects/Jenux-2020.08.16-x86_64.iso
> sha512sum -c Jenux-2020.08.16-x86_64.iso.sha512
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

