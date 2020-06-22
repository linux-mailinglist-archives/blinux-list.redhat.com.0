Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id C92D9204372
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 00:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592864334;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u2uF8uHR3QO7YQyUs+06mqNbpx53auuIFk3xMZiD750=;
	b=O9ptepjYYnUPU4HyPAB7k7vWsJz8eK1jK+7AvSghWv4X/72JDEH83tFmsHrOg3RwpVEr3N
	8CiM/begqo9BxNBApHFeQSJhOJaNOvqP2cGs33j2UyeGHS9HyFkJ+6LWzx191Uza1iaf5h
	miTonZ31Z6v7wZ+W9Xk4y9IJyATG9tU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-Ee8UBkq2PFKDc4yscoaCVw-1; Mon, 22 Jun 2020 18:18:52 -0400
X-MC-Unique: Ee8UBkq2PFKDc4yscoaCVw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE4AE8005AD;
	Mon, 22 Jun 2020 22:18:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D22C67CAD9;
	Mon, 22 Jun 2020 22:18:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 952151809547;
	Mon, 22 Jun 2020 22:18:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MMIXac001624 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 18:18:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 19B1F2166BA0; Mon, 22 Jun 2020 22:18:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 152112156A51
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 22:18:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 175F0811768
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 22:18:30 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-401-Yzgh-7OlN_eQ9qYD3f5oZQ-1; Mon, 22 Jun 2020 18:18:27 -0400
X-MC-Unique: Yzgh-7OlN_eQ9qYD3f5oZQ-1
Received: by mail-ot1-f47.google.com with SMTP id t6so14539541otk.9
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 15:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=uStCtbDp5XeoBVGJ5T000FC8HvI+p1FkBZUsuC54PUs=;
	b=RH7Hzmcu5v4lNiahGdfNI8xav+gkyTwsA2GrBZb1XE7izZV4UrAEDLy8R9RVb4Vbwg
	cgNgYMD6PoSVvDz0TuFISvWzyoB0cPHnyEKzyA2iQ0/ctzuxY1FHN7xTqTtxeU7wSX3d
	iw1mR1jev5mCpEMJrUUcm9Mh+G5hAarsgtDdvTRtVNgqlv0IDoul3EI1tuqqFKNEfPYz
	G2wjG3pgfOGwYa5Iich/l7e/bl+OF7Sc7MvfRHcBM46dEC/UM922KOsFWyAyPftL2xa7
	qK5sh7cLTZLm15hGXZV4UnOB9RQeWFxRTedxwwAA24mdkO1mfkgpag8TUNMLXFh32eVX
	1oOQ==
X-Gm-Message-State: AOAM531wF6+iSPl4FzY5z/DFR4fLmWEaLrxG5oBeDhDVG5RR3xANfi7f
	VdBm/OlQ7bN4ZexN7LHDdWRMCKR3XI4=
X-Google-Smtp-Source: ABdhPJyhqqekG7ioDM5MEQIbT5qUYvRwbg5/M2zWjNAIBcedbdmqOLsHXkGcRUMkWRtqiLwQZKs3Rw==
X-Received: by 2002:a9d:5ccd:: with SMTP id r13mr14659843oti.47.1592864306628; 
	Mon, 22 Jun 2020 15:18:26 -0700 (PDT)
Received: from DESKTOPIOCCUEU (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	m83sm3535076oig.51.2020.06.22.15.18.25 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Jun 2020 15:18:26 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>	<alpine.DEB.2.22.394.2006141355001.3348482@chime>	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>	<20200615100242.GC2180@rednote.net>	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>	<20200616065933.GF2180@rednote.net>	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>	<20200621074757.GA2690@rednote.net>	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>	<020601d64807$b2b22a80$18167f80$@gmail.com>	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@[192.168.1.130]>
In-Reply-To: <20200622.140639.018.15@[192.168.1.130]>
Subject: RE: Prospects for an accessible and open version of Android?
Date: Mon, 22 Jun 2020 17:18:22 -0500
Message-ID: <004701d648e3$0ac2e850$2048b8f0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQGZK+slG/6BXdlfubFJMhEMIF5qtwN8W6m9AcJ9lQUCfMUCAQHjg/2hAi05LQYCG/ux1QJDBQUxAbw+VEYCCX2Q7AJCrGmEAgjYqmwCIScjzQIYfXTXAlTZhqACGNySsQHLgQs7AkZV8ZEBd4AYyKgr/eyA
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05MMIXac001624
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hmm, I'm not buying this at all. I suppose issue could be over used, but I'=
m
finding it hard to see it as euphemistic or a clich=E9. As a software
engineer, I use issue as a generic term. For example, I don't know yet if
we're talking about a bug, a new enhancement, a user error or a missed
requirement, so until we investigate and make this determination, it's an
issue. I could use the word problem, but I don't find this any different,
and it has a more negative connotation then I want to associate with a
feature request. In your example below, I think saying someone has issues i=
s
perfectly acceptable, unless you=92re a professional making a clinical
diagnosis and then I'm pretty sure you wouldn't use the phrase nutty as a
fruit cake.

Note I can't tell what the specific use here is in question since the threa=
d
below was truncated. I find it kind of interesting (which is definitely a
euphemism) that someone is making it a campaign to have people stop dilutin=
g
the word issue, which I suppose is a good thing, because it made me think o=
f
my use of the word issue.

I can't tell where you came up with this definition of share. According to
the Merriam-Webster dictionary at
https://www.merriam-webster.com/dictionary/share here are some definitions
of the word share as a transitive or intransitive verb:

1a: to partake of, use, experience, occupy, or enjoy with others
b: to have in common
they share a passion for opera
...
3: to tell (thoughts, feelings, experiences, etc.) to others =97often used
with with

--
Christopher (AKA CJ)
Chaltain at Gmail

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Monday, June 22, 2020 9:07 AM
> To: blinux-list@redhat.com
> Subject: Re: Prospects for an accessible and open version of Android?
>=20
> Issue is  euphamism and a clich=E9 word.
> That guy has issues.
> Versus saying
> That guy is nutty as a damn fruitcake.
> Another word that falls into the same category is share.
> I was at a group meeting last night and one of the panel participants
shared with
> us his adventures.
> Share is something you use, for example, as  generously distributing. Not
for
> discussion, or talked about.
> That's what he means by issue being over-used.
> Rob
>=20
>=20
>=20
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Mon, 22 Jun 2020 13:54:39 +0000
> Subject: Re: Prospects for an accessible and open version of Android?
>=20
> > No piece of sufficiently complex software is perfect(SBL is my
> > favorite console screen reader and I wish it was packaged for as many
> > distros as espeakup and Fenrir are, but it does have this annoying
> > habit that when programs have an updating progress statement at the
> > bottom of their output, SBL starts over reading the line whenever it
> > updates instead of finishing the read it started, and where this
> > progress moves quickly(e.g. the program executing on many small
> > inputs), it often never gets to reading the important part of the
> > progress statement), and often, which flaws one is willing to put up
> > with are just as important as which features one values most when
> > selecting between two pieces of software that do similar jobs.
> >
> > That said, I'm curious what the person who said "issues is an overused
> > word" or something to that effect meant, especially with how they
> > agreed with the person they were quoting just replacing "issues" with
> > "problems". I realize this is probably an argument of definitions, but
> > I've always thought of these words as synonyms and unlike words like
> > "affordable", "inexpensive", and "cheap" where there is the same
> > denotation but quite different connotation, I consider "problem" and
> > "issue" to be the same in both denotation and connotation.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

