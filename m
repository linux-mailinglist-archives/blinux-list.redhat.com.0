Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 646E8489FA6
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jan 2022 19:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641840873;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GJ34iljVuikXLP0JHiG5VdoYG10gsaVdac2rfHXdR5E=;
	b=HcqmO6QIvUGRjuiJMFIscmSqlZvC3JmLnbU2/EBJXzn66W3UQfFKJcjotQjcxP8yKW404A
	8cKI5IP/Iu6NZ457GnSQf/gG3B5kvpUPO4PAWwUa6Jwef0IrIZKTyuTp3FpskvHs6jFSq1
	YOPYHD6ho0XZPd14JxT7d7ShhKRSNcc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-2z3MQsy8Niy4ekMs4Vj3pA-1; Mon, 10 Jan 2022 13:54:29 -0500
X-MC-Unique: 2z3MQsy8Niy4ekMs4Vj3pA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9F64100CC91;
	Mon, 10 Jan 2022 18:54:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60F3F85898;
	Mon, 10 Jan 2022 18:54:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C35A4BB7C;
	Mon, 10 Jan 2022 18:54:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20AIrsHg000989 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 10 Jan 2022 13:53:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D107AC0809C; Mon, 10 Jan 2022 18:53:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD0A3C07F45
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 18:53:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F6F13C02183
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 18:53:54 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-303-S7KkbxbvNsmKCUfGq9f7MA-1; Mon, 10 Jan 2022 13:53:52 -0500
X-MC-Unique: S7KkbxbvNsmKCUfGq9f7MA-1
Received: from email.seznam.cz
	by email-smtpc14b.ng.seznam.cz (email-smtpc14b.ng.seznam.cz
	[10.23.14.165]) id 188beeae0d13bdf419611fb2;
	Mon, 10 Jan 2022 19:53:50 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay16.ng.seznam.cz (Seznam SMTPD 1.3.135) with ESMTP;
	Mon, 10 Jan 2022 19:53:48 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Voxin in Arch
Message-ID: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
Date: Mon, 10 Jan 2022 19:53:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <ee6aa14d-eb31-40be-ad43-e050733ac407>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

is Voxin usable now in Arch or is needed a new version of it?

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

