Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7FD47282A08
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 12:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601805625;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JdACacPe5pgopGSPa48PAQ2bjSbVm4pKVbOS+8QPqXc=;
	b=h/Fp4yQiDMXvgPt4Xk8ilP/HGiJpsJqWztEqUGDEISAG21MAEzFthBWGJpKIZSb7o/S386
	TYk8bhCZh+zxarocth5QDouXZqhNdyXY3oHnRfZm2k4z+JLprLHKY1j2zYpXAsjqgISqXi
	7tZnx9UzeUFXPfjIcclbW61jIBmiVhI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-V9gl9AxENrismZzQ9wC9fA-1; Sun, 04 Oct 2020 06:00:23 -0400
X-MC-Unique: V9gl9AxENrismZzQ9wC9fA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 700901DDE2;
	Sun,  4 Oct 2020 10:00:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88C547E731;
	Sun,  4 Oct 2020 10:00:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 38899180B657;
	Sun,  4 Oct 2020 10:00:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0949xx2F011187 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 05:59:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4E9CC100296B; Sun,  4 Oct 2020 09:59:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4ADAC110E99E
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 09:59:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 39C1C80088F
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 09:59:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-197-pS-ol5jvOHGlNHOcQr9otQ-1; Sun, 04 Oct 2020 05:59:53 -0400
X-MC-Unique: pS-ol5jvOHGlNHOcQr9otQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C3zjj06rVz1ZVt
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 05:59:53 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C3zjh6Mgdzcbc; Sun,  4 Oct 2020 05:59:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C3zjh5Gl7zcbV
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 05:59:52 -0400 (EDT)
Date: Sun, 4 Oct 2020 05:59:52 -0400
To: blinux-list@redhat.com
Subject: speakup and links browser
Message-ID: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried downloading a file from a website using links and couldn't
download the file.
Using speakup I was able to cursor onto the desired file or that's what
speakup told me.
However when I tried to download that file I got offered an image file
from another cursor location on the screen I did not want.
I think this is more of a links problem than a speakup problem and am
wondering if it's possible to configure links in some way to clear this
problem.
I don't know what the braille setting would have bought me since I have no
braille display.
As things stand, I had more success with wget and a bash script I wrote.
For that reason I'm going to share this one with the list.
The script could probably be improved by adding a site variable to the
download variable for wget to process but I haven't done that yet.

#!/usr/bin/env bash
# file: s3.sh - gentoo stage3 download script
download="stage3-amd64-20201001T120249Z.tar.xz"
wget -bc https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/$download


-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

