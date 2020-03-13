Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 440CE183E03
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 01:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584061070;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g0/WUFmi4xUQmpJ+gHyfpXHFIrP1FreBRmKmkX3DGI0=;
	b=O9Wm2XDtyYFeK7oBQ6p9qzlubINDHYotRWuqm+6oLZKY5fx1PbMdASBlQpODQiwmaW5KKg
	7aiVqZSx69F9Is+czaSGL3oDzj5Uu+S/fi+N2GFD+O3k4HUxT/JtDbzhFRG2PNX3GfmB1k
	8eiDD9v9Puck/qHjFKRXU3NnlkJZqYU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-cimgiKrJPqO9KeYfFjauwQ-1; Thu, 12 Mar 2020 20:57:47 -0400
X-MC-Unique: cimgiKrJPqO9KeYfFjauwQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD0A51005509;
	Fri, 13 Mar 2020 00:57:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 49EBC5C1B5;
	Fri, 13 Mar 2020 00:57:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6FAF718089CD;
	Fri, 13 Mar 2020 00:57:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02D0vHDW013649 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Mar 2020 20:57:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3C5831013030; Fri, 13 Mar 2020 00:57:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 37DB01017853
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 00:57:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2412B185A78E
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 00:57:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-250-OSOWGg_RMsCoS0DKTayGVg-1; Thu, 12 Mar 2020 20:57:12 -0400
X-MC-Unique: OSOWGg_RMsCoS0DKTayGVg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48dnN80qdwz1MJn
	for <blinux-list@redhat.com>; Thu, 12 Mar 2020 20:57:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48dnN75k1vzcbc; Thu, 12 Mar 2020 20:57:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48dnN74tPhzcbV
	for <blinux-list@redhat.com>; Thu, 12 Mar 2020 20:57:11 -0400 (EDT)
Date: Thu, 12 Mar 2020 20:57:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Want to try a GUI. Which one is best?
In-Reply-To: <A1240AA4-BC16-4889-86D6-9AA548E30EDC@gmail.com>
Message-ID: <alpine.NEB.2.21.2003122054120.4990@panix1.panix.com>
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
	<CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
	<20200301173057.GA14419@abilitiessoft>
	<alpine.NEB.2.21.2003011300110.6533@panix1.panix.com>
	<alpine.NEB.2.21.2003011304590.6533@panix1.panix.com>
	<A1240AA4-BC16-4889-86D6-9AA548E30EDC@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02D0vHDW013649
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a friend most of a thousand miles away.  He is also blind and got
ubuntu with gnome installed on his system by thinkpenguin.  What I would
like to know is if sudo apt install mate mate-extra as a command will
start the process to replace gnome with mate on his machine.  He uses orca
and works lots better with the classic version of gnome and unfortunately
in 19.10 Ubuntu removed classic from the desktop list you can choose after
entering a password.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

