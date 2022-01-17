Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 56118490C25
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 17:10:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642435812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5cVqTKW/BoQZCCoz6tToaOJmChqG/PTOG/ezGHm+bns=;
	b=Q5b9VXghKHPHqw1WPwuAS88JSG6tP0jgD7hRciEhnR2wOCc7gB/1awinuFjx27dcVtWCUR
	koBvcQx38rJ1ZyNZWciUzYSrHKXedwze8vv8LIxKkC4dNULts8EOI2sQntxRyqnKurj1Og
	kx778x/XVBz47S3VWSoNIMNaw5aN2Uw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-481-XH6BKaLpNeuGsUL86WNA4Q-1; Mon, 17 Jan 2022 11:10:08 -0500
X-MC-Unique: XH6BKaLpNeuGsUL86WNA4Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D0DF3100F94B;
	Mon, 17 Jan 2022 16:10:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E799E104C53A;
	Mon, 17 Jan 2022 16:09:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73BDB4BB7C;
	Mon, 17 Jan 2022 16:09:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20HG4sNY003557 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 Jan 2022 11:04:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2BDEE40CFD1E; Mon, 17 Jan 2022 16:04:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2708140CFD1B
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 16:04:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE2CD1E1CB24
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 15:38:48 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-448-47zf-heZPGqA6myi-lhgHA-1; Mon, 17 Jan 2022 10:36:55 -0500
X-MC-Unique: 47zf-heZPGqA6myi-lhgHA-1
Received: from email.seznam.cz
	by email-smtpc25b.ko.seznam.cz (email-smtpc25b.ko.seznam.cz
	[10.53.18.35]) id 7e00068a6b9855d07feaf796;
	Mon, 17 Jan 2022 16:36:52 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay15.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Mon, 17 Jan 2022 16:36:49 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Voxin good news
Message-ID: <ecef0117-b2eb-d9d8-f4df-8bf1badc51b4@seznam.cz>
Date: Mon, 17 Jan 2022 16:36:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <c09474c9-c716-49d4-974f-c7d48f0571d8>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

I wrote to Giles Case from Oralux. He hasn't problems with Arch. He now 
works on updated version, but it will be delayed, so we must wait. So if 
someone had problems with Voxin, write to contact@oralux.org and he will 
help you.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

