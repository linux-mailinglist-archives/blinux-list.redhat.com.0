Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id CC7771F89FF
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 20:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592158562;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZZRmDwSHp50TwYmNCzX+29nS4O4lyNi+59UcQZOVMDM=;
	b=egbdHczBMsQwAdGAvQ8ZxkT3m1QESoTmbYjktyKpdvRicYe1kKMbVJkqMLzIjikcPWwMF6
	DRg+P7F4cwbuiK1INHt5vgqmxP4xC1okLoc5YuJ+gJN0oj4s3YoWYCtK9MmqR/PYZMGYBI
	i2GXa3cCjMFhEWeItyavyAj2WkSbOig=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-dsF3bX9VPeuRg-7U9WSDOQ-1; Sun, 14 Jun 2020 14:16:00 -0400
X-MC-Unique: dsF3bX9VPeuRg-7U9WSDOQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 131081883605;
	Sun, 14 Jun 2020 18:15:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6131B9CA0;
	Sun, 14 Jun 2020 18:15:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C995833AA;
	Sun, 14 Jun 2020 18:15:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EIFpbL020361 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 14:15:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3FCA1112C08A; Sun, 14 Jun 2020 18:15:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B6D1112C08D
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 18:15:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D028101A525
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 18:15:49 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-114-jnwb69CcOP2ZL5-UvQag8A-1; Sun, 14 Jun 2020 14:15:36 -0400
X-MC-Unique: jnwb69CcOP2ZL5-UvQag8A-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id B6D8CFB5284
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 11:15:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 14 Jun 2020 11:15:34 -0700
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
Message-Id: <68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EIFpbL020361
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBKdW4gMTQsIDIwMjAsIGF0IDA3OjEyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCkhtbW0uICBUaGF0J3MgYW4g
b2RkICJGcm9tIiBhZGRyZXNzLiAgRG9lcyB0aGlzIGxpc3QgaGlkZSB0aGUgcG9zdGVyJ3MgZW1h
aWwKYWRkcmVzcyBieSBkZWZhdWx0LiAgSWYgbm90LCBpcyB0aGVyZSBhIHNldHRpbmdzIGlzc3Vl
IHNvbWV3aGVyZT8KCj4gQnJhaWxsZUJhY2sgaXMgL25vdC8gYSBwYXJ0IG9mIHRoZSBBbmRyb2lk
IGFjY2Vzc2liaWxpdHkgc3VpdGUsIEkgc3VzcGVjdCB0aGF0IGl0IGlzIGp1c3QgdG9vIGVtYmFy
cmFzc2luZ2x5IGxpbWl0ZWQgdG8gYmUgcGxhY2VkIGluIOKAnHRoZSBnb2xkZW4gcGF0aOKAnS4g
SSB3b3VsZCByZWNvbW1lbmQgQlJMVFRZIGZvciBBbmRyb2lkIGZvciBicmFpbGxlIHN1cHBvcnQu
IAoKVGhhbmtzIGZvciB0aGUgY29ycmVjdGlvbiAobXkgYmFkKSBhbmQgc3VnZ2VzdGlvbiEKCi1y
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

