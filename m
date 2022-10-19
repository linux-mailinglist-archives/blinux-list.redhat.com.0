Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2690260470B
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 15:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666186050;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HoX50+TaBUQcWY1TOFrkb5kYRNALsreghBm0HcVGIpA=;
	b=UQKrb2HZ+QtRkjQemkpbvrhs5pPKntghk8bdj2aJBpjd7/QnHQM+Ml0VzhTnp54EoOForo
	TCYFhOeT6u2tvmou1lTNC0jvrwqAGRg2bN+crzHDTICJnc34b/FqAQcczwSwqUgdj8mZcC
	a1MJzRfA5qqEqbSOLws9zSU12+n8c3g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-63-yRhdZzHRMl-OlVSElRLm_g-1; Wed, 19 Oct 2022 09:27:29 -0400
X-MC-Unique: yRhdZzHRMl-OlVSElRLm_g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59DAA1C09B75;
	Wed, 19 Oct 2022 13:27:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 491F6414A809;
	Wed, 19 Oct 2022 13:27:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC75019465A3;
	Wed, 19 Oct 2022 13:27:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Oct 2022 09:21:10 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Konsole progress/any good alternatives?
In-Reply-To: <mailman.1204.1666185252.3008.blinux-list@redhat.com>
References: <mailman.1113.1666176261.3005.blinux-list@redhat.com>
 <0342ebc7-75b2-1b7f-37c0-5fe84a2a3b1c@linux-a11y.org>
 <mailman.1225.1666183031.3011.blinux-list@redhat.com>
 <mailman.1204.1666185252.3008.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1356.1666186046.3005.blinux-list@redhat.com>
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

I think f7 toggles caret browsing and orca has caret browsing off by
default.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Wed, 19 Oct 2022, Linux for blind general discussion wrote:

> I've no clue where to start or the smarts to get anywhere with it at all, my
> knowledge of how things interact with Orca starts and ends with ..is exposed
> to Orca, past that I've zero clue how to get anything to speak to/with/via
> Orca at all. I know what should be happening, sure, but...
>
>
> On 10/19/22 13:34, Linux for blind general discussion wrote:Howdy,
> >
> > just did a quick look into accerciser. seems that the terminal content is
> > already exposed to AT. So there is at least something in place. maybe a
> > focus is missing or similar.
> >
> > cheers chrys
> >
> > Am 19.10.22 um 14:25 schrieb chrys:
> >> Howdy,
> >>
> >> well you can use any terminal emulator. gnome-terminal, mate-terminal,
> >> lxterminal (i think those are all based on VTE)
> >> for Konsole, the issue is tracked here.
> >> https://phabricator.kde.org/T10099
> >> currently without huge progress. debugging is required. maybe you wanna
> >> step in :)?
> >>
> >> Cheers chrys
> >> Am 19.10.22 um 12:44 schrieb Linux for blind general discussion:
> >>> Just checking to see if there's been any movement on Konsole yet, or if
> >>> not what a good alternative would be that works nicely with KDE? I like
> >>> lxterminal, but I'm after something with more eatures and that works
> >>> nicely with Plasma
> >>>
> >>> Hoping for Konsole to work with Orca since KDE 5.26.11's fixed a few
> >>> nagging issues with the desktop. I've not seen a new version land in
> >>> Arch's repos or Konsole at all, any repo and I'm unsure if Konsole-git has
> >>> any improvements as far as Orca goes
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

