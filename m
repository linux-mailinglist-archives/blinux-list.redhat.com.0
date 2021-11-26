Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4F645E3D9
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 02:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637888491;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6kHscMzvpJfDf0tZx6c7HN+02q/2D7Jsid66V+bq81s=;
	b=FVkSckEWq7VfPSYCsOYadHe40I6bdaxaLb/yZ9R0XvWCqskEaSFDMY0yYXm8ipzmGZEoAN
	fpA2+HDfBk9eqEc64D0TJ8T8Hp7IrT7kFULA2qOStNKMEs7HGsdUNDZjhF7b5BqN6qfO+2
	efjnWI8HUeuETI0eBiph+sp19m853vk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-129-XyVM85CfNyGniG0CUWR0gQ-1; Thu, 25 Nov 2021 20:01:28 -0500
X-MC-Unique: XyVM85CfNyGniG0CUWR0gQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 598961023F4F;
	Fri, 26 Nov 2021 01:01:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7B466F119;
	Fri, 26 Nov 2021 01:01:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 706424BB7C;
	Fri, 26 Nov 2021 01:01:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ11EQj022869 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 20:01:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 85A4B4010E9F; Fri, 26 Nov 2021 01:01:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80B5040149AC
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 01:01:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66B0C83718B
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 01:01:14 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-177-zRVUq95iP86mJR-A8vpMWA-1;
	Thu, 25 Nov 2021 20:01:12 -0500
X-MC-Unique: zRVUq95iP86mJR-A8vpMWA-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 01602A3F8C
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:00:30 +0100 (CET)
Message-ID: <3f1d19a1-7725-ac80-45b5-1fc793ddd2fd@slint.fr>
Date: Fri, 26 Nov 2021 03:01:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
	<f2fec5b7-aa87-d23b-e4d-9d6ea5aeb644@hubert-humphrey.com>
In-Reply-To: <f2fec5b7-aa87-d23b-e4d-9d6ea5aeb644@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AQ11EQj022869
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQ2hpbWUsCgpJIHRoaW5rIGl0IHdpbGwgdXNlIHl0LWRscCBpZiBhdmFpbGFibGUgKGFuZCBt
YXliZSBpZiB5b3V0dWJlLWRsIGlzIG5vdD8pCgpCdXQgeW91IG1hZGUgbWUgZmluZCBhIGJldHRl
ciBvbmUsIGZvcmsgb2Ygc3RyYXctdmlld2VyOgpodHRwczovL2dpdGh1Yi5jb20vdHJpemVuL3Bp
cGUtdmlld2VyCgpJIGp1c3QgZm9sbG93ZWQgdGhlIGluc3RydWN0aW9ucyB0cCB0cnkgaXQgb24g
U2xpbnQsIGhhdmluZyB5dC1kbHAgaW5zdGFsbGVkCmFuZCB5b3V0dWJlLWRsIHJlbW92ZWQuCgpJ
dCB3b3JrZWQuIEFuZCBwaXBlLXZpZXdlciBkb2Vzbid0IG5lZWQgYSBHb29nbGUgQVBJLgoKQ2hl
ZXJzLApEaWRpZXIKCkxlIDI2LzExLzIwMjEgw6AgMDE6MjQsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBEaWRpZXItYW5kLUFsbDogSXRzIGludGVy
ZXN0aW5nIGlmIEkgZG93bmxvYWQgdGhlIHNhbWUgeW91dHViZSBmaWxlIAo+IHdpdGggYm90aCB5
b3V0dWJlLWRsIGFuZCB5dC1kbHAsIHRoZSBzaXplLWFuZC1sZW5ndGggaXQgdGFrZXMgdG8gZ3Jh
YiBpdCAKPiBhcmUgcXVpdGUgZGlmZmVyZW50LiBJIGRvbid0IGtub3cgd2hldGhlciBJIGNvdWxk
IHBvaW50IHlvdXR1YmUtdmlld2VyIAo+IHRvIGdyYWIgd2l0aCB5dC1kbHA/IFRoYW5rcyBpbiBh
ZHZhbmNlCj4gQ2hpbWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

