Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F61148F6A1
	for <lists+blinux-list@lfdr.de>; Sat, 15 Jan 2022 12:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642247987;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UPAH90VZLxXVDUsRUttEC//1laORWg5+1yAXeqdtzJM=;
	b=NAfN02ESDnrjczrL+XD3Ep+UrwFxgGVxeWhVmGeVt0XVUYMKLA4ch7FVLh8l6s5+oeKyZE
	RbpBd84laB8SC2Xp4xz8fz2NVXE1aY3QGbNRB3LKDpO5jnLajylNMSuTQQ7QGYlCt4bbz+
	+wW+R7PJzAy0M/HWl1fc51xB5ZEeSi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-382-AMOYUJ6sPj-rjXRBaBZZuA-1; Sat, 15 Jan 2022 06:59:45 -0500
X-MC-Unique: AMOYUJ6sPj-rjXRBaBZZuA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86AFB8143E5;
	Sat, 15 Jan 2022 11:59:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9EAC7316E;
	Sat, 15 Jan 2022 11:59:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC8D61806D1D;
	Sat, 15 Jan 2022 11:59:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20FBwnSG023717 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 06:58:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 119B846D1F4; Sat, 15 Jan 2022 11:58:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8FD746D202
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 11:58:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C46C238041EB
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 11:58:48 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-644-AlU7pQp7OvOotwU7ta6Nlg-1; Sat, 15 Jan 2022 06:58:47 -0500
X-MC-Unique: AlU7pQp7OvOotwU7ta6Nlg-1
Received: from email.seznam.cz
	by email-smtpc18b.ng.seznam.cz (email-smtpc18b.ng.seznam.cz
	[10.23.18.21]) id 27ac36e8323465b22646c7f4;
	Sat, 15 Jan 2022 12:58:44 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay26.ng.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Sat, 15 Jan 2022 12:58:39 +0100 (CET)
To: ubuntu-accessibility@lists.ubuntu.com,
	Linux for blind general discussion <blinux-list@redhat.com>,
	raspberry-vi@freelists.org
Subject: Espeak large problem
Message-ID: <7b97e8dd-91b0-57c9-146f-961a18fa80f3@seznam.cz>
Date: Sat, 15 Jan 2022 12:58:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <a26b1ffb-02db-4bdb-9916-8698d898fd08>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

I|ve played again with Espeak variants. In Ubuntu or Debian on Intel PC 
Espeak variant Female 2 works correctly. In Ubun tu Mate 20.04 for 
Raspberry Pi don't work. I have to quit Orca, restart Speech-dispatcher 
and Espeak-ng and launch Orca again. In Ubuntu on PC variants crash, but 
work again, but it divides words. Is some way to repair it? Annie, or 
other NVDA variants work, only Females have problems. I didn't test 
Males. When variants crash in Raspberry Pi, I press send button and send 
bug. Today I sent two bugs to Ubuntu.

Thanks a lot and take care.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

