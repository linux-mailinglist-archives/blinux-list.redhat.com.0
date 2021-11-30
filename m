Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D586463E54
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 20:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638298875;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dA8DeArTVQ7QRQKKLka4/e825jkoM5oqQody1nQs9wM=;
	b=fy4fUkfIRFszcHJjDpqfo/k38FL9bGiDZjP56EG3nkyxUzoACAJJzIoSo6OcsYG4U9oeiS
	oJBMq1tK9JNrDsNY8c+lTGBjY6l23GopYzkzf6+kKFbGplr+5rPuZ3mXtlYUtDSRONzrp3
	2BIRXDS5ryiKzI7zBPkn07IhK5nUMiQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-YG9Q4hy3Mx6CNGb2-K9OXg-1; Tue, 30 Nov 2021 14:01:13 -0500
X-MC-Unique: YG9Q4hy3Mx6CNGb2-K9OXg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D5A3192D785;
	Tue, 30 Nov 2021 19:01:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45DF310013D6;
	Tue, 30 Nov 2021 19:01:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC32F1809C89;
	Tue, 30 Nov 2021 19:01:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUJ0xLw017510 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 14:00:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1E17A2026D4D; Tue, 30 Nov 2021 19:00:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18DA32026D46
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:00:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53EDF803D77
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:00:56 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
	[209.85.219.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-121-0VSKbU5cM0mmxpkIZI078g-1; Tue, 30 Nov 2021 14:00:54 -0500
X-MC-Unique: 0VSKbU5cM0mmxpkIZI078g-1
Received: by mail-yb1-f176.google.com with SMTP id d10so22739561ybn.0
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 11:00:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=5rOAsrX3zkYmwzO0GPMjiLFyfO6bFduJThRZ6gZSxp4=;
	b=alGvc8nzUT3I03g/a2Ow8pZeeo1Uf69NBxCr9YcSQxCWXDsBDHR9L44NwPe3F42dR0
	IoWSe9gZ6L9ZQSfu98IysbT9qCrMU/8WwtXtb6+8RVPPSAtjORAKr0Ma1XgzM9t8rtXb
	SP7M0yAeodQOKy2HQMRh5fkZpdzIo21tsTXe7qVmm6LUgBumK7zUBra/yP+l92rX+Ouw
	qyu1okVMFfrywvfceqMSecbvLDBSGHV/O7CyaXpo/OfbJPYJ68DD2JW4SDXYKuBUVBB+
	8Seh9tOY9rslgvw6K3Ce7saO+o0ikIrkUdBBdm5oxlaWrPOTbWfvN2zOe+PgP8UXKmpV
	ZuCQ==
X-Gm-Message-State: AOAM532mSGy79yVTjpGbSVSzFPeUBuPlbArqxV9uTx4JdvzlBtMWPhxH
	owhZRAdF1TM0Ii2D1rFLJ1UdkDfl/uUKzR8LKOx5mOPtWa0=
X-Google-Smtp-Source: ABdhPJwSvnD7L6UxudMiP+VgcHrXULKZtzCEJtg3GWkVuIqBbB+KC4rJwvO0cLMhb6+B3AT11i8EALdSG47LLFp6F5o=
X-Received: by 2002:a25:518a:: with SMTP id f132mr1036088ybb.749.1638298853592;
	Tue, 30 Nov 2021 11:00:53 -0800 (PST)
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
	<CAO2sX33Ek3Vo++4TGSxSnphQWRorYkz9x8325Ap83pkJwmrLXg@mail.gmail.com>
	<CAO2sX30XbkuP2_AanFY5Am9xiy3X+mhg=Tbrh3pHc273Vq2O=g@mail.gmail.com>
	<bf559c03-d9f2-060d-eb5a-4f2341136b35@verizon.net>
In-Reply-To: <bf559c03-d9f2-060d-eb5a-4f2341136b35@verizon.net>
Date: Tue, 30 Nov 2021 13:00:41 -0600
Message-ID: <CAGJxbF6W=0aSw-hAYKdrUVirRHKgLGA_PGfBE2fg7uFNmqtDnA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What does you right alt key do instead? When you press Right alt + x, what
happens?
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 30, 2021 at 12:59 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Greetings!
>
>
> I started out with Emacs back in 2005 or so, but until lately have used
> Vim exclusively.  I'm once again trying to learn Emacs, partly because
> of some of its extras and partly because I'm curious about how Emacspeak
> is to use.
>
>
> In any event, maybe an Emacs user can tell me how to get the right alt
> key to work the same as the left one.  I expect that this would make it
> easier to use some of the key combinations.
>
>
> Thanks for any help.
>
>
> Al
>
>
> On 11/30/21 13:43, Linux for blind general discussion wrote:
> > In all fairness, a pair of scissors, probably the most common tool for
> > cutting paper, kind of looks like the letter X, but honestly ctrl+x
> > for cut and ctrl+v for paste most likely came about because ctrl+C is
> > copy and x, c, and v are adjacent on qwerty keyboards and there's a
> > certain sense to putting related functions together... Then again,
> > even the mnemonic keystrokes probably only work as such in the
> > language of the one who picked them and maybe a few closely related
> > languages if you're lucky... and that we even call these functions cut
> > and paste is arguably an artifact of a by gone era, similar to how
> > often GUIs use floppy discs as the save icon or old-fashioned
> > microphones for record icons.
> >
> > I will admit, I often find myself trying to use nano's key bindings
> > when typing stuff in Firefox... and if I had the programming chops to
> > write my own web browser, I'd probably have the Universal GUI
> > keybindings as the default when editing text if I was going to release
> > it, but would want to have the option to use nano keybindings if not
> > just embed a nano "window" in the active text box.
> >
> > Though, on the subject of comparing emacs to a desktop environment...
> > and perhaps it is more accurate to call emacs a TUI DE than a text
> > editor, as a general rule, those applications another user mentions as
> > things you'd expect a desktop environment to be bundled with are
> > completely out of the way when not in use, can be ignored or removed
> > if you don't use them, and can be replaced with other applications if
> > you so choose. From the sounds of it, emacs is less a case of bundling
> > an editor with other applications and the suite having a unified look
> > and feel and more a case of mashing several applications together and
> > if you just want a standalone editor, there's no way of uninstalling
> > the other stuff, though admittedly, that's speaking from an outsider
> > perspective.
> >
> > If nothing else, it sounds like emacs runs contrary to the "do one
> > thing and do it well" and modularity aspects of the Unix philosophy.
> >
> > Though, to add another text-mode editor to the pile, there's also e3,
> > who's two main advertised features are small size(Aptitude lists
> > uncompressed size at 72K compared to nano's 2833k) and multiple
> > executables that each duplicate the keybindings of a different text
> > editor(including emacs, vi, pico, and nedit).
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
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

