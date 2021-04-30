Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D47573700FF
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 21:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619809609;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xML8uhJaCftWQ6e9OR04C9QL4ccJRC+azmxaaprTuF4=;
	b=dAi4rArNHH0cz3jfPlIXjD9yaYm3Fxjv2E5TX+XzOtHyfWFgORP+Dlnglno+uyNJZxJ6iL
	JiIHEDJ1hFSYmpLiNf8AjqVQnnI1/n13VG9q4nTajwrBpAOq/LIHo39Pw89qN6/InIBA8c
	aPc2plbCbW/z/GcB1y6WqSYAWMiQWXw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-rKAy2ThaOOKxdxILrEw78g-1; Fri, 30 Apr 2021 15:06:46 -0400
X-MC-Unique: rKAy2ThaOOKxdxILrEw78g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 93A7A107ACE4;
	Fri, 30 Apr 2021 19:06:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79B935D9CC;
	Fri, 30 Apr 2021 19:06:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3006055342;
	Fri, 30 Apr 2021 19:06:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UJ6c6t019109 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 15:06:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6514E105518F; Fri, 30 Apr 2021 19:06:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 615411054FDF
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 19:06:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EEAED858F0D
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 19:06:35 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-529-LRF3j5yQObO9MXDeXAjrzQ-1;
	Fri, 30 Apr 2021 15:06:32 -0400
X-MC-Unique: LRF3j5yQObO9MXDeXAjrzQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A0AC4A3FC5
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 20:06:20 +0200 (CEST)
Subject: Re: Best Distro for Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
	<YIxCF1C83HFrpbkN@panix.com>
	<CAO2sX33xYLcdO7pDhYJ9L2_7T8_mv4Bhu6Msr4oRuqj1bk3WuA@mail.gmail.com>
	<alpine.NEB.2.23.451.2104301441020.15796@panix1.panix.com>
	<a58dbab4-9276-2127-00c8-cae1bb56c6ed@slint.fr>
Message-ID: <7b5bddf4-f15a-0288-a906-39136e6c7b9c@slint.fr>
Date: Fri, 30 Apr 2021 21:05:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a58dbab4-9276-2127-00c8-cae1bb56c6ed@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13UJ6c6t019109
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBtZWFudCBkb3NlbXUyLCBub3QgZG9zZW11CgpEaWRpZXIKCkxlIDMwLzA0LzIwMjEgw6AgMjE6
MDIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBBbnN3
ZXIgaW4gbGluZS4uLgo+IAo+IExlIDMwLzA0LzIwMjEgw6AgMjA6NDgsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSSBoYXZlIGplbnV4IGluc3RhbGxl
ZCBvbiBhIGRyaXZlIHNpbmNlIHNsaW50IGhhc24ndCBnb3QgZG9zZW11MiB5ZXQuCj4gCj4gU29y
cnkgZm9yIHRoYXQgSnVkZSwgYXMgd2UgZGlzY3Vzc2VkIG9uIHRoZSBTbGludCBtYWlsaW5nIGxp
c3QKPiB5b3Ugd2lsbCBoYXZlIHRvIHdhaXQgYSBiaXQgZm9yIGRvc2VtdSBpbiBTbGludC4KPiAK
PiBJIGp1ZHQgaG9wZSBpdCdzIG5vdCBhICJtdXN0IGhhdmUiIGZvciBKb2huIChvciBoZSBjb3Vs
ZCBkbyBhcyB5b3UKPiBkaWQgdG8gZ2V0IGl0KS4KPiAKPiBDaGVlcnMsCj4gRGlkaWVyCi1saXN0
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

