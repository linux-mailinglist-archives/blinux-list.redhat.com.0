Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6EFB43D270B
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 17:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626969156;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zBns0daMkZonIYu9GNA8OIGsq5v/FQ4wGe3U1PKJcm0=;
	b=gKpA1WjE/jxaTPvXUv9biRiarmSDtzvnj1xT//lYCL8ospSAQ/Cx79pu9ZdCo8z34fOpEy
	jBmQ0lqKopwhyV+XZs64HuphSDdumtZ48N5aANi0ZyZyA/6rBHzmGVV8InpZ8VsuSUzcGc
	/bPMapTeMwBb/5BN/kbjlmVmwc/lx3k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-zV2ulcziNqyKfKPvTwg2YA-1; Thu, 22 Jul 2021 11:52:35 -0400
X-MC-Unique: zV2ulcziNqyKfKPvTwg2YA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A4B464AE8;
	Thu, 22 Jul 2021 15:52:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54AE619D7C;
	Thu, 22 Jul 2021 15:52:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 17861180BAB1;
	Thu, 22 Jul 2021 15:52:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MFqNEC026324 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 11:52:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3EA6820962F4; Thu, 22 Jul 2021 15:52:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39CFA20962F3
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:52:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 336D389C7E0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:52:20 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-1-nzTdeL1NNCu0We3uQTGo5w-1; Thu, 22 Jul 2021 11:52:17 -0400
X-MC-Unique: nzTdeL1NNCu0We3uQTGo5w-1
Received: by mail-qk1-f180.google.com with SMTP id q15so5820409qkm.8
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=DyNB/85apFGmH/5BCyrQWpfxKUseZJWz1fRL0G4LzxQ=;
	b=O4qk9OucGtKV0gfZSKHDZpfSfLAvIzc3gExUvutvG3IsEfyJHC9UYq/CI1IJa5Kuwo
	K4lBefTDj+JU91gLSYxK4yqUnQ0JIcPphYJjUcPEOn5LM575Ydp4EGMlf88/1yIvqAmH
	bZDg15wb27LcbZva8SdhAJPdl8STyBwbuO5knT8+pMh5sRdmHJzrdLjua1BwjuHmjhm/
	1k7IQQcxfKC4pGqr9Dr/A9pqAB5RBlhUepz5a0IF/2RjS5lZrU7ATmvm6Ush8kI0VJew
	WAWxBxH6XamD2BkMDfsmbBXKGvC3Utf5+y+oqrSJsgIu290VE5+7ww4ksKV7KH3Ht9HL
	t2GA==
X-Gm-Message-State: AOAM533u327c0WGp6XKRS1fsGSVHxx7EGLWygNdHI3I96EImguuDuMBK
	q125LAhGdvSpq1IH7P1F9wVOCcSEePY2wEaeFyqlCP4B
X-Google-Smtp-Source: ABdhPJx13cHHQKPMq6YV2EF5hdea6Oy86l0xeUvJ4DOmJ8yzBmrmAp5ZYkzggU+ZF5WE7c30tr31bl1cDDHPWEcI0ww=
X-Received: by 2002:a37:87c5:: with SMTP id j188mr295347qkd.317.1626969136598; 
	Thu, 22 Jul 2021 08:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
In-Reply-To: <20210722134626.jueyx7z7q7a4oska@alex-pc>
Date: Thu, 22 Jul 2021 17:51:59 +0000
Message-ID: <CAD_4ddTKb85p_Wcr6-gH5EP_85tmyUn1rh0PCLD3veXmVywoxQ@mail.gmail.com>
Subject: Re: A question about running emacspeak on Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

Hello Alexander and all,

I am using pipewire indeed, so I understand why emacspeak doesn't work.
Thanks for the answer, I'll wait until, and if, they fix this outstanding
bug.
Best regards.
Francisco.

On Thu, Jul 22, 2021 at 1:46 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> On Thu, Jul 22, 2021 at 12:00:23PM +0000, Linux for blind general
> discussion wrote:
> > Hello everyone,
>
> hello Francisco.
> >
> > Last night I installed emacspeak on Arch Linux from the aur, version 54.0
> > with yay, but I am having a problem: whenever i type
> > emacspeak
> > in a terminal, it tells me to choose a synthesizer, but i can't choose
> > either espeak, or espeak-ng, because no matter what i do, arrows, tab,
> > emacspeak doesn't play a sound.
>
> did you use pipewire? unfortunately emacspeak don't work with PW at the
> moment.
>
> > After I press tab, in fact, an emacs panel opens, and nothing speaks
> inside
> > it except orca.
> > Does Anyone have any ideas on how to fix it?
> > I'd like to try and get into emacspeak, so to see what it can and can't
> do.
> > Best regards.
> > Francisco.
>
> --
> Sincerely, Alexander
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

