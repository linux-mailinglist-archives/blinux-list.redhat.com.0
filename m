Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F28C14AF966
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 19:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644430430;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=23BW/sO8GMbvnrOVSESdYvbfLSx0y3xom7TyGcUfUzU=;
	b=WjYr5BHxcjg0R6Ul0d8oNrYKPWnApTlIBAwRwqTouIQ8Z0gywZPSUby0XN+tKPzQ7MztmD
	Sv+m3jPKw/wQADu1iFM4ZDfRnOAY48u3uL9vkclxu5onlSii+Tx6w8LDIqomfrJdovQ13T
	Ctnx6SkyJGpAT3Ow+L1C1g5ry6wzhOk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-674-4oQ9lQczN56r4zKEesU6ew-1; Wed, 09 Feb 2022 13:13:46 -0500
X-MC-Unique: 4oQ9lQczN56r4zKEesU6ew-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 585D58144E3;
	Wed,  9 Feb 2022 18:13:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14CC710A4028;
	Wed,  9 Feb 2022 18:13:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08AF11809C88;
	Wed,  9 Feb 2022 18:13:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219IDQ7G027989 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 13:13:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 799B9401E66; Wed,  9 Feb 2022 18:13:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 753D5401E78
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 18:13:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B7E4106655A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 18:13:26 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[74.220.211.17]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-127-aEili4DMN7qmPe0g4K_u9g-1; Wed, 09 Feb 2022 13:13:24 -0500
X-MC-Unique: aEili4DMN7qmPe0g4K_u9g-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id BB076200A01B6
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 11:51:13 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id Hr7ZntUH4cfn8Hr7ZniCv6; Wed, 09 Feb 2022 11:51:13 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:65131 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nHr7Z-002fbC-Fg
	for blinux-list@redhat.com; Wed, 09 Feb 2022 11:51:13 -0600
Date: Wed, 9 Feb 2022 11:51:12 -0600
To: blinux-list@redhat.com
Subject: Re: regex help
Message-ID: <20220209115112.077dcede@bigbox.attlocal.net>
In-Reply-To: <CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
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
X-Exim-ID: 1nHr7Z-002fbC-Fg
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:65131
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Tim here, replying inline.

> rename.ul "." " " *.txt
> repeat until all periods are gone.

Because this wil turn "dave.txt" into "davetxt", removing the period
before the extension (I see your process puts them back in after the
fact), I'd solve this with the Perl "rename" utility using

  's/(?<=\b[[:alpha:]])\.(?=.*\.[^.]*$)//g'

This requires that there be at least one period (the one before
the extension) after any period that is removed.

> rename.ul "  " " " *txt
> repeat until double spaces are gone.

Similarly, you can consolidate all sequences of spaces in one pass:

  's/  +/ /g'

Additionally, these can be combined with a semicolon in the same pass:

  rename -n 's/(?<=\b[[:alpha:]])\.(?=.*\.[^.]*$)//g;s/  +/ /g'

I have one huge ugly command that cleans up the podcast filenames in
my queue, removing troublesome characters (a "#" character in the
filename trips up my player, and I don't like periods & spaces,
swapping them to underscores and then condensing multiple runs of
them down to a single underscore).  Once you've gotten the command
figured out, I put it in a shell-script and don't have to ever think
about it again. (smile)

> So while we're on the subject of renaming stuff, can anyone suggest
> a more current rename utility where doing a simple search and
> replace on all files in the working directory is as simple as:
> 
> command "string to replace" "string to replace with" *

While not exactly what you're asking, for individual files, I often
use shell brace-expansion like

  mv long_file_{previous_bit,new_portion}_example.txt

which can save a lot of typing.  This also works nicely for taking
backups of a file like

  cp important_file.txt{,.bak}

Hope this gives you some more options to work with (and if you have
regex questions, I'm a sucker for playing with them, often hanging
out in /r/regex on Reddit helping folks there)

-tim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

