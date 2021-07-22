Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 38C533D2150
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 11:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626947759;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2ntiI6QWE9vm1fWl2R36CRu7fa1kQSDGmkrtQaBuswU=;
	b=P2NpEtZ/6FImNhOY/hZiJXVc8lplrAnA0KCqO60Mp9hdDs30vEzZd+QHnxG9U6rsyuOcED
	gIr8MYLMuPuzJJF1wcqwHH1cYoggcrJq7juMbWZYLyg/vylMkFpQYQFcHaG0irhkaSw05r
	lpHYi2kdPGq4vGgibziK6gMJr4ho1as=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-Qt9AEPS9NGqsk6RCr1dXGQ-1; Thu, 22 Jul 2021 05:55:57 -0400
X-MC-Unique: Qt9AEPS9NGqsk6RCr1dXGQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D08041005D54;
	Thu, 22 Jul 2021 09:55:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C17119D9B;
	Thu, 22 Jul 2021 09:55:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0A5A180BAB0;
	Thu, 22 Jul 2021 09:55:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M9tfOO021865 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 05:55:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 929661050176; Thu, 22 Jul 2021 09:55:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DFEC10CD776
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 09:55:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F25C1858F19
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 09:55:38 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-216-2St1igHQON2EtJCGINd2-Q-1; Thu, 22 Jul 2021 05:55:36 -0400
X-MC-Unique: 2St1igHQON2EtJCGINd2-Q-1
Received: by mail-qk1-f173.google.com with SMTP id m3so4808966qkm.10
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 02:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=QSMgbZWa8bS1eHKH42ZtEQoed2LOzsRr8uV8+UncBlY=;
	b=Zpqz+rR3PQ6K87njkebDhd6FUZqW9lxvoldWfOgCLmbNWuONFccdbQIr9M2DiqX1as
	zdv/HpvpvQqBTscqfmq9QbWnVgHM1j0GcSWGGi5yfIWvY2HdnRaMFTE5RGUtbtj2eryA
	YyArQRZjFRx173jRpVMqI2aR0gGmqszXvEpvisbaaFhwIXyN8PVdFdVVhJiLol2a60xO
	On65Uh/6b71CNituEUG6VHtv36/mI7evzm5gBp0hywyV/v92HKjMKEoJ/BOuvDkAAeO7
	7UPq5C5IgRYjjj+OMkXKx8aZwh9vAMNr2Vr1msUHjrHcawvnQDATLP4QOLHHjn4/tLO/
	WyVA==
X-Gm-Message-State: AOAM531zWQMFhIuS57pL0aysNoHVBGoSRK2RDB2nJwdAVsjf4ycHRrFd
	c4Em/T1W2zWxGbaCWYtiky/LCXkx8RzfmLEK9KbtLkTm
X-Google-Smtp-Source: ABdhPJw6nC9WHUkCitzvjPEf1O0TpNU7WuWUoPXTO8D/lfCt9+4z6NinWRKJrEnbkzTeW3HTr8T9CIZB1vNawJJx+Jc=
X-Received: by 2002:ae9:ed56:: with SMTP id c83mr38496312qkg.101.1626947735499;
	Thu, 22 Jul 2021 02:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAD_4ddTnvv4kF06R03YFvYyRvusp+Z3Vkwhe7T2eNFDJfRT+Ew@mail.gmail.com>
	<9c79a038-b427-d15f-d836-b496307026dd@gmail.com>
In-Reply-To: <9c79a038-b427-d15f-d836-b496307026dd@gmail.com>
Date: Thu, 22 Jul 2021 11:55:18 +0000
Message-ID: <CAD_4ddS5zOgjQL8Q1dM+Bnv4Y9S0Q7-sF7fF36dYoSe9nF1OpA@mail.gmail.com>
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello there,

Thanks for the quick update, as you called it, I'll try, although my
problem seems to differ from yours a bit.
Best regards.
Francisco.

On Thu, Jul 22, 2021 at 8:15 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> As a quick update. Here's what I did on Solus to get Chromium/Chrome
> based stuff working
>
>
> 1. Set the export ACCESSIBILITY_ENABLED=1 in ~/.profile
>
>
> 2. Set up the flags in .config/Brave-flags.conf or Chromium flags.conf
> or the Chrome equivalent
>
> 3.Launch browser.
>
> It works fine for me on Solus, using the Mate DE
>
> On 7/22/21 10:23 AM, Linux for blind general discussion wrote:
> > Hello there,
> >
> > I am having sort of the same problem here on arch: I installed the latest
> > google-chrome from the AUR, and well, no matter what I do, it doesn't
> start.
> > Does it happen to you on Solus as well?
> > For me electron apps work without a hitch though, and vanilla Chromium
> > works just fine.
> > Best regards.
> > francisco.
> >
> > On Wed, Jul 21, 2021 at 7:29 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> Just tested. That didn't do a thing. It's as if Chromium's not even
> >> showing as running within Solus. Which is amazingly odd even with the
> >> right flags. I've not tried making a flags.conf yetet (that's next on my
> >> list), but I swear there were settings I needed in config files or to
> >> export via a terminal however?
> >>
> >> On 7/21/21 7:49 PM, Linux for blind general discussion wrote:
> >>> When Chromium stuff breaks like that, hit Insert + H, then F2 to bring
> >> up a
> >>> GTK dialog. Doesn't matter, just close it. Something breaks with focus
> >> when
> >>> stuff like that happens.
> >>> Devin Prater
> >>> r.d.t.prater@gmail.com
> >>> gemini://tilde.pink/~devinprater/
> >>>
> >>>
> >>>
> >>> On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
> >>> blinux-list@redhat.com> wrote:
> >>>
> >>>> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
> >>>> Nothing insanely deal breaking, bar one or two things...
> >>>>
> >>>>
> >>>> 1. For some reaso, the Mate DE doesn't have the orca shortcut set.
> This
> >>>> isn't really an issue since alt+f2 and Orca takes care of it.
> >>>>
> >>>>
> >>>> However...
> >>>>
> >>>>
> >>>> 2. Chromium doesn't seem to respect flags set. And it breaks the
> >>>> installed system to the point where it's locked up when quitting a
> >>>> Chromium app
> >>>>
> >>>>
> >>>>
> >>>> 3. After upgrading, Firefox lost the browse/focus mde messages
> >>>>
> >>>>
> >>>> So is it just me using Solus 4.3 here and anyone got any ideas, and no
> >>>> 'use another distro' is not a valid answer. I've already suffered one
> >>>> borked system due to Ubuntu being inane today and the terminal
> suddenly
> >>>> not being a thing mid version upgrade, so...
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
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

