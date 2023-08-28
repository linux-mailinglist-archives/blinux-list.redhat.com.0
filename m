Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DAC78B684
	for <lists+blinux-list@lfdr.de>; Mon, 28 Aug 2023 19:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693244072;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z4EKn13meezuhr9Y032sC1Zor9VTUqjA0ADhI0nyOqk=;
	b=MjaLlqJSI/+AaTkmQ623fS7NeT31YzSvBHMqx47V01CdfE0FJhGLDrSLl6sGnUsnPZIUee
	hqgNX3aF1/UquoCJUPF3qGWyVmYmC4KAuYvX2Xyzo1mNVBwey31bvCgF1LMYm/H4Ic1cRk
	uffzHcNOAjpXNTCOPykYH928cxHsNFU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-471-3q9zwDguO7u6HQxKWkKliA-1; Mon, 28 Aug 2023 13:34:31 -0400
X-MC-Unique: 3q9zwDguO7u6HQxKWkKliA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 568B4101A528;
	Mon, 28 Aug 2023 17:34:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D9142026D68;
	Mon, 28 Aug 2023 17:34:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF86119465B9;
	Mon, 28 Aug 2023 17:34:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.259.1693231912.1829978.blinux-list@redhat.com>
References: <mailman.259.1693231912.1829978.blinux-list@redhat.com>
Date: Mon, 28 Aug 2023 17:34:19 +0000
Subject: Re: knoppix start?
To: blinux-list@redhat.com
Message-ID: <mailman.301.1693244064.1829979.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Knoppix's boot process is an inaccessible blackbox, but best I can
tell from using it for years, that message, when it plays, plays after
the system is mostly booted, and if started in Adriane mode, you
should be hearing SBL talking at the Adriane main menu shortly after
that message plays. No idea if botting in desktop mode, though if the
system is silent after that message plays, it might be worth trying
alt+F2 and typing Orca into the run dialog that should come up if
you're at the desktop.

That said, when I used Knoppix and the discontinued releasing a CD
version that has Adriane as the default boot option, I got in the
habit of editing the iso to make Adriane the default... Sadly, the
process is rather convoluted thanks to the read-only nature of the
iso9660 filesystem, or at least, I never found a more straight forward
means of doing it...

The method I employed went as follows:
mount the .iso using the loopback device.
copy the contents of the ISO to a folder on your harddrive.
Make sure you have write permissions on the copied files
Edit a config file... sadly, I con't remember the exact filename, but
I think it was under the isolinux folder of the ISO's contents and
ended in .conf or .cfg... the line to be edited is near the top of the
file and you just have to change the line from reading default knoppix
to default adriane(or default adriane64 if you want to run with a
64-bit kernel).
Rebuild the ISO
Burn the ISo.

Also, I've only ever gotten this to work writing the rebuilt iso to a
DVD, I've yet to have success booting knoppix from a flash drive.

And while the above is a hassle, I put up with it for years mainly
because there's no accessible way of knowing when to manually input
the Adriane cheat code at boot time.

On 8/28/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> When booting with knoppix I get female message saying starting
> initialization and that's all that happens.
> Is this were you key in your cheatcodes or should the cheatcodes have been
> keyed in before that announcement?
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

