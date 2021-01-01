Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id AD43D2E840A
	for <lists+blinux-list@lfdr.de>; Fri,  1 Jan 2021 16:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609513469;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ERyvDBdq7DV+NC5bPX1wAumCyY2OPo8lT/TZ3PUdP8g=;
	b=Fucdn5ihilE/SGeMU2thRzBKP59dWmhA4mdj8erT21O8zxKsKf1sXQmu607gfeFVmynmP1
	01o+LFX/hLMqHRUQhIodSARtL64Qn8P9L2U6cmGixRkSg8Auo8oHJdL0OY1SdmwGYseOXj
	0nRZFdkGcaKqWu4UifiyP/t1aheuB1M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-z-2rBridMv2iokFbzNhhTA-1; Fri, 01 Jan 2021 10:04:27 -0500
X-MC-Unique: z-2rBridMv2iokFbzNhhTA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 128088014C1;
	Fri,  1 Jan 2021 15:04:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81B475C1D1;
	Fri,  1 Jan 2021 15:04:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BEB618095FF;
	Fri,  1 Jan 2021 15:04:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 101F3xYn030048 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 1 Jan 2021 10:03:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2E4182166B2A; Fri,  1 Jan 2021 15:03:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 288172166B28
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 15:03:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6545F800140
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 15:03:55 +0000 (UTC)
Received: from gateway4.unifiedlayer.com (gateway4.unifiedlayer.com
	[69.89.16.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-569-0CR1xh3NP5q7rw5p8ku6aw-1; Fri, 01 Jan 2021 10:03:52 -0500
X-MC-Unique: 0CR1xh3NP5q7rw5p8ku6aw-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway4.unifiedlayer.com (Postfix) with ESMTP id 94CF5200A11BE
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 08:41:58 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id vLcskQuEXwLnQvLcskJLNj; Fri, 01 Jan 2021 08:41:58 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:45272 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kvLcs-000vgx-90
	for blinux-list@redhat.com; Fri, 01 Jan 2021 08:41:58 -0600
Date: Fri, 1 Jan 2021 08:41:56 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Remote Desktop Under Linux
Message-ID: <20210101084156.4fe4a73d@bigbox.attlocal.net>
In-Reply-To: <20201231234142.GA5255@rednote.net>
References: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
	<20201231163535.72cc6332@bigbox.attlocal.net>
	<20201231234142.GA5255@rednote.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1kvLcs-000vgx-90
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:45272
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Indeed, as far as I know, VNC and `ssh -X` both convey the
graphics without sound.  To do that, you'd need to run a sound-server
on Windows

https://www.freedesktop.org/wiki/Software/PulseAudio/Ports/Windows/Support/

and then configure your Linux audio to use that remote server for
sound.  I'm afraid I can't be of much more help than directing you to
the parts since I don't have a configuration in which I can test it.

It might be suitable for streaming audio but I imagine that the audio
latency would be pretty horrible making it difficult to use a
screen-reader unless you have a great deal of patience.

I know that the Remote Desktop (RDP) protocol has provisions for
forwarding the audio too, though it requires a fairly high-bandwidth
connection and would also be subject to latency concerns.

-tim

On December 31, 2020, Janina wrote:
> I am unfamiliar with RDP. However, I believe the 'ssh -x' approach
> onlyh conveys the graphics, not any audio associated with screen

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

