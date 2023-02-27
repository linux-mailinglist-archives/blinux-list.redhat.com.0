Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 695866A44DA
	for <lists+blinux-list@lfdr.de>; Mon, 27 Feb 2023 15:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677508922;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gOROtoughJhedQ781yIj7Y31XZR/qK4jWlZ+1ZyCunU=;
	b=ZCgR9d6xLmgyR4yYpIKxBfTaSocJB48s6MT/vHEI/qmFTsUOnO057/E8k+EEC3gu0VhPJy
	LHZj6kMI5WoJtnXU9L9FklwtaBwlpMDJnAp4Fy9El/9/7HAiUDWpOthkIQUuxvGr8XPKEB
	FaFxpgDBYFitJtaDjveJdyncr7+nVF0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-21-UlEKnCRmNzKhILmKX4cH9w-1; Mon, 27 Feb 2023 09:42:00 -0500
X-MC-Unique: UlEKnCRmNzKhILmKX4cH9w-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C6FA3823A01;
	Mon, 27 Feb 2023 14:41:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D3859492B0E;
	Mon, 27 Feb 2023 14:41:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7A81D19465A4;
	Mon, 27 Feb 2023 14:41:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Feb 2023 09:41:52 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup or fenrir on fedora
In-Reply-To: <mailman.507.1677508173.3183646.blinux-list@redhat.com>
References: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
 <mailman.460.1677502348.3183651.blinux-list@redhat.com>
 <mailman.507.1677508173.3183646.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.508.1677508917.3183646.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The package downloads already made.  You may want to check
/etc/fenrirscreenreader/settings/ for configuration files with the
understanding settings.conf is normally what fenrir uses by default and
you may want or need to edit that file.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 27 Feb 2023, Linux for blind general discussion wrote:

> Thank you.
> What must be done after that to make the package and or to run it?
>
> > On Feb 27, 2023, at 06:52, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > pip3 install fenrirscreenreader
> >
> >
> >
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Mon, 27 Feb 2023, Linux for blind general discussion wrote:
> >
> >> My arch machine has fenrir.
> >> Is there a way to put either fenrirscreenreader or speakup on to a fedora system?
> >> The speakup page might need updating.
> >> When I use the shell, for now I use t d s r.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
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

