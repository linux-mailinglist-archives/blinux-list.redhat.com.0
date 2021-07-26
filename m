Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 03FB13D52A4
	for <lists+blinux-list@lfdr.de>; Mon, 26 Jul 2021 06:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627275126;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pTwk/SRLVpxx791tTXs4TBWM6VUzBp0d7zgrfkadUfU=;
	b=MjyyoH3em21go0gS51QjJwtbWJl1d1gf0qtayFAJpcG7Gl4+CU/ycmEJV9xYCbVEKfFX3V
	CtGorBzPdhPuMKyajsjnrRYEyFszViNJILezTcNgqDufLVWtFGTYJfU7YrnT+9hVTwQd2B
	LDYeH6+kmI+4VJxkBiGS+F1k2Z6+EVM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-FJLd9B0rNDmyuGX4pR124g-1; Mon, 26 Jul 2021 00:52:04 -0400
X-MC-Unique: FJLd9B0rNDmyuGX4pR124g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 13804801AE3;
	Mon, 26 Jul 2021 04:52:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B3B4710C0;
	Mon, 26 Jul 2021 04:51:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7FE654BB7C;
	Mon, 26 Jul 2021 04:51:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16Q4lInD000341 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Jul 2021 00:47:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AD06C1111423; Mon, 26 Jul 2021 04:47:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A868C1111422
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 04:47:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CBE3800B35
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 04:47:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-412-M3qh0GwTNSmEFrOF9iEjTg-1; Mon, 26 Jul 2021 00:47:10 -0400
X-MC-Unique: M3qh0GwTNSmEFrOF9iEjTg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GY6pk05kDzMb0
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 00:47:10 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GY6pj6hD0zcbc; Mon, 26 Jul 2021 00:47:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GY6pj6JsvzcbW
	for <blinux-list@redhat.com>; Mon, 26 Jul 2021 00:47:09 -0400 (EDT)
Date: Mon, 26 Jul 2021 00:47:09 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Google Drive Client?
In-Reply-To: <CAO2sX33Q5FJiK1n+VH9A4anFxyRwbZ0oAyQoSVskfavGbZWzQA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107260046001.8815@panix1.panix.com>
References: <CAO2sX33Q5FJiK1n+VH9A4anFxyRwbZ0oAyQoSVskfavGbZWzQA@mail.gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When  That happens, I start searching youtube for rclone tutorial or
drive-cli tutorial and see if anything turns up.


On Mon, 26 Jul 2021, Linux for blind general discussion wrote:

> Okay, so recently, a creator on Kickstarter shared some PDFs via
> Google drive, and for the life of me, I can't figure out how to
> initiate the downloads in Firefox, and more recently, someone
> suggested Google Drive as a means of sharing some files that are too
> big for sending as e-mail attachments, but I have my doubts that'll be
> any more accessible through a web interface.
>
> I decided to do a Google search for stand alone, command line clients,
> and managed to install rclone from apt and drive-cli from pip, but
> have had no luck in figuring out either.
>
> Ideally, I'd like a command line utility that could just read the
> google drive link to a folder from a file and download everything in
> said folder or a browser extension that cuts through the JavaScript
> and other rich-web malarkey to present me plain download links...
>
> A command utility to copy a local folder to Google Drive that then
> saves the share link to a text file or some other console screen
> reader friendly means of sharing a large amount of data would be nice
> too.
>
> Anyone have any suggestions?
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

