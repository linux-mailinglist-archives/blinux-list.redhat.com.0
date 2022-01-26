Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B40B49D236
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 20:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643223869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mK3g2a4GYEBqgCDJuviLpFFVhBiN9wSoNz7Vum5Fmb0=;
	b=OHnHF9PujvWU1YBPGZMdeTP6gGYK4VaVU4PkjpCcwu2iSQ9rucpHpDmEbM9/vEIkPLC5YN
	Pa/zZwKjt0T99B2yxHgDnmBNtaL2jhZCwjxjTxKjbeHFf4S4EhyMfWxAarrMi9BB/kEr23
	DQjJYqhfoWKE5RlNLORoue93JoZD/FQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-vZwVG0mMNUuXm8eQ6oyi9Q-1; Wed, 26 Jan 2022 14:04:25 -0500
X-MC-Unique: vZwVG0mMNUuXm8eQ6oyi9Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C8E0344B6;
	Wed, 26 Jan 2022 19:04:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 564F060C04;
	Wed, 26 Jan 2022 19:04:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B35454BB7C;
	Wed, 26 Jan 2022 19:04:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QJ48QO016334 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 14:04:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C5251C23DCC; Wed, 26 Jan 2022 19:04:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C081BC23DCB
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:04:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4DD6811E76
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:04:08 +0000 (UTC)
Received: from gateway13.unifiedlayer.com (gateway13.unifiedlayer.com
	[70.40.204.23]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-9-_JNa4rLHNt2tTpHOatYcmw-1; Wed, 26 Jan 2022 14:04:05 -0500
X-MC-Unique: _JNa4rLHNt2tTpHOatYcmw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway13.unifiedlayer.com (Postfix) with ESMTP id 8693F2009EBC3
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 12:40:57 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id CnE1nHTIEtGNQCnE1nsvmd; Wed, 26 Jan 2022 12:40:57 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:57913 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nCnE1-003Ekf-9I
	for blinux-list@redhat.com; Wed, 26 Jan 2022 12:40:57 -0600
Date: Wed, 26 Jan 2022 12:40:56 -0600
To: blinux-list@redhat.com
Subject: Re: Converting text to mp3
Message-ID: <20220126124056.239f2e2f@bigbox.attlocal.net>
In-Reply-To: <d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
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
X-Exim-ID: 1nCnE1-003Ekf-9I
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:57913
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here

> it will read Czech text in English.

I'm afraid I don't have much input on this, but

> dividing the mp3 file to more files with 10 minutes length?

I use "mp3splt" (that's "MP3 split" without the letter "i") to chop
up my MP3 files without losing audio quality

http://mp3splt.sourceforge.net/mp3splt_page/documentation.php

So to split in 10-minute increments, you should be able to

  $ mp3splt file.mp3 0 10 20 30 EOF

to split into 4 files, the first 3 of 10 minutes each and the last
one containing the rest of the MP3.  If you have a bunch of them, you
can use shell expansion to make that easier:

  $ mp3splt file.mp3 0 {1.50}0.0 EOF

will split from 0-10 minutes, 10-20 minutes, 20-30 minutes, etc, up
to 500 minutes through the end of the file.

There are a bunch of other options for nudging split-points based on
silence detection (helps prevent cutting off one file in the middle
of an utterance), the format for the output filenames, adjusting MP3
tags for the output, and doing a dry-run to test before actually
doing the work.

I use it regularly to hack off podcast advertisements that fall at
the beginning/end of a file (there's one I listen to that has roughly
7 minutes of ads & filler at the beginning of a 2-4hr podcast, so
hacking off the first 7 minutes loses almost nothing)

Hope this helps,

-Tim




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

