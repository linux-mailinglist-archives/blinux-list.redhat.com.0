Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1581327F2AB
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 21:39:04 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601494744;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DCzUWjIwFnhuWEMS3nAQreXRp68TbV63ykbT9mcXvls=;
	b=NYIRonSlpTGWF3SGxNh0FwGaa5gP5M5YgHG4DLWoIqzAGxSwDbGvKi6KjpEVl7R01WXSph
	yDhdgdujCfrhIeWr8ttCUo3b2+0YkDAp6XA+MaRogro1fYio1cpgHkvcw0eg5M6Y1gY5+Y
	RFZUaVgCVYK+aSS9gbKc5Rme/t6y4s0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-h7bQt6WZNn-57Ulwi27lsA-1; Wed, 30 Sep 2020 15:39:01 -0400
X-MC-Unique: h7bQt6WZNn-57Ulwi27lsA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 10B1B8030B2;
	Wed, 30 Sep 2020 19:38:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED68478833;
	Wed, 30 Sep 2020 19:38:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C884344A57;
	Wed, 30 Sep 2020 19:38:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UJcs7F000773 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 15:38:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D23362026F94; Wed, 30 Sep 2020 19:38:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD4B02024508
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 19:38:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B343E800161
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 19:38:51 +0000 (UTC)
Received: from gateway5.unifiedlayer.com (gateway5.unifiedlayer.com
	[74.220.211.130]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-387-MLZheI9aNQqyvydN9v0ypQ-1; Wed, 30 Sep 2020 15:38:49 -0400
X-MC-Unique: MLZheI9aNQqyvydN9v0ypQ-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway5.unifiedlayer.com (Postfix) with ESMTP id 8A492200CD823
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 14:17:02 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id Nhb4kpZyrDhm0Nhb4kkuh1; Wed, 30 Sep 2020 14:17:02 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:27772 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kNhb4-000Glr-6R
	for blinux-list@redhat.com; Wed, 30 Sep 2020 14:17:02 -0500
Date: Wed, 30 Sep 2020 14:17:00 -0500
To: blinux-list@redhat.com
Subject: Re: Console screenreaders
Message-ID: <20200930141700.15a695eb@bigbox.attlocal.net>
In-Reply-To: <CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
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
X-Exim-ID: 1kNhb4-000Glr-6R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:27772
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I know that YASR works with both espeak and
speech-dispatcher as soft-synths in addition to supporting several
hardware synths.  I wrote up instructions here

https://blog.thechases.com/posts/bsd/setting-up-a-terminal-screen-reader-on-openbsd/

on how to get it to work with speech-dispatcher on OpenBSD.  I
imagine the instruction are fairly similar on other platforms.

-tim

On September 30, 2020, Linux for blind general discussion wrote:
> I know even less about YASR than Fenrir, but I understand it
> requires a hardware speech synth to function properly.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

