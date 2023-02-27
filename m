Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D52B16A4594
	for <lists+blinux-list@lfdr.de>; Mon, 27 Feb 2023 16:07:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677510433;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2KB7gmvXlxLv45HL1mDP4uZrQfVjQPBVaz39tmBuFz4=;
	b=bU4UG+PUPOhUfqiqNbzBDItI4nmEDsr3ryNSV4Y0Kkj2pyOogm2p2pyePYK5YEjLwIsRU0
	8K0+mGHFbkltyCByuHkC3ECrmq1uiqANnzgoboWhwgLWuk1+fJbLTvM5CPUiP2dSE70xiT
	aAGyZNNiyZrxUsWd1jDsdyH8FoLEWR4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-igZmiCj8OaW_am_5FQTAXg-1; Mon, 27 Feb 2023 10:07:09 -0500
X-MC-Unique: igZmiCj8OaW_am_5FQTAXg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CEEB918A646D;
	Mon, 27 Feb 2023 15:07:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D8D701121318;
	Mon, 27 Feb 2023 15:07:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 906B119465A2;
	Mon, 27 Feb 2023 15:06:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Feb 2023 10:06:50 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup or fenrir on fedora
In-Reply-To: <mailman.503.1677509636.3183644.blinux-list@redhat.com>
References: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
 <mailman.460.1677502348.3183651.blinux-list@redhat.com>
 <mailman.514.1677508283.3183643.blinux-list@redhat.com>
 <mailman.519.1677508781.3183643.blinux-list@redhat.com>
 <mailman.503.1677509636.3183644.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.487.1677510419.3183651.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

no, try which locate first.  No path and file name returns sudo dnf
mlocate then updatedb then try locate fenrir*.service.  The locate command
finds everything  on your system and is different from dnf.  The dnf
utility downloads and upgrades your system from the internet so dnf is
outward looking while locate is inward looking.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 27 Feb 2023, Linux for blind general discussion wrote:

> sudo dnf updated
> like that?
>
> > On Feb 27, 2023, at 08:39, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > I suggest you first do locate fenrir*.service and note the file name that
> > returns.  That may be fenrir.service or fenrirscreenreader.service and
> > locate will let you know which.  If you haven't run updatedb I suggest
> > doing that before you run the locate command since updatedb updates its
> > data base on any new software installed and removed.
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
> > On Mon, 27 Feb 2023, Linux for blind general discussion wrote:
> >
> >> Sorry, I wrote to you about the wrong thing.
> >> As far as fenrir, would I enable fenrir with systemd with
> >> sudo systemctl fenrirscreenreader
> >> or any other step?
> >>
> >>> On Feb 27, 2023, at 06:52, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >>>
> >>> pip3 install fenrirscreenreader
> >>>
> >>>
> >>>
> >>> Jude <jdashiel at panix dot com>
> >>> "There are four boxes to be used in defense of liberty:
> >>> soap, ballot, jury, and ammo. Please use in that order."
> >>> -Ed Howdershelt (Author, 1940)
> >>>
> >>> .
> >>>
> >>> On Mon, 27 Feb 2023, Linux for blind general discussion wrote:
> >>>
> >>>> My arch machine has fenrir.
> >>>> Is there a way to put either fenrirscreenreader or speakup on to a fedora system?
> >>>> The speakup page might need updating.
> >>>> When I use the shell, for now I use t d s r.
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
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

