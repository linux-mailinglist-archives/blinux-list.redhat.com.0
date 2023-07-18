Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C35A7589CC
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 01:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689724778;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ddQiSAunqNbY1wtcG5thR8F6t0J18LPU/HrHljz4Hog=;
	b=GQKOneghXsbid3F/zxvRYCQ34y4Gb8YEYQZTRQHsEqHYIFfp4T1ALxyj3HeDlB1g7G6mv5
	/0160blcaa0cRn1VK9Z2MnZ0JrDXuRbU6Y8nUubHXdRCFa8Iu0cQmYG0en0XZ4+I1eyB7i
	6dTI0gNDBmjCIVSWyoHEovloaQxFEds=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-498-glmOZ1kAPa-BFldWtfrGQg-1; Tue, 18 Jul 2023 19:59:34 -0400
X-MC-Unique: glmOZ1kAPa-BFldWtfrGQg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24500936D2C;
	Tue, 18 Jul 2023 23:59:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B1161C2C864;
	Tue, 18 Jul 2023 23:59:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 348E819465A4;
	Tue, 18 Jul 2023 23:59:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 18:52:33 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console E-mail client for my need
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.489.1689716021.687810.blinux-list@redhat.com>
Message-ID: <mailman.444.1689724770.687819.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  In addition to Mutt, NeoMutt, aerc, mh/nmh, and sup
already mentioned here, there's also the venerable mail(1) (sometimes
packaged as "mailx" or "heirloom-mail) program.  It's just a
mail-reader, relying on your system mail configuration to send mail,
so that could be a simple redirector like msmtp(1) or dma(1), or
configuring your system MTA (whether sendmail, exim, postfix, or
opensmtpd) to send mail via a smart-host.

Similarly, there's "s-nail" which has a similar linear interface,
but also supports IMAP and SMTP directly.

All of them should allow you to use the external editor of your
choice.  Do note that, if your external editor forks into the
background, the mail program will launch the editor and return
immediately, so you might have to tweak your editor invocation to
use some sort of "don't fork" option (gvim has a --nofork option)

-tim




On 2023-07-18 18:05, Linux for blind general discussion wrote:
> Hi, I'm setting up an environment on my new Gentoo installation. I'm
> thinking of setting up an e-mail client at the console rather than a desktop
> client like Thunderbird, because console programs tend to be more performant
> and stable. On the other hand, I prefer text reading on desktop programs, as
> there are more convenient commands, e.g. the famous continuous reading
> command found in Orca. Thus, I thought of choosing a console client that
> allows me to open a text editor like leafpad to read plain text e-mail
> messages, and open a browser like Firefox to read html messages.
> 
> Upon searching, there appears to be only a few console clients still
> maintained, namely Mutt, neoMutt and sup. Sup is curses based, but NeoMutt
> seems the most active, though it probably requires a lot of time and
> patience to configure properly, as it doesn't have any interactive settings
> wizard; one needs to carefully read and change files manually.
> 
> Can someone say if it's worth trying? If so, what screen reader works better
> with it: fenrir, orca or speakup? Am I missing any other good client?
> 
> Thanks,
> Cleverson
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

