Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EE4463CAD
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638292983;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uyKCnfIM+5gQfm3/JwaQNzTTqfGUdKMBRZcXK85NfNM=;
	b=dUAHxGgixNj1bCF/RW9oMn7SulUUgHfI7FqEILs7P0gBOMlIC3444B+1FsbEh2ZlsdBc5O
	M9tmESL2pEoc1uENSkt8YbZbnVt+HNfzKkOpTxiIJmVaOWZ0jZAKQ+h1AhrJ4HnXck2NbW
	cu8MV2lX2KIgeJGK/qcQDq6GoL40GIA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-266-0XtBgqvxONeMRy72yeheng-1; Tue, 30 Nov 2021 12:22:59 -0500
X-MC-Unique: 0XtBgqvxONeMRy72yeheng-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 608E181CCB8;
	Tue, 30 Nov 2021 17:22:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F02555DAA5;
	Tue, 30 Nov 2021 17:22:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B3C01809C89;
	Tue, 30 Nov 2021 17:22:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHMnVj008495 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:22:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 088784010FF6; Tue, 30 Nov 2021 17:22:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0347040CFD0F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:22:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D91E71066684
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:22:48 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
	[209.85.219.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-514-0a2YBAprMbCDbklok-6paw-1; Tue, 30 Nov 2021 12:22:16 -0500
X-MC-Unique: 0a2YBAprMbCDbklok-6paw-1
Received: by mail-yb1-f169.google.com with SMTP id d10so21904625ybn.0
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:22:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=jgOa6syEm0UIBFh/cNmoctym3MSfIjPgJYorceDsVSE=;
	b=07S0cZkYlBTRe8aVmLN0psAlDf/9YYXj0sbCAXk5Ca2albeB7tFLOJeAaQR0+g/6un
	Q21vvgX0QrGGLwkfWQPjdy09do4UqpGCZWbGp6hXADH4+ngNqjMTRjBGIJDBPRBSOmda
	XVvIOHPzlY6P/XlYbagBZdDkuc3b9rJAA1+vjPwzt14OY8ZXjZw3OxDzuTM1j9nXyu+Z
	EfYmTjTGhgpGc+5QVgq+udIENYsYwi8Jsfg91cjJoayE8drn/zDvlnoNhMoWXYtZJqIL
	lfcQz0hIo5nlVVQo3PwdaKjb0micUd/irQ3ncBtYpEQv6N7HgzRzHgxsgylL819QV0UW
	RXPA==
X-Gm-Message-State: AOAM5315sU2MqsZJt49f8hnyVQ6f/kIeKvW15zB5lCF5rVnCOX6hMcZV
	Y0nAOOeBdHJnyZcdSUyDp5lUe5da/XqHFKUb3+GLnM2hXKs=
X-Google-Smtp-Source: ABdhPJxz8fjAe3tRfRUETTt8BAI2rlGpnxuZ9zf9AtPi6jcqHi5Aqlv1rSV7fx2pOxJVwGe9ZO3+RZH9oHE7qeEGp3w=
X-Received: by 2002:a25:ce13:: with SMTP id x19mr397718ybe.639.1638292935550; 
	Tue, 30 Nov 2021 09:22:15 -0800 (PST)
MIME-Version: 1.0
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
In-Reply-To: <PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Tue, 30 Nov 2021 11:22:03 -0600
Message-ID: <CAGJxbF7HxDJs-h_ZU227pdWQOOVmFkCOhb7YtE+YNxWn3+VB=g@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Also, saying Emacs does too much is like saying or desktop environment does
too much. Of course your DE is gonna have a calendar, calculator, text
editor, web browser, email progrm, chat app, all that. It's just that Emacs
fluidly combines them all into a single paradym to get used to, so that you
can even, say, run a command on a file in Dired. I use this with Pandoc to
convert books to HTML for reading on my NLS EReader. I just find the file,
then do
!
it asks what command I want to run:

pandoc -o output-file.html

and it returns: (output succeeded with no output).
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 30, 2021 at 11:17 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> True, but on the flip side, when you're using it as a personal organizer,
> an email client, or anything else, then all of the editing functions just
> work as you'd expect. No need to get used to the idiosyncrasies of each
> application. It's true you have a lot of key commands, but some of them are
> more intuitive then what people think of as the standard key commands. For
> example, what's so intuitive about control+v to paste or control+x to cut?
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Tuesday, November 30, 2021 11:09 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: What is the easiest and most accessible editor?
>
> It's also a bit of a misnomer to think of Emacs as just a text editor. For
> example, it can be used as a file manager, a development environment, a
> personal organizer and more.
>
> I think that's one of the main problems I had with it. It tries to do far
> too much, and puts everything into an editor style environment. I found it
> to be a nightmare, especially the strings of key combinations that can't be
> translated to some kind of mnemonic in most cases.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
>
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7C43cfd108ee08412ba86708d9b424310e%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637738889812365134%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=fYaI%2Fhsq8%2Bf%2FYpt%2F1lxEYePM%2FVxlnvlhqfVptNpUEjQ%3D&amp;reserved=0
>
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

