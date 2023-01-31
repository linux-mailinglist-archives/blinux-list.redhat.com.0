Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D896836BE
	for <lists+blinux-list@lfdr.de>; Tue, 31 Jan 2023 20:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675194220;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=96daVsyfbjIHvcOKMXnowd2ZQS5DgiBkgS3TGkEREdg=;
	b=NA64ewIcoWqaUA1jr172lZ8+Rb/qfXP0E8uuE++PTY7YSin48Y80lUxf3/TcnHzKwWcwS8
	HAo8XR8OlEt7fRGikklnaPP6gxoH49EuWH1itZKSCQifSfi6CsM41C3bULtBf5N9UYWUy5
	NmhpkfCMBk+sbWDL/wJD759LgTqPpng=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-137-P8ISNH6AOdyMFUBNEqp26Q-1; Tue, 31 Jan 2023 14:43:36 -0500
X-MC-Unique: P8ISNH6AOdyMFUBNEqp26Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEE9C100F82C;
	Tue, 31 Jan 2023 19:43:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7A539401531A;
	Tue, 31 Jan 2023 19:43:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 312AF19465A0;
	Tue, 31 Jan 2023 19:43:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 31 Jan 2023 14:42:23 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: fenrir installation
In-Reply-To: <mailman.3187.1675193132.8177.blinux-list@redhat.com>
References: <mailman.2734.1675183128.8173.blinux-list@redhat.com>
 <mailman.3015.1675186081.8175.blinux-list@redhat.com>
 <mailman.3182.1675187097.8170.blinux-list@redhat.com>
 <mailman.3187.1675193132.8177.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2804.1675194213.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Preferably with sudo otherwise fenrir gets installed in a subdirectory of
the user.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 31 Jan 2023, Linux for blind general discussion wrote:

> Should that be with sudo or not?
>
> > On Jan 31, 2023, at 11:44, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > On fedora, pip3 install fenrir would start fenrir install process.
> > Then systemctl enable fenrir would be needed. then reboot.
> > I haven't done this on fedora so can't say it will work.
> >
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> > soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Tue, 31 Jan 2023, Linux for blind general discussion wrote:
> >
> >> No package is provided for fedora at time of writing.
> >>
> >> For Ubuntu, just type as root or using sudo:
> >> apt install fenrir.
> >> Then some configuration will be needed.
> >>
> >> Cheers,
> >> Didier
> >> --
> >> Didier Spaier
> >> didieratslintdotfr
> >>
> >> Le 31/01/2023 ? 16:49, Linux for blind general discussion a ?crit :
> >>> I have a machine with fedora, and an external drive with ubuntu.
> >>> I would like to install fenrir screen-reader on both systems, and would welcome any information on doing that.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

