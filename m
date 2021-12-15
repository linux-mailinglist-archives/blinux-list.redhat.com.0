Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D407475100
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 03:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639535875;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yPGngMqViDaCViWaMXAbT4a1s4/TlVxIRVoUJl/FG/o=;
	b=Y/J7LjhnZUcWO+suh5zCBC0aVWIMmoTvf4CjL3472QgGHFwpVaNIK90S0D3O30UGRwFeaJ
	brTY39U41/H+fFlsWi5/ti5/Xo5k8z4LR7p5y1Uahjv4it1pZUQ+BaKgKh98ctJDI/DWMh
	m16Hdvri3SJj/a7vmP966PCXGpws2lM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-X54xPrtMO2u2x_fFm1XlPA-1; Tue, 14 Dec 2021 21:37:51 -0500
X-MC-Unique: X54xPrtMO2u2x_fFm1XlPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AD711023F5C;
	Wed, 15 Dec 2021 02:37:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB9E2752AF;
	Wed, 15 Dec 2021 02:37:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD11718077BC;
	Wed, 15 Dec 2021 02:37:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BF2ZdYZ017995 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 21:35:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1D7861402404; Wed, 15 Dec 2021 02:35:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18C7E1402403
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 02:35:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DAB8D3C00143
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 02:35:38 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.28.149]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-486-VKMb7KULO_qJeHJezQsTiA-1; Tue, 14 Dec 2021 21:35:36 -0500
X-MC-Unique: VKMb7KULO_qJeHJezQsTiA-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 427ED20099158
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 20:13:13 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id xJn7msKFltGNQxJn7mXnVg; Tue, 14 Dec 2021 20:13:13 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:28369 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mxJn6-003nPT-W1
	for blinux-list@redhat.com; Tue, 14 Dec 2021 20:13:13 -0600
Date: Tue, 14 Dec 2021 20:13:11 -0600
To: blinux-list@redhat.com
Subject: Re: Lightweight terminal with select all?
Message-ID: <20211214201311.67a9d06b@bigbox.attlocal.net>
In-Reply-To: <083d5bb4-eaf1-878f-c2d2-364846172c9a@gmail.com>
References: <083d5bb4-eaf1-878f-c2d2-364846172c9a@gmail.com>
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
X-Exim-ID: 1mxJn6-003nPT-W1
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:28369
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I usually run within tmux which gives me a scrollback
"copy mode" I can navigate and copy portions.  So I might do
(assuming control+b is my prefix-key)

   control+b
   space (starts the selection)
   g  (goes to the top)
   enter (ends/captures the selection)

I can then use

   tmux showb

to dump that to standard out (or pipe it to a file or some other
program if I need) such as

   tmux showb > scrollback.txt

or

   tmux showb | grep -i "spatula"

or even send it to a remote machine

   tmux showb | ssh me@example.com "cat > scrollback_remote.txt"

There might be terminal-specific was to do similar things, but tmux
works in all of them.

Here's hoping that gives you something to work with,

-tim

On December 14, 2021, Linux for blind general discussion wrote:
> So quick question.
> 
> What's a good, lightweight, Orca friendly terminal that I can
> select all the text and copy with? Lxterminal doesn't, unless I
> don't know the key combo, have a select all option?
> 
> I'm looking for one where, much like the Mate one, I can select
> all, copy, then paste into (say) a nano document on another tab.
> 
> Basically after something with few dependancies that I can run as a 
> terminal emulator so things like Screen are sadly out unless I can
> run that as its own emulator without launching LXterminal first?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

