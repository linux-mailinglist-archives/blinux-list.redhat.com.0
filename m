Return-Path: <blinux-list-bounces@listman.redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-44.mimecast.com (us-smtp-delivery-44.mimecast.com [205.139.111.44])
	by mail.lfdr.de (Postfix) with ESMTP id A571931D6FB
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 10:27:25 +0100 (CET)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-Xoi9o1BfPWepObJSaBUfaA-1; Wed, 17 Feb 2021 04:27:20 -0500
X-MC-Unique: Xoi9o1BfPWepObJSaBUfaA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 073C485B663;
	Wed, 17 Feb 2021 09:27:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DDBA6A03C;
	Wed, 17 Feb 2021 09:27:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8939618095CB;
	Wed, 17 Feb 2021 09:27:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11H9R1sS024435 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 04:27:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A6F8110545F3; Wed, 17 Feb 2021 09:27:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2EED1043A0D
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 09:26:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCA9A805F16
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 09:26:53 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-371-qRd8zR7QPI2y55hi0otg9w-1;
	Wed, 17 Feb 2021 04:26:51 -0500
X-MC-Unique: qRd8zR7QPI2y55hi0otg9w-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	EAA32671; Wed, 17 Feb 2021 04:23:40 -0500
Date: Wed, 17 Feb 2021 04:23:39 -0500
To: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
Subject: Re: bash is hurling
Message-ID: <20210217092326.GV21290@nntp.AegisInfoSys.com>
References: <alpine.NEB.2.23.451.2102162306390.26855@panix1.panix.com>
Mime-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2102162306390.26855@panix1.panix.com>
User-Agent: Mutt/1.4.2.3i
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
Cc: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@listman.redhat.com>
X-BeenThere: blinux-list@listman.redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@listman.redhat.com
List-Id: Linux for blind general discussion <blinux-list.listman.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@listman.redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@listman.redhat.com>
List-Help: <mailto:blinux-list-request@listman.redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@listman.redhat.com?subject=subscribe>
Sender: blinux-list-bounces@listman.redhat.com
Errors-To: blinux-list-bounces@listman.redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@listman.redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: listman.redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

the "wc" command is returning more than one word, is the problem with "let"=
.
you don't need the "let" anyway, so:

   cj=3D`wc -l chk-jenux.log`

would be enough. but if you want only the count of lines, you either have t=
o
1: isolate the first word from "wc" (the line count):

   realcj=3D${cj%% *}

or
2: do the "wc" without a file name:

   cj=3D`cat chk-jenux.log | wc -l`

note that the first example has a few failure modes, although there are end=
less
other ways to isolate a given word from a multi-word string. i've always
used the second example.

On Tue, Feb 16, 2021 at 11:08:58AM -0500, Linux for blind general discussio=
n wrote:
> I think I need a better shell.
> I wanted to get a line count into a variable and bash doesn't like what=
=20
> I'm doing to make that happen.  The code is:
> let "cj=3D`wc -l chk-jenux.log`"

--=20
Henry Yen                                       Aegis Information Systems, =
Inc.
Senior Systems Programmer                       Hicksville, New York

_______________________________________________
Blinux-list mailing list
Blinux-list@listman.redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

