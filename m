Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6970C5706E6
	for <lists+blinux-list@lfdr.de>; Mon, 11 Jul 2022 17:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657553008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pt/DUN7GNuPzUs757vPOtVh1FXI/qc2mPyaGjn3NZGk=;
	b=D/sNms4Jhk5ZHjsdCE8wgYedhVFpIUZ57RHUOpN7jGH/0R1WAJwTjQ9PGzgWU3Bhpf0S7U
	6YU43sg54MdcZCd7LCcILqKVtISaSrjL7W8cw2ScbxnYqkQWLpf3e7QZjKYdCTV5uno4ZL
	e7VKxu8LtIQpqkfGTgC6fDG0veR/xwE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-nnIOuArLPNaTX7jlxBVHaQ-1; Mon, 11 Jul 2022 11:23:19 -0400
X-MC-Unique: nnIOuArLPNaTX7jlxBVHaQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C1CD101E985;
	Mon, 11 Jul 2022 15:23:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 76877C04482;
	Mon, 11 Jul 2022 15:23:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 357D6194705F;
	Mon, 11 Jul 2022 15:23:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Jul 2022 16:23:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I3wm, any progress?
To: blinux-list@redhat.com
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.32342.1657440361.111208.blinux-list@redhat.com>
 <mailman.32667.1657446476.111209.blinux-list@redhat.com>
 <mailman.32023.1657544590.111207.blinux-list@redhat.com>
 <mailman.32711.1657550119.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.32711.1657550119.111202.blinux-list@redhat.com>
Message-ID: <mailman.32548.1657552992.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Exactly. I'm looking through Solus's packages rightg now and they offer 
three or four desktops, plus several window managers. Mate has issues, 
at least on this specific distro, i.e. locking up when certain apps 
exit, completely locking up to the point of needing to force the power 
off to shut my laptop down. THis mainly still happens with Chromium apps 
as well, yes.


Now if I could work on getting Arch to boot on my laptop, I could nring 
my Ratpoison script over.

See I feel like, and correct me if I'm wrong, this unspoken attitude of 
I /must/ use Mate/ because I've been taught it';s the most accessssible. 
Which I don't buy into, at all. I mean, I want a WM on my system because 
it is infinitely more productive for me. However I'm missing the ability 
to, say, use the volume up/down keys on my laptop in a bare bones WM and 
not found the package for that yet however.


I only use about 5=10% of what Mate offerrs up, to me that's wasted 
resources.

See if I could do voice calls in a command line way, I'd be okay with 
ditching a DE, closest I'vee got is a WM like Ratpoison that's insanely 
lightweight and lets me do most of what I'm after.

Sidenote: Can I build Ratpoison from source? It doesn't ship in Solus at all

On 7/11/22 15:35, Linux for blind general discussion wrote:
> I can't speak for anyone else, but the main reason I don't use mate or
> Gnome, or any other full Desktop Environment is because I have no need
> for the majority of the functionality a DE provides, and am happy
> doing nearly every thing from the Linux console with a console screen
> reader. Heck, if I ever found a text-only web browser that was a
> decent replacement for Firefox, I'd probably ditch the GUI altogether.
>
> The only reason I use a Window Manager at all is because the script I
> use to launch a stripped down xsession for just Firefox and Orca
> requires a window manager and it being my understanding that while you
> can run a single GUI app without a Window Manager, any child windows
> created will be inaccessible without a Window Manager... I'm currently
> using flwm as my window manager, not because of any specific features,
> but because it has the fewest dependencies and smallest disc usage of
> the Window managers I've tried with the aforementioned script that
> works with Firefox+Orca with a completely default config for the
> window manager(can't remember which, but there was at least one window
> manager I tried that was smaller than flwm, but resulted in Orca and
> Firefox being completely unresponsive).
>
> That said, the question seems a bit out of place... After all, one of
> Linux's biggest selling points is that it gives you options as to how
> you interact with your computer instead of trying to force you into
> doing things the way the OS maker wants you to do things, and the
> ability to choose between the many full-featured Desktop Environments
> and the even greater number of stand alone window managers is part of
> that.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

