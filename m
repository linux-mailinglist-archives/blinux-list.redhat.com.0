Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D1D6BFC1B
	for <lists+blinux-list@lfdr.de>; Sat, 18 Mar 2023 19:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679162904;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5dCgGh9uNO91m2NXu+TO10ads2IM+j6rqglAziiNH28=;
	b=QmSHv7RxjlbmZTNQCt9gPtNO4Gr+4RD5Tj5LDKNCii6zmUzn/2WK14t5V51bvRKd7gair+
	dJVMTzFAiDfRe4hfiwsptjYoNZv3HhfUqxwY9rViJp35UCyBV+Ga3DIx5qO2V/iVOj0PMC
	9KSQdK5s3TYfBkTll4+IvmSyrtETTG8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-265-IhkMDSN6NO6nIHh_AvKqsw-1; Sat, 18 Mar 2023 14:08:22 -0400
X-MC-Unique: IhkMDSN6NO6nIHh_AvKqsw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFBF13801F4E;
	Sat, 18 Mar 2023 18:08:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2099A83B9C;
	Sat, 18 Mar 2023 18:08:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4C3D61946A51;
	Sat, 18 Mar 2023 18:08:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 18 Mar 2023 14:08:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: sparkylinux info
In-Reply-To: <mailman.74.1679159925.636366.blinux-list@redhat.com>
References: <mailman.65.1679141396.636364.blinux-list@redhat.com>
 <mailman.74.1679159925.636366.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.72.1679162895.636358.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If anyone is interested in checking out accessibility on any flavor of
linux, download the packages list and use grep on it to search for
accessibility packages.  None found distro isn't interested in trying.  If
any found, maybe the distro got the installation correct so that one may
be worth a download and check out.  As of now, my computer is in process
of going south fast.  Two bad hard drives and I expect those happen
because of a bad hard drive controler.  So minimal accessibility testing
for me until I come up with a computer with correctly operating disk
drives.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and amo. Please use in that
order." Ed Howdershelt 1940.

On Sat, 18 Mar 2023, Linux for blind general discussion wrote:

> It should be no surprise that if you download some Linux distribution which
> has no accessibility community, it isn't accessible.
>
> This sort of message keeps coming up on mailing lists with various
> distributions, with similar results.
>
> If you want accessibility, you basically have to keep to the distributions for
> which someone is looking after the accessibility-related packages, and
> preferably for which there's a community of screen reader users.
>
> For "mainstream" (i.e., not specifically accessibility-oriented)
> distributions, it probably means Arch, Debian, Fedora and Ubuntu for the most
> part at this point - with apologies in advance for whatever I've inadvertently
> left out.
>
> On 18/3/23 08:09, Linux for blind general discussion wrote:
> > Don't download this installer.  Its package list has neither espeak nor
> > orca in it and that means if you do make the download mistake you're going
> > to need a sighted install and maybe won't find espeak or orca in their
> > repositories either.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >   soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

