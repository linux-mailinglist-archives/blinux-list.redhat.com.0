Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E0F463E85
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 20:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638299763;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fKrqc8Ogg67w8mOqbVDh+3UTt/R6/TSQAv5oxXO//J0=;
	b=M0y+dxu9ydTYZKFiyxDrksnVN6dGhWoqAJwLVNhQxew+CdiGmwrQRPKiI6y70/LnGeu8VD
	m1neCJONyRxhwmXGQhqzC3lQ64BrFnHZprQH4CrnR8HHUabmQD20rRm22TuVFRjybfC1jb
	RoWA7oKFxahOjFUP64FFTH4vGzLkoZU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-400-W1ojpEbbNbGHFpa6pSPoCw-1; Tue, 30 Nov 2021 14:15:59 -0500
X-MC-Unique: W1ojpEbbNbGHFpa6pSPoCw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 57F251006AA0;
	Tue, 30 Nov 2021 19:15:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEDF810016F5;
	Tue, 30 Nov 2021 19:15:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47D7E1809C89;
	Tue, 30 Nov 2021 19:15:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUJFkfX018621 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 14:15:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BFE382166B2F; Tue, 30 Nov 2021 19:15:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA8F42166B26
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:15:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1944E8027FB
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:15:44 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-297-38zB12c-PwKQiYAwDdN10A-1; Tue, 30 Nov 2021 14:15:42 -0500
X-MC-Unique: 38zB12c-PwKQiYAwDdN10A-1
Received: by mail-qk1-f175.google.com with SMTP id q64so28034501qkd.5
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 11:15:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=NtU0jFRZndGcJXzzjJlTR32Zbr+mQPh9lprRZpzHkt0=;
	b=BDa6xUvSRo9a/gfjKe3Hec3TnRScQ/ghyDrN1tBEi+1f0dpqL+GIWvOHkC+9ULarqX
	aOLxQqwQ6h6jTE43jOwETKAw3DNKgdL0HVtDBpYVVe8kot/C35NxKux3sjBwc0PCN0Jf
	dsRLO2UXwyiYpgy2MF3oC7X4RxMmhCMWLdIKrb46STiu3k8pss8tcg2S1v9XeYIhD+wk
	VsJGyBjQq164dRQYhyX0dTmJt8uvAM6ppYLc5M1IatJ4gGmvNjKoFNRLOrRHFbQFRM85
	gS/qzUp5MhQgvTIQjWY+WyPFERTszk2y57ldPn7CXkn9Juotlwz5MfPDF6c0YHu/iV2k
	8juQ==
X-Gm-Message-State: AOAM533eUb4Bu+V80C9JwokHy/O5C3iPQH9kCij67Au7ubIv4BLqaqRo
	NpAqUu6F9YiLLdqXDobE5qEW7U7/uF4i4LuNU4ch24Xn
X-Google-Smtp-Source: ABdhPJwT+FjVFl0MTNVlzo39Zy9rsdHzOWlAHI5ZrUf9/0klR0mMypI8tn53rQSFWCQ4FM2DRYih0aTqxry8Rlk4kW4=
X-Received: by 2002:a05:620a:4041:: with SMTP id
	i1mr1350909qko.407.1638299741699; 
	Tue, 30 Nov 2021 11:15:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 30 Nov 2021 11:15:41
	-0800 (PST)
In-Reply-To: <6029d348-4a5d-9371-38a7-b2a940901b92@gmail.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<61abb084-c69c-17f5-dc0e-fe6447caf720@gmail.com>
	<6029d348-4a5d-9371-38a7-b2a940901b92@gmail.com>
Date: Tue, 30 Nov 2021 19:15:41 +0000
Message-ID: <CAO2sX332h-dTG7uubXnj1JPhDJ9oLaaGVt98T7gCpFeQZBbdcg@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
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

I'll admit, while I'm used to them, nano's use of w and q for
searching forward and back are very non-intuitive from an English
speaking perspective... and it's annoying as heck when I press ctrl+w
to search for something thinking I'm in nano only to realize too late
that I'm in Firefox and just closed my active tab... doubly so if I
had typed something long in that tab that isn't guaranteed to be there
when I reopen the tab or if it was the only open tab, which on my
setup not only closes Firefox, but quits the GUI altogether... Thank
Turing ctrl+q no longer closes Firefox without prompt if multiple tabs
are open and that I never really got in the habit of searching
backward in nano(going to close the active tab and accidentally
quitting the whole program takes t he cake).

Though, now I'm curious... where did the Desktop standard keybindings
of xcv for cut, copy, paste, a for select all, p for print, safor
save, biu forr bold, italic, underline, z forr undo, etc. originate?
My guess is that most GUI applications under Linux copied them from
Windows aplications because much of the effort with the Linux Desktop
has focused on making the transition from Windows easier, and I'm
guessing most Windows applications copied them from Microsoft, but did
they originate with Microsoft or did Microsoft take them from
somewhere else?

And yeah, this thread has long stopped really being about the
"easiest" text editor if it ever really was.

On 11/30/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Frankly, at this point I do not understand most of the points in the
> discussion,
> but that is due to lack of knowledge on my part about the working of Linux.
>
> Not really. It has little to do with a lack of knowledge of the working of
> Linux
> and more to do with a lack of knowledge of the power user stuff that you may
> or
> may not want to even try to wrap your brain around just yet, and there's
> nothing
> wrong with that. A lack of knowledge of the internals of advanced Linux is
> far
> different from a lack of knowledge of the working of Linux. You're doing
> fine,
> you're just getting a bit confused by all the techno babble, which is
> understandable.
>
> I believe it was you who started this thread, and the subject is still
> written
> as "What is the easiest and most accessible editor?" The answers you got
> back
> are indeed frightening, and if I didn't know any better, some of them would
> have
> made me run as far away from Linux as possible, as although all of these are
>
> accessible to screen reader users, most of them are anything but easy.
> ~Kyle
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

