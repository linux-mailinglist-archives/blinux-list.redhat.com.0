Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A84F3AF6CF
	for <lists+blinux-list@lfdr.de>; Mon, 21 Jun 2021 22:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624307109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=usj4MA4KW+Gb08pMr/QFe2yrfDURupDnB5l8dQMQbn0=;
	b=NGxGyOhObjxDNXVneFS3AgHD7BMtQcb7BtX9CPKb8lAc9b1UyJKlEWM6syZlWQyP22QRft
	cgK1ET509aPgZlzcCIGpomTk+9qf17rgSy9m0+HRaiZP98kuCJtzOi5tcG54h5pMTZ64lq
	h2GNdPCJ562xdqpTk4fiCprTyPjCeQo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-uybnLalyMJisxRQPqujGvg-1; Mon, 21 Jun 2021 16:25:06 -0400
X-MC-Unique: uybnLalyMJisxRQPqujGvg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 219CB800D62;
	Mon, 21 Jun 2021 20:25:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E396B5D705;
	Mon, 21 Jun 2021 20:24:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5B3254EA2A;
	Mon, 21 Jun 2021 20:24:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15LKOV3O023208 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Jun 2021 16:24:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E7353201EE2E; Mon, 21 Jun 2021 20:24:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1BA1201EF0F
	for <blinux-list@redhat.com>; Mon, 21 Jun 2021 20:24:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0579108C0ED
	for <blinux-list@redhat.com>; Mon, 21 Jun 2021 20:24:27 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-439-oWvxe5LWM5qLcEjJNWbxsg-1; Mon, 21 Jun 2021 16:24:25 -0400
X-MC-Unique: oWvxe5LWM5qLcEjJNWbxsg-1
Received: by mail-pf1-f174.google.com with SMTP id g6so14588592pfq.1
	for <blinux-list@redhat.com>; Mon, 21 Jun 2021 13:24:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=GfuzC9SzfIkMXkksyAQvEj+AF0CsYXKkshFuGuLew88=;
	b=n1x9Q3hJtOoNv6Voz8cAPjD78p+qOneKeYVga39NKq/CTLHPlm8dqvAFZOa4YKXSDR
	GdPnVt2Vk6gfs2+rVWND0c4ERTIUYXT0AFM5ANGk9D7MG/GZODEX16FXHhNkTeYJ5OpC
	Exfn7vg156oD8INHRtWZ60cnQ3wfyrt+V+Q6vBZprWhMqP2h+6dvCHQCtIg44Js8pH6r
	MzXJonyna7aYxAmm5j9TlF9sPD3B6VDdACFsiZhAaZcVRQpz2JrrVhmYkIEGsMB8Bcyg
	O5xLYXVLwBmiah6Ibf6HTKw3HEG4ZITxxR8usvehH4hZOMrgb6gdDSJrrHncAY1+mms1
	M8VQ==
X-Gm-Message-State: AOAM530TMtDbvFHvta8w7N/x7BvBdhlbf+yCUGycei0YLcXY5DID5iRH
	JLBqyzMycjP6uC59lrdjNyJ9TDPXiAkeEQ==
X-Google-Smtp-Source: ABdhPJzHJX2zTVK7f8Nhr/mkavFhRVyOYjgZ/Iagg9zBRnxnAdQsmVYZAm3b1sjAezIqd0B2jMCJZw==
X-Received: by 2002:aa7:9521:0:b029:303:90ba:1a21 with SMTP id
	c1-20020aa795210000b029030390ba1a21mr14069pfp.9.1624307064183; 
	Mon, 21 Jun 2021 13:24:24 -0700 (PDT)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	d131sm16541368pfd.176.2021.06.21.13.24.23
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Jun 2021 13:24:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Mon, 21 Jun 2021 13:24:21 -0700
Subject: making an accessible version of Nushell
Message-Id: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 15LKOV3O023208
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

Nushell (https://www.nushell.sh) is a re-imagined shell for Linux (etc) systems.  There are a number of things to like about it, IMHO.  First, it attempts to handle program output as structured data.  This means that, for example, tabular output can be filtered, sorted, etc.  It is also being written in Rust, which should help to prevent a large class of security issues.

However, the use of text-based layout for tabular output isn't well suited for use with screen readers, etc.  So, I posted an issue on the Nushell Git repository, suggesting that someone look into the notion of creating a web-based version.  Happily, some work has already been done on this, mostly to support an online demo.

If you find this to be interesting, you might want to browse over to their sites and check out what they have so far.  Specific suggestions on ways to make the interface work better with screen readers (etc) would be very valuable.  Here are some links:

https://www.nushell.sh
https://www.nushell.sh/demo

https://github.com/nushell/nushell
https://github.com/nushell/nushell/issues/3663

-r (Rich Morin)



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

