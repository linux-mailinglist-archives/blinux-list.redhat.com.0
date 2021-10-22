Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2283437600
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 13:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634902447;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PnqeMAkkmcEbQPyiZ43x1X/sy1mvQme4KOvrdmIMfm8=;
	b=b1KE+acuyfdqZMTLWcp/m1Hgt9xQtpSf2Q2JUhjmHOevwqAcPtZ61ssNWv2N32yUpzJ8yB
	iCRakL7m8grszvyVHWbZgkG26qLsQGk9MuhH/DeCNYcbL2qzkcsaQTnXI7Jej5596oyNsQ
	JGbra/RIhCAZfMFIldII3/vDxhu4+iA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-NXEjQ6F0O4mfNWe5o7azhw-1; Fri, 22 Oct 2021 07:34:04 -0400
X-MC-Unique: NXEjQ6F0O4mfNWe5o7azhw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE8F2801FCE;
	Fri, 22 Oct 2021 11:33:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AB6217567;
	Fri, 22 Oct 2021 11:33:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9241A4A702;
	Fri, 22 Oct 2021 11:33:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MBXRdC004136 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 07:33:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F3B1521568BA; Fri, 22 Oct 2021 11:33:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE4A4215688A
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 11:33:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 755931857F00
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 11:33:21 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-68-xQv2CnSfM6O9AKpT1YAu5w-1; Fri, 22 Oct 2021 07:33:16 -0400
X-MC-Unique: xQv2CnSfM6O9AKpT1YAu5w-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4HbMff2cQhz8vNV
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 11:33:14 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id 3gzQ5-dsP59J for <blinux-list@redhat.com>;
	Fri, 22 Oct 2021 11:33:13 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4HbMfd3g25z8tmn
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 11:33:13 +0000 (UTC)
Message-ID: <20211022.113332.040.27@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: youtube-dl: list videos in order
Date: Fri, 22 Oct 2021 06:33:32 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19MBXRdC004136
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I want to use youtube-dl to list the videos in a playlist and have that listing written to an output file. I downloaded the playlist but forgot to include
%(playlist_index)s
in the output template. So the videos are just scattered all over the place with no order.
I tried
youtube-dl --flat-playlist -o "%(playlist_index)s - %(title)s" url > playlist.txt
because the --flat-playlist is supposed to list the videos, according to the manpage. I thought the -o flag would format the listing correctly, but it spit out the error:
youtube-dl: error: Cannot download a video and extract audio into the same file! Use "%(playlist_index)s - %(title)s.%(ext)s" instead of "%(playlist_index)s - %(title)s" as the output template
So I did as suggested, only instead of listing the videos, all the output file had was stuff like:
Downloading video 1 of 80
Downloading video 2 of 80
and that's it. No titles. Nothing.
So how is --flat-playlist actually supposed to work?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

