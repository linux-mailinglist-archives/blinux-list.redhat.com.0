Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 09BB635AC9A
	for <lists+blinux-list@lfdr.de>; Sat, 10 Apr 2021 11:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618048659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZcOLWXO++5ZeYlar+gS8iSip6/f7c65ixd6Jkxqhp/4=;
	b=EiEnOSzSxOHYPIa+8D4G3yfWXGiMANYIwU/pZjkc2hxp9fooKbEUqc1BCclVqUrXeXLu7B
	/S0FPZhkOBed0UKQofi96nG1NCPXroEv67hn1/Jb0PHHFMZyVjYwYvFbZKGpoo7Sczo6v/
	ddTExFOdLEdvFj7AxzpR5kwniaZiN6w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-286-AVc51A64MymBL7a-hVjUDg-1; Sat, 10 Apr 2021 05:57:38 -0400
X-MC-Unique: AVc51A64MymBL7a-hVjUDg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6199817469;
	Sat, 10 Apr 2021 09:57:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5102669FA4;
	Sat, 10 Apr 2021 09:57:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BFE81809C82;
	Sat, 10 Apr 2021 09:57:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13A9v3XC023624 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 10 Apr 2021 05:57:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 00EEE21D4F25; Sat, 10 Apr 2021 09:57:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFE3721D4F23
	for <blinux-list@redhat.com>; Sat, 10 Apr 2021 09:57:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38E3D85A5A8
	for <blinux-list@redhat.com>; Sat, 10 Apr 2021 09:57:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-484-Z8yU77n-M1CPnYThLGDC9w-1; Sat, 10 Apr 2021 05:56:52 -0400
X-MC-Unique: Z8yU77n-M1CPnYThLGDC9w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FHVlR0rGVzQCh
	for <blinux-list@redhat.com>; Sat, 10 Apr 2021 05:56:51 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FHVlR0Vhxzcbc; Sat, 10 Apr 2021 05:56:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FHVlR0QtVzcbV
	for <blinux-list@redhat.com>; Sat, 10 Apr 2021 05:56:51 -0400 (EDT)
Date: Sat, 10 Apr 2021 05:56:50 -0400
To: blinux-list@redhat.com
Subject: [slint] for those distros without youtube-dl-mp3 (fwd)
Message-ID: <alpine.NEB.2.23.451.2104100556300.12082@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"



---------- Forwarded message ----------
Date: Sat, 10 Apr 2021 05:56:07
From: Jude DaShiell <jdashiel@panix.com>
Reply-To: slint@freelists.org
To: slint@freelists.org
Subject: [slint] for those distros without youtube-dl-mp3

The following bash script can be useful.
Dependencies are youtube-dl and ffmpeg.
Line 3 of the script has a playlist variable which needs a file name put between
the quotes.  You put one url per line into whatever you named that file then run
the script and it does its magic.  I have used this script and found it to work.

#!/usr/bin/env bash
#file: ypl.sh - download youtube playlist and clean filenames
playlist=""
youtube-dl -o '%(title)s.%(ext)s' -x --restrict-filenames --audio-format mp3
--prefer-ffmpeg -a $playlist
===============================================================================
The Slint mailing list.
Archive: https://www.freelists.org/archive/slint
To subscribe or unsubscribe, email slint-request@freelists.org with the subject
'subscribe' or 'unsubscribe', then answer the email you will receive.
More: email slint-request@freelists.org with as subject 'help' or 'commands'.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

