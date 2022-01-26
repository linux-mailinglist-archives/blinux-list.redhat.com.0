Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA4F49D001
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 17:50:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643215804;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zwtpYj4yKTu1XUIOK7OGdjgMd1l1yAfiR7rusyM3XQc=;
	b=RmVQSORNA19OAfHXRV/c2NW4On9Dvl6z47GQANRCiqRFVbtwS8JC+t8ifQDjD5EJTCWI+Q
	MY82PMNIa6b/61G2GEcECBWShdzFSwydjDg+2ilobzAP5bJ/RQguO4mfc0wiDF1aD0/6AH
	PZr5b2V4/NPHdoiuohA6RgkY5uP7UUI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-259-NkRPWtCEMoi7Tq5AvCnDbw-1; Wed, 26 Jan 2022 11:49:55 -0500
X-MC-Unique: NkRPWtCEMoi7Tq5AvCnDbw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67182189829E;
	Wed, 26 Jan 2022 16:49:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AF2970D48;
	Wed, 26 Jan 2022 16:49:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB34D4BB7C;
	Wed, 26 Jan 2022 16:49:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QGnRmA025047 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 11:49:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9B77C23DB0; Wed, 26 Jan 2022 16:49:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B67CDC07F46
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:49:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82DBE3C118C8
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:49:27 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-625-hvC5Jaw5OU65Yc_um7ySmw-1; Wed, 26 Jan 2022 11:49:25 -0500
X-MC-Unique: hvC5Jaw5OU65Yc_um7ySmw-1
Received: from email.seznam.cz
	by email-smtpc29a.ko.seznam.cz (email-smtpc29a.ko.seznam.cz
	[10.53.18.42]) id 70672f0e65ff7c54718dde12;
	Wed, 26 Jan 2022 17:49:24 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay6.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Wed, 26 Jan 2022 17:49:20 +0100 (CET)
Message-ID: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
Date: Wed, 26 Jan 2022 17:49:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Converting text to mp3
X-szn-frgn: <b90f05bf-b5f7-4516-afa7-b7b4c032f687>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

is some way to convert text file to mp3 files and option length of them? 
In Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.

Thanks a lot and take care.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

