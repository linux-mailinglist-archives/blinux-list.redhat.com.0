Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4414A301477
	for <lists+blinux-list@lfdr.de>; Sat, 23 Jan 2021 11:11:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611396713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nxNoej2lPcTqwt9p2nyaqbDtA+XQE730pxlZe0Ub3aQ=;
	b=Q0CxlLlH3p4Rz3nIdA0z8Er5yL7UIG1V04/hm5rCxoluE90FyqogpL+dnIhZ+nNAOCrx5M
	ObndY1BaKTSMb7+ukVtVJA2kB7TLzMtexyPDzZBSfLEEhcCur0WG+kSoR1ue6kKIQU1kQG
	wVDNNMeVItnw/Ugrx4+0smeNDOJFrGQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-111-VUK2uM-jPTmxKZo4GOR3Qw-1; Sat, 23 Jan 2021 05:11:50 -0500
X-MC-Unique: VUK2uM-jPTmxKZo4GOR3Qw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBAA7E74F;
	Sat, 23 Jan 2021 10:11:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEF3071CBF;
	Sat, 23 Jan 2021 10:11:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40F284BB7B;
	Sat, 23 Jan 2021 10:11:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10NABNUD026325 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 23 Jan 2021 05:11:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 37EAB2166B2F; Sat, 23 Jan 2021 10:11:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32CBA2166B27
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 10:11:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E7F8811E76
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 10:11:20 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-426-fjvS298rPCCJKMaKeK734g-1; Sat, 23 Jan 2021 05:11:16 -0500
X-MC-Unique: fjvS298rPCCJKMaKeK734g-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.8] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id 457CD5D730
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 10:05:57 +0000 (UTC)
Subject: Is there an easy to use Equalizer for Ubuntu based Distros?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161139635710.6.15346525701550806542.3266624@slmail.me>
Date: Sat, 23 Jan 2021 10:05:57 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3266624
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey guys,
I'm looking for an equalizer for Ubuntu based Distros that I can use to adjust the bass.
I tried Pulse Effects but it made my TTS synth sound all crackly.
I was hoping that an equalizer would be included in alsamixer but it doesn't seem like it.
In doing some searches it seems like I would have to install an additional plugin called alsaequal.
But after you install alsaequal, you apparently have to configure it in a conf file.
I don't know how to edit conf files yet and I was hoping for a simpler solution than that.
I eventually want to learn how to edit conf files but that sounds like a big project just to get the equalizer to work and for now I'd prefer something that functions without extensive configuration.
I was wondering if any of you know of an easy to use equalizer?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

