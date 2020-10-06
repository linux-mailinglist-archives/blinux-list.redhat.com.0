Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD3128450B
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 06:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601959592;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NkDxYQw9Sb8w213pLU6f23dLDjXYnS/Ar5UU22AVnV0=;
	b=Z+y4mlhIJLWfLylS5HSCltczXCOrj3sB2cN7WKZSBWgN99QQXGhXciPubvpinJ0xPBeLkr
	RxE030To2nySVGKrsirHU5mx9cZqF2F381QlXTJSkGYw6azr925T0N2s4U392gKq72ncqE
	kTRDz8GQ4jREC8ZVIeLFMG4tjS+/K8s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-Xq_-EGtNNQG6R1Pu36gntg-1; Tue, 06 Oct 2020 00:46:29 -0400
X-MC-Unique: Xq_-EGtNNQG6R1Pu36gntg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EF6E5204;
	Tue,  6 Oct 2020 04:46:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5302D10013DB;
	Tue,  6 Oct 2020 04:46:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 30C9A18199F8;
	Tue,  6 Oct 2020 04:46:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0964kC5g001259 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 00:46:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 359DEAF79C; Tue,  6 Oct 2020 04:46:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FE4CAECBB
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 04:46:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F55B8007D9
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 04:46:10 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-418-M1FxZFpzP_azfC44klWO5w-1; Tue, 06 Oct 2020 00:46:06 -0400
X-MC-Unique: M1FxZFpzP_azfC44klWO5w-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.4] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id 2AA963F2EA
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 04:36:27 +0000 (UTC)
Date: Tue, 6 Oct 2020 06:36:25 +0200 (CEST)
Subject: VPN accessibility?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <160195898709.6.4515232516938989079.1173897@slmail.me>
X-SimpleLogin-EmailLog-ID: 1173897
X-SimpleLogin-Type: Reply
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,
I am about to install Slint for the first time, so if all goes well, I should be having my first Linux OS up and running soon. There might be unexpected challenges as a newbie, but overall, I hope it goes well.I'm looking into VPN options for once I get the OS installed. I know some VPN services have free trials, but I'd rather just ask you guys which VPN do you think has a fairly accessible app once you download it on Linux?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

