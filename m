Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4537348284B
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641064646;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5y3nGUjMqXSlh/eP300lyJyRGOykOeFkH2WxjGvsz8Y=;
	b=XNCP81U0QBL1FIahG0i9uA1tjTOuna4g+ywAUNigMiaZrpRrHbLfu4YwN2ftGjyAFF+CVm
	p4NNa0fhV1sPrxiplzthdyTO/019wnem0Q/qS0v5F7tBKUTcTC1965oZ4JHZafk345GV6F
	kAO76tra9Dx86rwzkg5Frm+fMTBO3Hs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-284-KcHtwzXFP-Cd8IvN6oUgBg-1; Sat, 01 Jan 2022 14:17:22 -0500
X-MC-Unique: KcHtwzXFP-Cd8IvN6oUgBg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80E8B8042A2;
	Sat,  1 Jan 2022 19:17:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12F185BE00;
	Sat,  1 Jan 2022 19:17:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8ED581806D03;
	Sat,  1 Jan 2022 19:17:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JHEua014633 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:17:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EEC5A401A994; Sat,  1 Jan 2022 19:17:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA313403579B
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:17:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D205D811E76
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:17:13 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[69.89.24.40]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-266-pHbM8c5-P--avP9C39pcxQ-1; Sat, 01 Jan 2022 14:17:11 -0500
X-MC-Unique: pHbM8c5-P--avP9C39pcxQ-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id 616782009564D
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 13:17:08 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 3jsKnXwTxcfn83jsKnOrcY; Sat, 01 Jan 2022 13:17:08 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:64460 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1n3jsK-000lC6-4L
	for blinux-list@redhat.com; Sat, 01 Jan 2022 13:17:08 -0600
Date: Sat, 1 Jan 2022 13:17:06 -0600
To: blinux-list@redhat.com
Subject: Re: Recovering shift deleted data
Message-ID: <20220101131706.5185e74d@bigbox.attlocal.net>
In-Reply-To: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1n3jsK-000lC6-4L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:64460
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Tim here.  I'm not quite sure what "recovery shift deleted" means.
Or at least what the "shift" part does.

A couple different possibilities:

- "extundelete" is available in my package repos which might be
  enough, but the process of installing it might end up writing over
  the blocks you want to preserve.

- there's "recoverjpeg" which works by scrounging sectors of your
  hard-drive for any data that looks like a .jpg or .mov file (you
  don't mention what file-type it was)

Restarting shouldn't impact the ability to recover, but writing any
data to that drive may.  As such, I'd boot a different Linux machine
if you have one (or boot a different drive), then install extundelete
or recoverjpeg on that, then attach the disk containing the data and
see if it can salvage your data.  I've done this before booting from
a live USB/CD, installing the recovery package into the virtual disk
(both are pretty small), then recovering a friend's only copies of
their kid growing up.

Hope this helps,

-Tim


On January  1, 2022, Linux for blind general discussion wrote:
> Hello,
> 
> is some way to recovery shift deleted items? I've deleted my New
> year Fireworks. I didn't want, it was accident. I have Raspberry Pi
> 4B 4 GB, 128 GB card. A that I have installed Ubuntu Mate and data
> partition. Is some way to recovery it? I've didn't restart yet.
> 
> Thanks a lot.
> 
> Best regards
> 
> Vojta.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

