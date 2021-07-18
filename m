Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1E64C3CCA0A
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 19:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626629530;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/TwXnoOvXdRbNCd6Lyia6PPfNrOwTHzGnDZ8i1LttBs=;
	b=f4jPmREda6TVM8B8H/zELKvShUIUbs9hJkfqtCVyW/3V9QO+RTskgFvgRd7gAtzvhyXegD
	8p5kwC9fdQU6kHe+pmFlJWFZdRYFIK4hFt9+6UQ9BLb48IueUZOmeXc+8THjB4gSffedy9
	cB+iV4zU4hdO4cbh5uJJmxIPdj3VD1I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-tQ9b9UNqOBemFyK_jPqxUw-1; Sun, 18 Jul 2021 13:32:08 -0400
X-MC-Unique: tQ9b9UNqOBemFyK_jPqxUw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE6D98030D7;
	Sun, 18 Jul 2021 17:32:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B53675DAA5;
	Sun, 18 Jul 2021 17:32:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F26584EA2A;
	Sun, 18 Jul 2021 17:32:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IHVxdR024616 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 13:31:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1929421686AC; Sun, 18 Jul 2021 17:31:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14AA121686A9
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:31:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00AC5185A7A4
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:31:55 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-531-hO4L8K64NOqFTO3c-xWuLA-1; Sun, 18 Jul 2021 13:31:52 -0400
X-MC-Unique: hO4L8K64NOqFTO3c-xWuLA-1
Received: by mail-qt1-f172.google.com with SMTP id w26so11319850qto.9
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 10:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=0tO/jYxwTfJCtYI8/eREYE/8Sn64Akhwhq2Xxjem/nU=;
	b=RergURJG5HEy9oLrXVXQerIdfc2nk5fJGaioLbzZzZJfpAz/8agD63EKxIpQeYzi2t
	9MFNnBjT3iQYclD6W8LE8Xii59nPzDFQ4Zqce3Nk/3itRlGqod5TCiITMC/GnqV0w7YX
	TGJt46FnBe08h9M/ckoluOGflk7vrL3iz+Z0bedpa/A1LQWw5Lzam5nIWV54GAac6KCE
	1pm1dDaV/xPLv7qBuOeOuLwRFAR49/Whcg99aSJ7wJH1nBj1HXExmpt4y30QfaqBonYl
	GN9MSElY0g8NfFWwz1XK8ss5I9WRwUxQzRiCepK/l8t3BCsmYud/o6hth02yuwh3Nr+4
	MECg==
X-Gm-Message-State: AOAM533TsP9VBKmqovpDJ0qoOlbHp74JQvQb8zdhljefJQUVyKbUeoJ3
	B7VMVxkpSErieiOLS4afYjWiseVBdSrhBf1D7rvMrlH7
X-Google-Smtp-Source: ABdhPJy59ssjTqyhCIjAkZ0NyZzU9lfOfCnvB8lN46JHZSjGjmSKKqlOPOUrFYptRg/9FiqAUHDdwxt87Nv+NSseR7M=
X-Received: by 2002:ac8:7645:: with SMTP id i5mr18801676qtr.133.1626629511392; 
	Sun, 18 Jul 2021 10:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
	<CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
	<alpine.NEB.2.23.451.2107181324090.12858@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107181324090.12858@panix1.panix.com>
Date: Sun, 18 Jul 2021 19:31:37 +0000
Message-ID: <CAD_4ddTj4QJJ0afkXMVmb2mHY5pCHbJDtEb9u8XDx9Uorj7eZw@mail.gmail.com>
Subject: Re: espeak-ng on archlinux
To: Linux for blind general discussion <blinux-list@redhat.com>
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

Hello there,

I haven't created any espeak-ng.service file to make systemd start it at
boot, when speech-dispatcher starts, espeak-ng starts as well or something.
I used arch's new guided install script, or archinstall, which simplified a
lot of things for me.
I tried with pulseaudio and pipewire and it worked no matter what.
I just use pipewire because I find it more likable.
Best regards.
francisco.

On Sun, Jul 18, 2021 at 5:26 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> The only item not installed yet is pipewire.  Did you write a
> espeak-ng.service file to bring up espeak-ng on boot up?  I haven't done
> that yet and have to manually start it after login.
>
>
> On Sun, 18 Jul 2021, Linux for blind general discussion wrote:
>
> > Hello there,
> >
> > It works for me here.
> > Did you install speech-dispatcher, alsa-utils and alsa-plugins? Did you
> > install pulseaudio and all related stuff as well?
> > I am using pipewire here, but it works without a hitch anyways.
> > If you're trying to get a screen reader running on the graphical user
> > interface, make sure to install orca as well.
> > Best regards.
> > Francisco.
> >
> > On Sun, Jul 18, 2021 at 4:29 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> > > I got espeak-ng partly working but not completely.
> > > When I key a line in and hit enter, espeak-ng speaks what I keyed in.
> > > That is all espeak-ng does.  So far as I can tell no espeak-ng.service
> > > file exists to enable and start espeak-ng when the system boots either.
> > > Finally, if during an archlinux installation espeak-ng is installed
> rather
> > > than espeak it's possible it's not pulling dependencies espeak-ng
> needs to
> > > speak.
> > > It would be nice if espeak-ng would speak what the computer puts up on
> the
> > > screen after I type a command but this isn't yet happening over here.
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

