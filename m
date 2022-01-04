Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 197134847D9
	for <lists+blinux-list@lfdr.de>; Tue,  4 Jan 2022 19:29:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641320941;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FQDzr+bxrF5Q6Ioswtnkpb6eVoH+T8LkuqshPQrurnY=;
	b=NKPQpqc6/zr1Mecvpt2ifMWn1/zBJfpug+jc3BhN4S/RqfjyD9YKk0JAnqM++/128Zwpdc
	oh/q1XPDEuuvumdqJb0F431BBC2xr44wGNP5Dao/zt4cN4X/1RKfxLRgIYoIta0FVnH5AI
	+h6Rn7pEx8BLF1jxNVxzxfCJE3jl0+E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-301-rOBaUGLmP2aNpKCM6HXMsA-1; Tue, 04 Jan 2022 13:28:56 -0500
X-MC-Unique: rOBaUGLmP2aNpKCM6HXMsA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8166364092;
	Tue,  4 Jan 2022 18:28:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62FE634D56;
	Tue,  4 Jan 2022 18:28:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9DD6E1809CB8;
	Tue,  4 Jan 2022 18:28:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 204ISlIB011617 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Jan 2022 13:28:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF59C40149AA; Tue,  4 Jan 2022 18:28:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB7F040ED3ED
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:28:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 931C63C11A06
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:28:47 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-116-Dacv_9BSOc6UbEcyzsezmg-1; Tue, 04 Jan 2022 13:28:46 -0500
X-MC-Unique: Dacv_9BSOc6UbEcyzsezmg-1
Received: from email.seznam.cz
	by email-smtpc21b.ko.seznam.cz (email-smtpc21b.ko.seznam.cz
	[10.53.18.27]) id 7131e16064a9b23a70db107c;
	Tue, 04 Jan 2022 19:28:44 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay21.ko.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Tue, 04 Jan 2022 19:28:41 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>,
	stormux@groups.io
Subject: Installing Arch
Message-ID: <e3198136-9cd1-eec8-812a-3607b34d7e84@seznam.cz>
Date: Tue, 4 Jan 2022 19:28:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <b31c961e-ccd2-463a-b539-de75e8aa3b6f>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

how to install Arch linux? I have broken my Stormux and I would like to 
install it again. But after launching Stormux new image, I have there 
only prompt. How to work? I know, at the internet there are lots of 
tutorials, but I am not programmer, only user. Have you some experiences 
with Arch installation and with new Stormux image installation? Can you 
write me step by step tutorial for beginners?

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

