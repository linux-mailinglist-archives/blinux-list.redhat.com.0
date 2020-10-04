Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B4684282E32
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 00:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601851889;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eWvpT2OchvTLmz/uorGhYHbK7F9VFqTC+ZfDlbj2GSI=;
	b=Dc5TThJcQfwc6YWDwxWNtJXXyyniJH/4ZXyP/8U+QOr05zR5uOhiFJXJFbsR6Li//xdemC
	hHFQPtkCZ6dbL19y6mX/iyrIxLqd/P3N/qeiRSFDs+h6Zp83egtwBzcC4x87rG29gFOmUi
	xPUbz1FLFq+6HoeFiqjEw3SPxe0fMvM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-f3fhEGTRMs-UwqtD5s0GxA-1; Sun, 04 Oct 2020 18:51:27 -0400
X-MC-Unique: f3fhEGTRMs-UwqtD5s0GxA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B22EC80EFA5;
	Sun,  4 Oct 2020 22:51:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5515310013D7;
	Sun,  4 Oct 2020 22:51:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C334F181A870;
	Sun,  4 Oct 2020 22:51:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094Moqmu003736 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 18:50:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AD31844076; Sun,  4 Oct 2020 22:50:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A77544401F
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 22:50:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23FCD18A070E
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 22:50:50 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-463-NHAEcUKkOcycp2AhadujSg-1; Sun, 04 Oct 2020 18:50:47 -0400
X-MC-Unique: NHAEcUKkOcycp2AhadujSg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id DC0655401DD; Sun,  4 Oct 2020 22:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id D79455400FF
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 18:45:08 -0400 (EDT)
Date: Sun, 4 Oct 2020 18:45:08 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2010041843340.25048@server2.shellworld.net>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

How about share the location  so others
can see if they have the same download issue?
no idea about speakup, but I use links the chain for downloading often.



On Sun, 4 Oct 2020, Linux for blind general discussion wrote:

> I tried downloading a file from a website using links and couldn't
> download the file.
> Using speakup I was able to cursor onto the desired file or that's what
> speakup told me.
> However when I tried to download that file I got offered an image file
> from another cursor location on the screen I did not want.
> I think this is more of a links problem than a speakup problem and am
> wondering if it's possible to configure links in some way to clear this
> problem.
> I don't know what the braille setting would have bought me since I have no
> braille display.
> As things stand, I had more success with wget and a bash script I wrote.
> For that reason I'm going to share this one with the list.
> The script could probably be improved by adding a site variable to the
> download variable for wget to process but I haven't done that yet.
>
> #!/usr/bin/env bash
> # file: s3.sh - gentoo stage3 download script
> download="stage3-amd64-20201001T120249Z.tar.xz"
> wget -bc https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/$download
>
>
> -- 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

