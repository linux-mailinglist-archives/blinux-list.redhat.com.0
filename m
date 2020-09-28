Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 228BF27B048
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 16:50:14 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601304613;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jhqGS9R+ywGYiYWjHxYJmdxyQ7cqWennrQ+zrz7/szk=;
	b=b1yS2rsnAMRanGAgeF7g8+ftCiFE4i0dpjv5EBJGODG2z2rrzxu3P9t0g7xUL+093Zl5xe
	VrbZLkLB/GXIGWudZhT00WB+mx9iyIIadcXhcx3c8OwPwWlITRubRtn9JFh0ZDLGMEAYpR
	Cnt0SdQM8qp4w3IpBb4RySlOFxpU1rw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-i6mytaSBPV6QQCZFLPso2Q-1; Mon, 28 Sep 2020 10:50:11 -0400
X-MC-Unique: i6mytaSBPV6QQCZFLPso2Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 992F9186DD2E;
	Mon, 28 Sep 2020 14:50:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47E7E5D9CA;
	Mon, 28 Sep 2020 14:50:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02A5618408A5;
	Mon, 28 Sep 2020 14:50:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SEo25a009536 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 10:50:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 933BB2023451; Mon, 28 Sep 2020 14:50:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C5292023598
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:50:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F3273811E83
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:49:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-502-Ugrt0tk2P7yjZ8PNwdk3QA-1; Mon, 28 Sep 2020 10:49:57 -0400
X-MC-Unique: Ugrt0tk2P7yjZ8PNwdk3QA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C0QR9289Cz1j5r
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 10:49:57 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C0QR913G7zcbc; Mon, 28 Sep 2020 10:49:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C0QR90fdGzcbW
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 10:49:57 -0400 (EDT)
Date: Mon, 28 Sep 2020 10:49:56 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: gentoo!
In-Reply-To: <5545aa4f-68da-b49a-6456-23387aca2caf@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2009281046441.11282@panix1.panix.com>
References: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
	<5545aa4f-68da-b49a-6456-23387aca2caf@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks!  That made the system go silent for a little while and I now
have several more subdirectories in /mnt/gentoo that were not present
earlier.  That J has to be upper-case and it's possible that instruction
on the complete amd64 handbook on the gentoo wiki needs fixing.  If I'm
not mistaken, the j on that handbook was lower-case.

On Mon, 28 Sep 2020, Linux for blind general discussion wrote:

> Date: Mon, 28 Sep 2020 10:44:01
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: gentoo!
>
> Try something like
>
> tar xfJ <filename>.tar.xz
>
> Hope it helps.
>
> ~Kyle
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

