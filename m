Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 581233D17A4
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 22:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626898407;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0DvulsS4WgWSXvRzAiUc+apxoZqmhGZjXB9rL7L4QLU=;
	b=YNnDexFAzpYhTXpPvGjhxVEzIftN0jBDvWZf9n/DGe3Fw0D5F7Ks9Wb5XAGBSCzNFgj/jZ
	644FmudRZnKM9jg0L/iU7AArCZoLIBhNCBPCZnoKPpTxaEGYE3Yy6VHlRioPymCfsO7AbB
	jQ+OUcF86rLPjx5XIjzuRd2Dpjnbia8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-rzZWJdv_MMymfUziN1rxWw-1; Wed, 21 Jul 2021 16:13:25 -0400
X-MC-Unique: rzZWJdv_MMymfUziN1rxWw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01673185302A;
	Wed, 21 Jul 2021 20:13:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 911E95C1BB;
	Wed, 21 Jul 2021 20:13:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02F9D1801028;
	Wed, 21 Jul 2021 20:13:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LKDDP1016954 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 16:13:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 07FF0104085D; Wed, 21 Jul 2021 20:13:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 035AC1040857
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:13:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3392A8007B1
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:13:10 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-554-ijDNvJh9PyG8s4rql-xnRw-1; Wed, 21 Jul 2021 16:13:07 -0400
X-MC-Unique: ijDNvJh9PyG8s4rql-xnRw-1
Received: by mail-io1-f50.google.com with SMTP id g22so3801825iom.1
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:13:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=xUiGey6ixKui2JLDr4Tc565SyI53juk0brM1wA+nQ6M=;
	b=ZM+I9BtKcFkoEYF6D24OdUUpyLY6/MjshFzfU86/R7LddPVEZuh7KgnMTl7pEuOsyT
	olUlYSXv6otlbx6vc6SMpfQtDB5lsPHtEtbCeThRpOtDSrMFcXVkB5+CX8E0hwIqaDwh
	rK2N/AJeQ5ydf06hcolHRwGdwJhEzSD+sXL3ZHFr8bD6WXj7WJE32vosmB13MCx4KeiC
	9oZul0+4Oomeimozf4W1kCRaAl9TjBsOVHje6teblaEvFIDGt05uZz+mZDltmSuntXTf
	mG13nf4IbkJV5VxBT8jTBlZYj45CDJVkAN8zdg4+h6wj81BJzoS5nXarI1GTPVUziIYN
	1VtQ==
X-Gm-Message-State: AOAM532Wv+VeTTMPNT5MnRK7g2f/m2ofRri2ardihtCeWknJJ69YY4Po
	qX2o9dWITe1pci9l+5fzfMYCkyDn4q32RJQuQJhPdCQd
X-Google-Smtp-Source: ABdhPJw6z6s+eqKSeNSnkklLe+fY96V/h6wyyCqlFdZlZYbAiqKIiW9vpP/MePHlZZUHzKYEAV9CGbNRT5dRvfZ6NCI=
X-Received: by 2002:a5d:840c:: with SMTP id i12mr27464445ion.185.1626898386284;
	Wed, 21 Jul 2021 13:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAGJxbF5ZRmXb7N=gQ8REOPBBpqeCO=PAgcw7xGz1Z8BYOrwQtQ@mail.gmail.com>
	<0b4c6937-3bbb-795a-bdcf-ad962622b164@gmail.com>
In-Reply-To: <0b4c6937-3bbb-795a-bdcf-ad962622b164@gmail.com>
Date: Wed, 21 Jul 2021 15:12:55 -0500
Message-ID: <CAGJxbF6H70jjhStaSkrwZwO-MbKLXpXP_kEDmFy69sOULJPXfg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's what I'm trying to figure out too. I'm on Fedora, and I'm having the
same problem.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Jul 21, 2021 at 2:45 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> That was one of the problems. But that's sorted with your trick.
>
> Now trying to remember what I had to set where. Just tried vanilla
> Chromium, and no luck right now. So do I need to set values somewhere or?
>
> On 7/21/21 8:36 PM, Linux for blind general discussion wrote:
> > Oh, sorry, I thought you meant that Orca didn't talk after exiting
> Chromium.
> > Devin Prater
> > r.d.t.prater@gmail.com
> > gemini://tilde.pink/~devinprater/
> >
> >
> >
> > On Wed, Jul 21, 2021 at 2:29 PM Linux for blind general discussion <
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

