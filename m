Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA814AE647
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 02:11:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644369076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RhvljNuRyEeimc/gT94vme9M7byBvGyGV6Mu/pnz+Fs=;
	b=WXdvc2oal8W+CU/pSuR1kb9hj7MdzGutEIs3g+u3XNqKyQsCLnNUHUhLCoI2ofrfSQmwCU
	oWR6i2ILs4UowhA3La5epbTh1rXVTtxI+Ffq7Pcef6Gkh1AVlhaB8hWomY8uHahQaRAXkQ
	fGknsypT0OXrFWjMHvmk3PhwTnp2uvE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-T0msFAHhNe6hWxEN5W-jYw-1; Tue, 08 Feb 2022 20:11:09 -0500
X-MC-Unique: T0msFAHhNe6hWxEN5W-jYw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 298F9190B2A8;
	Wed,  9 Feb 2022 01:10:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A8EF60C17;
	Wed,  9 Feb 2022 01:10:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CA3BD1809CB9;
	Wed,  9 Feb 2022 01:10:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2191AUu8011906 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 20:10:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A08611410DD5; Wed,  9 Feb 2022 01:10:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CEE7140240A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:10:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88ED5858EEC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:10:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-259-SUCzFldsNUGsBOGmVNZNSQ-1; Tue, 08 Feb 2022 20:10:28 -0500
X-MC-Unique: SUCzFldsNUGsBOGmVNZNSQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JthdG2qs0zlsc
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 20:10:26 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JthdG21yGzcbc; Tue,  8 Feb 2022 20:10:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JthdG1RXpzcbC
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 20:10:26 -0500 (EST)
Date: Tue, 8 Feb 2022 20:10:26 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: YT-dlp help
In-Reply-To: <20220208.110845.007.12@[192.168.1.100]>
Message-ID: <4d6dc1f4-ce61-4f59-2b45-e02ac16ee3a@panix.com>
References: <20220208.110845.007.12@[192.168.1.100]>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes, the --play-list-items switch followed by comma-separated numbers and
dash-separated ranges is your friend.  First video in the playlist is 1 so
count from there.  So first run yt-dlp with --simulate and save the
playlist to a file.  Figure your item numbers from that file then build
your actual download command with your selected --playlist-items list.


On Tue, 8 Feb 2022, Linux for blind general discussion wrote:

> So there's a page on youtube and I want to get a listing of all the videos on it complete with urls. I want to be able to download most of them, but not all, so I want to be able to cherry pick through the list, copyt he urls to a text file, and download the ones I want with the -a option.
>
> There's --flat-playlist but this doesn't actually seem to do anything. Is there a way to do what I want?
>
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

