Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id EF9BF174D49
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 13:23:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583065401;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p2QY9Mk8JpXyjukqG5VVjBiPsrhvU0LyN8XU8JzW/eA=;
	b=PLMus+4+u4FPXXrsxTMWbTRlE5rnmPE3TOel9tPpapbaBfp1cPo+gvLcjCxphDzlQIe9El
	kLk/NBEWmr2XhaAvZCGfDFwGMA8UU2CZeIAjZcFOGZv5TIWeie9GERR98IVI5UGbZIoohZ
	3s41mDCoTgBuuDGgL39TJoRULfog8oM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-KLxRWfJTP4ewZmfmTuoZFw-1; Sun, 01 Mar 2020 07:23:18 -0500
X-MC-Unique: KLxRWfJTP4ewZmfmTuoZFw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B214100550E;
	Sun,  1 Mar 2020 12:23:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 954FF90F5B;
	Sun,  1 Mar 2020 12:23:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F36FC8449B;
	Sun,  1 Mar 2020 12:23:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021CN4tB017088 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 07:23:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43EB2A4847; Sun,  1 Mar 2020 12:23:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FBE8A3179
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 12:23:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84E71800294
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 12:23:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-267-R5AX1JLSOKeMxOEdnCVnBw-1; Sun, 01 Mar 2020 07:22:59 -0500
X-MC-Unique: R5AX1JLSOKeMxOEdnCVnBw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48Vj8y5Wp8z1Lql
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 07:22:58 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48Vj8y3nbDzcbc; Sun,  1 Mar 2020 07:22:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48Vj8y3DYXzcbW
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 07:22:58 -0500 (EST)
Date: Sun, 1 Mar 2020 07:22:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Want to try a GUI. Which one is best?
In-Reply-To: <20200301111759.GA12551@abilitiessoft>
Message-ID: <alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
References: <20200301111759.GA12551@abilitiessoft>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021CN4tB017088
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mate 1.24 got some accessibility love as compared to mate 1.18.  That's
not available on Debian Stretch and I don't know if it's available on
sid either.  Probably available on archlinux.  Getting mate installed on
archlinux without using Jenux and expecting it to run a screen reader
isn't yet well documented.  Machine resources are ultimate controlers
mate can run on low resource machines with gnome running on high
resource machines.  The kde environment is a Construction Zone and I
expect will remain so for some time yet.  Sighted people have
accidentally turned on the screen reader in mint and posted messages
trying to get help turning it off.  I tried knoppix and admittedly it
was a live disk and couldn't figure out how to get it to install to my
hard drive.  Knoppix does come up talking and a live disk is what to use
if doing banking transactions on windows machines in public places since
it doesn't leave any of your data behind when the disk is removed and
the machine is rebooted, or that's the way it's supposed to happen.  The
ubuntu family is available and is a good way to go if you have lots of
non-standard hardware since it can probably make that work in any case.
I may have left some possibilities out but that's why we're on an email
list so others can correct where necessary and/or elaborate on this
message.

On Sun, 1 Mar 2020, Linux for blind general discussion wrote:

> Date: Sun, 1 Mar 2020 06:17:59
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Want to try a GUI. Which one is best?
>
> Hello,
>
> I am using Debian command line as much as possible. When I must deal with a GUI I use Microsoft Windows 10. However, i'm getting disgusted with Microsoft's
> updates, which it makes without asking permission. they keep causing trouble with my computers. I've heard of several Linux Desktop environments, but I'm
> skeptical if they are as good as Windows. Which one would you recommend?
>
> I want my Linux machine to continue to boot into the command line, and when I want a GUI to start it with a simple command, or maybe a shell script.
>
> Thanks,
> John
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

