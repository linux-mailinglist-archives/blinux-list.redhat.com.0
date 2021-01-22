Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A65EB300DF8
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jan 2021 21:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611348341;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MCQxf3HXF8Uuj2UXmMEoc/C7tBH5mxg3gQKvBPCl2YA=;
	b=cx6v19xk5Ct7Dburhrs4xyc1qdtQLGYi2VW0BwurlQH0nl+I3YSNc6oAOKVU2Oot+LuWip
	s7dv4NaxhiHBdboBjR8B30CXC0jaXocy27TxrYh/YLVNKnR28RA+aw+1GWFTh5L3FVr5OA
	DluwRxpxE/aHbD+q9j+3loc1mR/A3W4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-QkW5k2tEP2aXc50Tdzz52A-1; Fri, 22 Jan 2021 15:45:39 -0500
X-MC-Unique: QkW5k2tEP2aXc50Tdzz52A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9623E751;
	Fri, 22 Jan 2021 20:45:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B566B101E663;
	Fri, 22 Jan 2021 20:45:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A9861809C9F;
	Fri, 22 Jan 2021 20:45:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10MKgSWP001297 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Jan 2021 15:42:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 35801F00FE; Fri, 22 Jan 2021 20:42:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EE82F1004
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 20:42:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D5124800883
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 20:42:25 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-497-JryQQT_kMmCmLQED1aospw-1;
	Fri, 22 Jan 2021 15:42:20 -0500
X-MC-Unique: JryQQT_kMmCmLQED1aospw-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	PAA27778 for blinux-list@redhat.com; Fri, 22 Jan 2021 15:30:40 -0500
Date: Fri, 22 Jan 2021 15:30:40 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: renaming many files
Message-ID: <20210122203026.GN12763@nntp.AegisInfoSys.com>
References: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
Mime-Version: 1.0
In-Reply-To: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Another poster has suggested rename.ul command. But it is not as safe as
the perl-based rename command, which would be used as follows:

   rename -v -n 's/^renewal talk //' "renewal talk *"

The "-v" option says verbose so describe what it's doing.

The "-n" option says don't do anything other than to report what would
be done otherwise (so remove the -n after you're sure the command is
going to do exactly what you want).

The expression in the single-quotes is any perl substitute command, so
can also be used to change lowercase to uppercase, and other tasks), and
note that the change-from field is anchored at the beginning of the
filename (via the caret sumbol), to avoid accidentally acting on
unintended files.

rename.ul acts like the old rename command, but if your system is less than
9 years old, you should check out this newer rename command.

On Fri, Jan 22, 2021 at 13:38:46PM -0600, Linux for blind general discussio=
n wrote:
> I have many files in one directory which have the same two words in the b=
eginning of the name.
> renewal talk 01 eating better
> renewal talk 02 exercise
> and so on.
> With the command line, is there a way of getting rid of =E2=80=98renewal =
talk=E2=80=99 for all files and keeping the other words in their names?
>=20

--=20
Henry Yen                                       Aegis Information Systems, =
Inc.
Senior Systems Programmer                       Hicksville, New York

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

