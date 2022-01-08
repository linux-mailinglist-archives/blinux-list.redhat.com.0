Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3CD488330
	for <lists+blinux-list@lfdr.de>; Sat,  8 Jan 2022 12:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641640818;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7RKi9l7k2QBofEMcaFgu3bpdQOmEAoHKyiN0+m168sM=;
	b=WLE5O/plzbb/F4EIpQFwWXLXZ3XF8NNENeXCk/owsjhgZA4FLGUJJ4DnKxpMG0wa8Lg9JV
	lc48FK+O40Y0JJe95OvyZpdiyF9UzvvFNa23HfDXxP8vwGpzIcp+N05TQ9YK5xfi7T6ma2
	/ASOcIa7xQOke3OgR9Erkk26kn4Vr7o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-KrYARJTNOwac1uYcCcw76g-1; Sat, 08 Jan 2022 06:20:14 -0500
X-MC-Unique: KrYARJTNOwac1uYcCcw76g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB07E18397A7;
	Sat,  8 Jan 2022 11:20:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA4E76F12C;
	Sat,  8 Jan 2022 11:20:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 390544BB7C;
	Sat,  8 Jan 2022 11:19:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 208BJdYU013091 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 8 Jan 2022 06:19:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DE4652166B14; Sat,  8 Jan 2022 11:19:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D83302166B13
	for <blinux-list@redhat.com>; Sat,  8 Jan 2022 11:19:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32DE43C118A0
	for <blinux-list@redhat.com>; Sat,  8 Jan 2022 11:19:36 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-568-JXrn-dNDPYS-V-456LDWBg-1; Sat, 08 Jan 2022 06:19:34 -0500
X-MC-Unique: JXrn-dNDPYS-V-456LDWBg-1
Received: from email.seznam.cz
	by email-smtpc10b.ng.seznam.cz (email-smtpc10b.ng.seznam.cz
	[10.23.14.45]) id 1904861f0c9cd54518ee7703;
	Sat, 08 Jan 2022 12:19:33 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay27.ng.seznam.cz (Seznam SMTPD 1.3.135) with ESMTP;
	Sat, 08 Jan 2022 12:19:29 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Changing braille table
Message-ID: <1575bbba-c34c-b9d9-e72f-023cebca04ba@seznam.cz>
Date: Sat, 8 Jan 2022 12:19:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <4dce7527-168e-4167-8204-2f42820b355b>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

Is some way to change braille table from 8 to six points? Six point 
Braille table is better for some Czech users.

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

