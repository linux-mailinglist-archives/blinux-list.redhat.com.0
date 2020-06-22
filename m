Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 9B0CD2038E9
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 16:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592835451;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nEPoFAq6AnU8v/0IiNSLcDbv6jI85mr6UnR3SuOfNfE=;
	b=dBdIBpC8DsCOODzBA2Wq05s5exmA+atcOkgr4WwIqfAJjhGnuNiTqw5+ETtGZK+UHR07hp
	X3VTAEwxUuybBF/88LT2d4HIf08I+LfpbXZE25oJbw40NnR8UjrJQN/6iWiO1dOQO/K9or
	BLwBUOowBnJAxaHbSKwiLXOnPccqVMs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-iV8h2L89NwqcJcL4UOlNxA-1; Mon, 22 Jun 2020 10:17:28 -0400
X-MC-Unique: iV8h2L89NwqcJcL4UOlNxA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26CD9107ACF3;
	Mon, 22 Jun 2020 14:17:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 923617C1E7;
	Mon, 22 Jun 2020 14:17:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 79544833A4;
	Mon, 22 Jun 2020 14:17:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MEHFUc011175 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 10:17:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3E7952156A51; Mon, 22 Jun 2020 14:17:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A50D2156A50
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 14:17:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13FBF858F03
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 14:17:13 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-208-4tQH5F0fPnek7Vpt45c_hA-1; Mon, 22 Jun 2020 10:17:10 -0400
X-MC-Unique: 4tQH5F0fPnek7Vpt45c_hA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 49rB722c2dz277k
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 14:07:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id f01s9QzPC53u for <blinux-list@redhat.com>;
	Mon, 22 Jun 2020 14:06:38 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 49rB6Q3Z4gz2738
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 14:06:38 +0000 (UTC)
Message-ID: <20200622.140639.018.15@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: Prospects for an accessible and open version of Android?
Date: Mon, 22 Jun 2020 09:06:39 -0500
MIME-Version: 1.0
In-Reply-To: <CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05MEHFUc011175
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Issue is  euphamism and a clich=E9 word.
That guy has issues.
Versus saying
That guy is nutty as a damn fruitcake.
Another word that falls into the same category is share.
I was at a group meeting last night and one of the panel participants share=
d with us his adventures.
Share is something you use, for example, as  generously distributing. Not f=
or discussion, or talked about.
That's what he means by issue being over-used.
Rob



----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Mon, 22 Jun 2020 13:54:39 +0000
Subject: Re: Prospects for an accessible and open version of Android?

> No piece of sufficiently complex software is perfect(SBL is my
> favorite console screen reader and I wish it was packaged for as many
> distros as espeakup and Fenrir are, but it does have this annoying
> habit that when programs have an updating progress statement at the
> bottom of their output, SBL starts over reading the line whenever it
> updates instead of finishing the read it started, and where this
> progress moves quickly(e.g. the program executing on many small
> inputs), it often never gets to reading the important part of the
> progress statement), and often, which flaws one is willing to put up
> with are just as important as which features one values most when
> selecting between two pieces of software that do similar jobs.
>=20
> That said, I'm curious what the person who said "issues is an overused
> word" or something to that effect meant, especially with how they
> agreed with the person they were quoting just replacing "issues" with
> "problems". I realize this is probably an argument of definitions, but
> I've always thought of these words as synonyms and unlike words like
> "affordable", "inexpensive", and "cheap" where there is the same
> denotation but quite different connotation, I consider "problem" and
> "issue" to be the same in both denotation and connotation.
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>=20
>=20


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

