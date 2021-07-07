Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 029193BE57D
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 11:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625649761;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gul19NHQtDg3Cbwfmyik0AsZ6XtrL/1PAjy0ggOb+pg=;
	b=ftei/Ko3zSR0aiTHo7TCy00DcnuxOPYmEf+13y5Xr8Hpvlif58WsGqMRvBkI9eTvlFnFlo
	AvRu/Ys5/g9WeRv5RYCTR/6INm0tDgsOSJ9EBXHHj9qVLhHtzI7i7B2SmahC+rtED0JSxb
	t3KpX3dDIPW1Re/PGuVMedJYAqRvCcs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-h0hysLtVMZCUXL01awiicw-1; Wed, 07 Jul 2021 05:22:39 -0400
X-MC-Unique: h0hysLtVMZCUXL01awiicw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0998E100C661;
	Wed,  7 Jul 2021 09:22:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DF1019C44;
	Wed,  7 Jul 2021 09:22:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8C124EA2A;
	Wed,  7 Jul 2021 09:22:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1679MIcN013269 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 05:22:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E043F114B319; Wed,  7 Jul 2021 09:22:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBD89114B313
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 09:22:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2B4E89C7E0
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 09:22:14 +0000 (UTC)
Received: from filtteri.svk.fi (79-134-96-138.cust.suomicom.net
	[79.134.96.138]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-X1CydShWOTuHZPa3WJcRAg-1; Wed, 07 Jul 2021 05:22:11 -0400
X-MC-Unique: X1CydShWOTuHZPa3WJcRAg-1
Received: from localhost (localhost.localdomain [127.0.0.1])
	by filtteri.svk.fi (Postfix) with ESMTP id 4GKYfF1JH7z1y7Z
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 12:14:45 +0300 (EEST)
X-Amavis-Modified: Mail body modified (using disclaimer) - filtteri.svk.fi
X-Virus-Scanned: Scrollout F1 at svk.fi
Received: from filtteri.svk.fi ([127.0.0.1])
	by localhost (filtteri.svk.fi [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3AqiE983inqK for <blinux-list@redhat.com>;
	Wed,  7 Jul 2021 12:14:30 +0300 (EEST)
Received: from smtps.svk.fi (unknown [192.168.10.4])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by filtteri.svk.fi (Postfix) with ESMTPS id 4GKYdy3z4Wz20NR
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 12:14:30 +0300 (EEST)
MIME-Version: 1.0
Date: Wed, 07 Jul 2021 12:14:30 +0300
To: blinux-list@redhat.com
Subject: Re: Suggestions for Linux laptop
In-Reply-To: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
References: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1.ref@yahoo.com>
	<693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
Message-ID: <dcbcae66a3cb50071a927295f3101d54@ijn2.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 2021-07-07 05:47, Linux for blind general discussion wrote:
> I will be taking a Linux administration class in the fall. I wanted to
> get a new laptop that I hope to use for that class. Does anyone have
> suggestions?

Being an instructor myself I would warmly suggest purchasing a Lenovo 
Thinkpad series laptop for your upcoming Linux class.
I also suggest that you contact the training provider well in advance in 
order to have sufficient accommodations for your class. If you consider 
taking a certification exam afterwards then I recommend to contact the 
certification body to have sufficient accommodations for your exam 
session.

Lenovo Thinkpads are also available preloaded with Fedora flavor of 
Linux directly from Lenovo. I suggest you call Lenovo sales phone since 
the systems might not be available online on www.lenovo.com on all 
regions.

Regards,
Birdie

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

