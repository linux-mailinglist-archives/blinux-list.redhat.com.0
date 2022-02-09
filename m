Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6044B007F
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 23:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644446633;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nekvKFKWB50mek1w5/UqsLkGnWe6G6F1FZYR7OZQjaY=;
	b=EUo9pW48lJuZJYTwG1PTbTeXIwbjiBv15q/6rGmb0JLix8hX2kLF/wHZUZobzEOw3LPwLR
	BmyMpnGgti0Y1fOpt8MJfi0tEO9tKJv5QvtR+bLgx2sRp8GJXulCkr4y4hEK7HtvGG6sVO
	nLxZ4gUXmx1FArgiHX5brG2pdOA3Lqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-575-EDI5rn3NNZ-g0zVqv-rVrg-1; Wed, 09 Feb 2022 17:43:49 -0500
X-MC-Unique: EDI5rn3NNZ-g0zVqv-rVrg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E05F4100C660;
	Wed,  9 Feb 2022 22:43:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ECF84CEEE;
	Wed,  9 Feb 2022 22:43:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09AB71809C88;
	Wed,  9 Feb 2022 22:43:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219MhUuc021797 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 17:43:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AE07E141ADA5; Wed,  9 Feb 2022 22:43:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA012141DED4
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 22:43:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76F1D1C05EBB
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 22:43:30 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.24.105]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-379-FJ6sO-YnP-qNfX-Z8g4rTQ-1; Wed, 09 Feb 2022 17:43:28 -0500
X-MC-Unique: FJ6sO-YnP-qNfX-Z8g4rTQ-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id BC6CD20099453
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:43:25 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id HvgLnwhpPv5IUHvgLnMOED; Wed, 09 Feb 2022 16:43:25 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:50471 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nHvgL-002rZf-Fa
	for blinux-list@redhat.com; Wed, 09 Feb 2022 16:43:25 -0600
Date: Wed, 9 Feb 2022 16:43:24 -0600
To: blinux-list@redhat.com
Subject: Re: shell brace expansion (was "regex help")
Message-ID: <20220209164324.18d9bafa@bigbox.attlocal.net>
In-Reply-To: <CAO2sX33Be721PG40oKJY6C9BuZcDJcEpZAAU22L+tTgQnftfnQ@mail.gmail.com>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
	<CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
	<20220209134336.72a59209@bigbox.attlocal.net>
	<ddfd6124-1054-6f85-0b18-3a4da344a557@slint.fr>
	<CAO2sX33Be721PG40oKJY6C9BuZcDJcEpZAAU22L+tTgQnftfnQ@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1nHvgL-002rZf-Fa
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:50471
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim again, replying inline

> whatever's in the braces is treated as a comma separated array of
> strings and whatever string the braces are part of gets duplicated
> for each entry in the array

Exactly.

> multiple sets of braces, a test I just did suggests the expansion
> covers the entire Cartesian product

Also correct.

> Is there a way to define a range? I tried:

As Didier pointed out, this functionality isn't defined in POSIX, so
it depends on which shell you're using.  In most Linux distros, that's
bash which has both the above string brace-expansion, as well as
numeric-range expansion:

  $ echo {1..5}
  1 2 3 4 5
  $ echo {1..10..2}
  1 3 5 7 9
  $ echo {5..1}
  5 4 3 2 1
  $ echo {10..1..-2}
  10 8 6 4 2

whereas under the ksh shell on my OpenBSD box, it supports the string
brace-expansion, but not the numerical-range form.

So for some test cases, I've been known to use that Cartesian product
to do things like

  $ mkdir -p {a,b,c}/{x,y,z}
  $ echo hello | tee {a,b,c}/{x,y,z}/{1..5}

which produces 45 files in nested directories.

-Tim



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

