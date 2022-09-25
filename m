Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FBA5E95D4
	for <lists+blinux-list@lfdr.de>; Sun, 25 Sep 2022 22:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664137014;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=suUPHr4uxrCshps9AhVslnVzYcX0GNRFat/3dZupHxk=;
	b=O/3Gux9ugk6Qa/DYyWqd1VJdWCxXPg1YPtd2Axb5iS7PDeYTelKveJAek/aRnWfNzF0nTQ
	4Pr7BBxuBZ3udf98Xng7spXJ/9M3iV2MfhbFLfbe4nScLyTfvJbA56o7ARX9LjIF5zQRCl
	2Qb3bNMRFp5WyOo7hJNtH6WU6C+28IU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-524-7vT7nkHmN4C6uN_dSrcvew-1; Sun, 25 Sep 2022 16:16:51 -0400
X-MC-Unique: 7vT7nkHmN4C6uN_dSrcvew-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D31FD85A583;
	Sun, 25 Sep 2022 20:16:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CE21B492CA4;
	Sun, 25 Sep 2022 20:16:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7D6BB19465A3;
	Sun, 25 Sep 2022 20:16:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Blind and Low-Vision Unix User's Group <discuss@blvuug.org>,
 blinux-list@redhat.com
Subject: Re: slack in Ubintu?
References: <Pine.LNX.4.64.2209251225030.2246441@server2.shellworld.net>
 <87fsgf7472.fsf@aol.com> <CN5OB5WYJNS2.34IEXFK1NRMYF@archlinux-x220>
Autocrypt: addr=chris@the-brannons.com; prefer-encrypt=mutual; keydata=
 mDMEX37pCBYJKwYBBAHaRw8BAQdASkFrVm/MHGNpj7Oa+nq4b7eBg5LX5qnvS6ojH04ZE9+0LENo
 cmlzdG9waGVyIEJyYW5ub24gPGNocmlzQHRoZS1icmFubm9ucy5jb20+iJAEExYIADgWIQTFfzWT
 HzF7+QWPg09oJ1i8YNj4egUCX37pCAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBoJ1i8
 YNj4esVsAQCJXDxhj5gZjcrNMmSH6Z+X5RDdbvsTRvS5wwQXM3g4kAEAjOrdx/fvZDiKL8dylDhU
 YUVVSkwWeOD2UtmYjm/QtwG4OARffukIEgorBgEEAZdVAQUBAQdAOMaQorDR8QUdM34/Q9mUyBvS
 9WFK0Mb76dHyNkERx2kDAQgHiHgEGBYIACAWIQTFfzWTHzF7+QWPg09oJ1i8YNj4egUCX37pCAIb
 DAAKCRBoJ1i8YNj4eo/8AQC4AX6NMv65KQQU7s95T/1Y4E+Z7KTbvhKJeSjdDfj88AEA/qzPnDvl
 dLmqqNTqsfZCK81teOxSoNhRlhWcQ8QQ/wY=
Date: Sun, 25 Sep 2022 13:10:01 -0700
In-Reply-To: <CN5OB5WYJNS2.34IEXFK1NRMYF@archlinux-x220> (Sebastian LaVine's
 message of "Sun, 25 Sep 2022 13:54:31 -0400")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Message-ID: <mailman.2648.1664137007.6079.blinux-list@redhat.com>
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

> Do you happen to know of any resources on screen-reader friendliness for
> TUIs in general? Is there any particular way screen-readers know how to
> distinguish from actual text and "graphical" elements? Or a way that TUI
> program developers can accomodate that?

Here comes a wall of pontification...

Not really.  As a rule, I avoid TUIs.  Interfaces that exploit the
cursor-addressable terminal seem like the worst of both the text and GUI
world to me.  Essentially, a TUI is just a GUI with a VT100 as the
canvas and typically no underlying object toolkit[1].  But don't let
that discourage you.

I use three types of interfaces.

1. Self-voicing.  I make heavy use of Emacs with the Emacspeak
extension.  Emacs can be a TUI or a GUI program, and with extensions
like Emacspeak and speechd.el, it can be a self-voicing program as
well.  Editing text is a great UI metaphor.

2. Teletype-style programs, either with their own interactive input
loops, or called directly from the shell.  Edbrowse is an example of the
former category.  The reddit client I use, reddio, is an example of the
latter.  There's an excellent opinion piece about teletype-style interaction
written by Karl Dahlke: <https://www.eklhad.net/philosophy.html>.

3. GUIs, when I must.

[1] As a thought experiment, we could imagine an object toolkit for the
terminal: a GTK or QT for the VT100, if you will.  It's been done
before, though I don't remember any citations off the top of my head.
In theory, such a toolkit could provide hooks for screenreaders, to give
a more seamless / less frustrating experience.  That hasn't been done,
and I don't know if it would be worth doing.

-- Chris

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

