Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0738D383CE3
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 21:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621278345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Tov8Ls9BC1DFuePAeB2RXk8m1yRrAseuBNEgPw2GEJw=;
	b=DcDGF5T//RSjFJxSbYkpFqHzG7e1XoBW8ilQcsRYwIFYLg0wGUClRLdEjLr06omz9PLrf3
	nTSPqSD/NyH6jbGg5lOovSgEjbpfMyJ/3pbtjly7VfSMS1Y2vL4CKwtmV19nQefv9Apk2m
	qTytxASrdFryHwXNUuY6szR7O6/TllM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-tnCpkMZaPAqEUuHuZA9MLw-1; Mon, 17 May 2021 15:05:41 -0400
X-MC-Unique: tnCpkMZaPAqEUuHuZA9MLw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C030A1966324;
	Mon, 17 May 2021 19:05:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 969FB60C04;
	Mon, 17 May 2021 19:05:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 49B1255347;
	Mon, 17 May 2021 19:05:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14HJ4dJD018762 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 May 2021 15:04:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C2EEC2082494; Mon, 17 May 2021 19:04:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEA7F20824A2
	for <blinux-list@redhat.com>; Mon, 17 May 2021 19:04:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C20188339AF
	for <blinux-list@redhat.com>; Mon, 17 May 2021 19:04:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-22-IsXYWnpPNtawNNuwHcV5ag-1; Mon, 17 May 2021 15:04:31 -0400
X-MC-Unique: IsXYWnpPNtawNNuwHcV5ag-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FkT8H16SPz2Ff4
	for <blinux-list@redhat.com>; Mon, 17 May 2021 15:04:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FkT8H0mSBzcbc; Mon, 17 May 2021 15:04:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FkT8H0jmpzcbV
	for <blinux-list@redhat.com>; Mon, 17 May 2021 15:04:31 -0400 (EDT)
Date: Mon, 17 May 2021 15:04:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <CAO2sX31Kr63wZRT0ZO=CW55XqovH1VomX50RASxUgbYA2nn1bQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105171501421.9954@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<CAO2sX31Kr63wZRT0ZO=CW55XqovH1VomX50RASxUgbYA2nn1bQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

If you're in archlinux, first do man pacman.
Next as root do pacman -Ss yay
yay is the installer you use to get access to the aur repository and you
run that in your user directory not root.
If you install yay, do man yay.


On Mon, 17 May 2021, Linux for blind general discussion wrote:

> I don't know anything about Arch's package management, but my first
> guess would be trying to install
>
> libhspell
> libvoikko
> libnuspell
>
> With whatever Arch uses in place of apt...
>
> Doing some searches in Aptitude, libvoikko is a library for language
> processing and libnuspell is a spellchecker. No results came up for
> libhspell, but I suspect it might be related to hunspell, another
> spellchecker... Checking the Debian package for Fenrir and doing some
> dependency tracing, all three of these might be in the dependency tree
> for python3-enchant, which Debian lists as one of Fenrir's
> recommendations... Unless you need Fenrir to provide spell checking, I
> think you can safely ignore these errors.
>
> No clue about the lack of speech, though Debian also lists
> speech-dispatcher and python3-speechd as recommends of Fenrir, and
> while packages can usually function if none of the recommends are
> satisfied, recommends are often required for important functionality.
>
> No clue how much of this translates to an Arch environment, but
> hopefully it gives you a starting point.
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

