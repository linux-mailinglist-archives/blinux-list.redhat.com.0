Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E157F29D
	for <lists+blinux-list@lfdr.de>; Sun, 24 Jul 2022 04:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658628081;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Z8kFnqFT2jYb2cHOVcIem4FxbgO4w9gXY37zMi3Gqs=;
	b=OHmc/06cXEnR3PBmdk67EZm51TKafYsyH7tXx3N3AvjKohSibh0WZr9dpww2yta9jSof+G
	lalkZLe1VM47/EDiwWrFLutJxucC2BxEHtijAFkvtmnOSeXaLOX5krx9iFat6Qp2ivFVY0
	/aax+PBkFLlEWIo0J8tPm8WdV62kNbw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-tara-GiZPxmHFwp4OTVqWQ-1; Sat, 23 Jul 2022 22:01:18 -0400
X-MC-Unique: tara-GiZPxmHFwp4OTVqWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E906C803520;
	Sun, 24 Jul 2022 02:01:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 98EAF40C141D;
	Sun, 24 Jul 2022 02:01:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0FB5B1945D88;
	Sun, 24 Jul 2022 02:01:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 23 Jul 2022 15:55:59 -1000
To: blinux-list@redhat.com
Subject: Re: A question about how to install Lennix as a second operating
 system on a modern Dell laptop?
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
 <mailman.35751.1658510592.111205.blinux-list@redhat.com>
 <mailman.36108.1658511328.111208.blinux-list@redhat.com>
 <mailman.35873.1658512716.111210.blinux-list@redhat.com>
 <mailman.35612.1658516884.111207.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.35612.1658516884.111207.blinux-list@redhat.com>
Message-ID: <mailman.36193.1658628067.111203.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> Good afternoon everyone, I am wondering is there a way for blind person to install any version of Lennix on a modern Dell laptop without cited assistance?
> 
> The big caveat here is that there is a way to do it in such a manner that the main operating system in this case Windows 11 will not be disturbed? Does anyone have any good suggestions for how to do this? I do have a Ubuntu disk image sitting on my hard drive. I believe it is the current version of this Lennix distribution.
> 
> Sincerely Maurice mines.
 
Hi Maurice,

To install Linux alongside an existing windows system, you'll need to
1. Shrink the main Windows partition to create space for linux
2. Create and format partitions for linux
3. Install Linux
4. Install a bootloader that can boot both Windows and Linux

You'll need to do step 1 from Windows. The Ubuntu installer
will take care of steps 2, 3 and probably 4.
It would be helpful to have a live ISO with speech
on a USB drive to boot if you every have trouble 
booting your linux partition.  

If found this expanation of how to enable speech in the installer[1]

 Debian is the basis for many other Linux distributions,
 including Ubuntu. It is available in both graphical and
 command-line editions. There are a lot of images available,
 so getting the right one can be somewhat confusing. If you
 wish to have an easily installable version, be sure to grab
 the live image. If you prefer to do things manually, grab
 the network install image. To enable accessibility and the
 Orca screen reader on the graphical image, press and hold
 down the ALT and Command keys, then press S. To enable
 accessibility if you downloaded the network install image,
 press S at the boot screen of the image and press Enter.
 After the image boots, you should hear speech. Follow the
 prompts from there.

Perhaps others with recent experience will have more to add.

Joel

1.  https://opensource.com/life/15/8/accessibility-linux-blind-disabled


-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

