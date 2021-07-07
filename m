Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DF4643BE8FC
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 15:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625665715;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ce+GK+4/Nt/od5zU6rnZ9IsJbIYlEXxTV84CZZi9cVE=;
	b=L4X60NUGy/bQnRPfIfVHvD8tA8iThB+9X1PmAbr7qZbMtwvZGObU+d6vxC8vYEmUkhthDI
	i+YeMJzEAixt7iz+6n3NY/146TRqOQJy5Jrh8bmOhFVCojtUgJewc7xNVZYWcaLrvldl5G
	PmhmD3iwY6ZJ69ZnuB8Xzn5cZtRhmXk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-JB2AqbqRMgOfhXDvqNJlKg-1; Wed, 07 Jul 2021 09:48:33 -0400
X-MC-Unique: JB2AqbqRMgOfhXDvqNJlKg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78D93A40C3;
	Wed,  7 Jul 2021 13:48:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E1275D9D3;
	Wed,  7 Jul 2021 13:48:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B62654E9F4;
	Wed,  7 Jul 2021 13:48:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167DmLoI020583 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 09:48:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 590FD10F1CC7; Wed,  7 Jul 2021 13:48:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 539C210F1CD2
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:48:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 36CE2180F6E3
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:48:18 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-332-lpb14smxMiCfe0WwQ78M9A-1; Wed, 07 Jul 2021 09:48:15 -0400
X-MC-Unique: lpb14smxMiCfe0WwQ78M9A-1
Received: by mail-io1-f49.google.com with SMTP id d9so3502301ioo.2
	for <blinux-list@redhat.com>; Wed, 07 Jul 2021 06:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=1+r/NRhxAj310PGkB5xXXrUgRDPp+aMs/xa8vqnH0Gg=;
	b=jpoTTK9ZLzGqKsnsV77BVExkJ8z+bJf7ycigkP96AQzDlOgVkVeg4d0l7Bi4uWhBAt
	2/I7sioyQfatnMGGOK/4rpegHNEd5TT5AXTr7FXIKCotvg1n/yGrDr5tOfJDHcowSDOh
	VRi6/p+K62UwJj2TBvbi55GWC6J6YDPGAd7DiEp0RDu6q1i8KOugypyxUSVyLJAUWwek
	DYhKpo3gKk1sMpKrcb/eUSSso/Suk+U2TC1hUU9fzbCZfVePtLasfk1UY6khXXjLhgX7
	0IIWesjB7oEsW8I2meWTzQTskTahWVHJDT8LoV/KNtFTPoHQOGU5BaKTEOlC4aWPrhK3
	4yxg==
X-Gm-Message-State: AOAM533Dup8wtxfHA9WZClap8yDhlwvNCOP7XXOjGkQk5GNMzj5pI2+j
	3Vf/J5JLcBM25hMQghBxO8kRU4UOY0M+7igRZWKuYkoo
X-Google-Smtp-Source: ABdhPJyJZ81N7s815juhvXqq2f4RR8AX3zpuluwEQSonGAEKlsR/5rI6CegG9U6/abt0ScUnxA2mmC63FRlMk4URbn4=
X-Received: by 2002:a05:6602:134f:: with SMTP id
	i15mr20100783iov.143.1625665694646; 
	Wed, 07 Jul 2021 06:48:14 -0700 (PDT)
MIME-Version: 1.0
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
In-Reply-To: <alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
Date: Wed, 7 Jul 2021 08:48:06 -0500
Message-ID: <CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
Subject: Re: Starting linux again
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Just make sure Debian supports all of your hardware first. My Acer
Espire E-1574... or 1575... worked on Arch install but not when trying to
install Debian. Also be aware that many packages will probably be versions
out of date of upstream, so missing features and possible fixes. Besides
that it would probably be a good console system.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Jul 7, 2021 at 8:40 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> That's great news! I had seen a comment somewhere about debian no longer
> having an accessible install but if it still does, I will definitely go to
> that first.
>
>
>
> --
> Cheryl
>
> May the words of my mouth
> and the meditation of my heart
> be acceptable to You, Lord,
> my rock and my Redeemer.
> (Psalm 19:14 HCSB)
>
> On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
>
> > Hi,
> >
> > I'd still use Debian because IMHO it is the best distro regarding
> > accessiblity support, easy and uncomplicated installation for a blind
> user
> > with braille and speech, e.g. I am using Debian for more then 20 years
> now
> > and I not missed anything. I am also working in the console most of the
> time.
> >
> > Cheers,
> >
> >  Schoepp
> >
> >
> > Am 07.07.2021 um 14:37 schrieb Linux for blind general discussion:
> >> I've been very busy the last few years and have been using the terminal
> on
> >> my Mac for a lot of the things I used to do in linux. Now I would like
> to
> >> get a laptop for linux again. I mostly want it for command-line use
> rather
> >> than for the gui though I suppose I may end up expanding to that at
> some
> >> point. I mostly used debian when I was using linux with a few
> excursions
> >> into arch. I am totally blind and use speech and braille but the more I
> can
> >> use braille, the happier I am. I used thinkpads a lot and also
> converted
> >> old Apple machines but I don't have a spare Apple computer right now
> and
> >> probably would go for Lenovo. Can somebody tell me which dists are now
> the
> >> best for installing linux, especially knowing that I want to use the
> >> command line a lot? If I get a Lenovo with linux on it, am I probably
> going
> >> to want to reinstall anyway and how hard is that nowadays? Obviously
> this
> >> email is prompted a lot by the thread about getting a laptop for linux.
> It
> >> really feels funny writing about th
> > is
> >>    as if I was a complete novice when I used to install and set up
> systems
> >> all the time but I guess one has to restart somewhere.
> >>
> >> The only problem I had with my Lenovos, and this was after years of
> use,
> >> was having the fan quit. Some of this was just the age of the Lenovos
> but
> >> it seemed to me that it was becoming harder to know how to set up the
> >> system so the fan worked right where at the beginning of my use of
> linux I
> >> never had to pay attention to fan settings. It may of course be that it
> was
> >> mostly the age of the laptops - I got years of use out of them - but
> I'm
> >> still a bit hesitant because of that.
> >>
> >> I know this email covers a lot of territory - I'm basicly thinking out
> loud
> >> - so just respond to whatever you know and can address.
> >>
> >> Thanks for any suggestions.
> >>
> >> Thanks.
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >
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

