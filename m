Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7437D9BE75
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 17:22:39 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4279A4E93D;
	Sat, 24 Aug 2019 15:22:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E7E750305;
	Sat, 24 Aug 2019 15:22:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2897818089C8;
	Sat, 24 Aug 2019 15:22:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OFMWCc008572 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 11:22:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0D62D6012A; Sat, 24 Aug 2019 15:22:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07D9B600C4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 15:22:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 190C459465
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 15:22:28 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46G27l3xvmz1qBY
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 11:22:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46G27l2KKvzcbR; Sat, 24 Aug 2019 11:22:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46G27l20XszcbQ
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 11:22:27 -0400 (EDT)
Date: Sat, 24 Aug 2019 11:22:27 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Slint package error
In-Reply-To: <b7cfca6c-6cfa-4efd-8e9a-7c9649412efa@GMAIL.COM>
Message-ID: <alpine.NEB.2.21.1908241122070.23422@panix1.panix.com>
References: <b7cfca6c-6cfa-4efd-8e9a-7c9649412efa@GMAIL.COM>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.39]); Sat, 24 Aug 2019 15:22:28 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Sat, 24 Aug 2019 15:22:28 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Sat, 24 Aug 2019 15:22:38 +0000 (UTC)

Validate iso before burning.
On Sat, 24 Aug 2019, Linux for blind general
discussion wrote:

> Date: Sat, 24 Aug 2019 11:00:21
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Slint package error
>
> I'll detail what I do to run into this.
>
>
> 1. I download a fresh ISO from slint.fr and the 'get and install Slint'
> section, which takes me o the Slint UK one, and I get the .iso from there
>
>
> 2. I create the disk.raw file with size 30GB
>
>
> 3. I do sudo sh qemo (else qemu won't work)
>
> 4. Boot up and choose auto partition
>
>
> 5. Get to the p[art where it asks to install packages, going with default
> options all the way.
>
>
> Every package it tries to install, has the 'there was a fatal error' message
> with it. I've tried a fresh download, the md5 verifies the ISO as correct.
>
> Any ideas? Does the auto partition break things?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
