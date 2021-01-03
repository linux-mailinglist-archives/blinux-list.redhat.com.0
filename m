Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id ACFDE2E8DC1
	for <lists+blinux-list@lfdr.de>; Sun,  3 Jan 2021 19:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609698339;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iNyDFZrOBy4jym9bO87cH1Fta5urRUhoc7LG7dY+X7M=;
	b=eicgB1KhVeoFhYs++HMSr5eIIFSDABi8vM5fk4VUytPi5obkezT+3MsNJMBxIUdTaOGlti
	k7Swie69zXnSf+Z+a/RugF2f0+hpcTTWkJBkhN+dzymIHG8GoDaz2Pz+xKc/7GENnaaWfW
	t6YF8nG6SmeEV50t0NGbGLkbEGCia1E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-XT0wGLjUNgekex3LtaM_tQ-1; Sun, 03 Jan 2021 13:25:37 -0500
X-MC-Unique: XT0wGLjUNgekex3LtaM_tQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CC3D180A095;
	Sun,  3 Jan 2021 18:25:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CED325F9C8;
	Sun,  3 Jan 2021 18:25:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 419EA5002C;
	Sun,  3 Jan 2021 18:25:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 103IPCfC006735 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 13:25:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CFAA77AD9; Sun,  3 Jan 2021 18:25:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8EBA9D486
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:25:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 818B9186E120
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:25:10 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-382-ml-NnucrM4aNPugmtO0kpw-1;
	Sun, 03 Jan 2021 13:25:06 -0500
X-MC-Unique: ml-NnucrM4aNPugmtO0kpw-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0A39BBE2FB
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:16:31 +0100 (CET)
Subject: Re: cli-party package
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2101031201590.11812@panix1.panix.com>
Message-ID: <4693c1cb-57db-dd49-c2bd-1421d53467d8@slint.fr>
Date: Sun, 3 Jan 2021 19:17:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2101031201590.11812@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 103IPCfC006735
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpUaGlzIHBhZ2U6Cmh0dHBzOi8vZ2l0bGFiLmNvbS9zdG9ybWRyYWdvbjI5NzYvY2xpLXBh
cnR5Ly0vYmxvYi9tYXN0ZXIvY2xpLXBhcnR5Cm1lbnRpb25zIGFzIGRlcGVuZGVuY2llczoKYmMK
ZGlhbG9nCmVzcGVhay1uZwpodG1sMnRleHQKc294CnhpZGVsCgpBbGwgYXJlIGluY2x1ZGVkIGlu
IFNsaW50IGJ1dCBodG1sMnRleHQgYW5kIHhpZGVsIHRoYXQgeW91IGNhbiBnZXQKdXNpbmcgc2Jv
cGtnCgpCZSBhd2FyZSB0aGF0IHhpZGVsIChtYWludGFpbmVkIGJ5IEIuIFdhdHNvbiBAIGh0dHBz
Oi8vc2xhY2tidWlsZHNvcmcpCnJlcXVpcmVzIGZwYywgYWxzbyBhdmFpbGFibGUgZm9tIFNCby4K
CkJlc3QgcmVnYXJkcywKCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIK
CkxlIDAzLzAxLzIwMjEgw6AgMTg6MDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXTCoDoKPiBJdCB0dXJucyBvdXQgdGhlIHBhY2thZ2UgbmVlZGVkIHhpZGVsIGFu
ZCBodG1sMnRleHQuwqAgSSBmb3VuZCB0aGF0IG91dCAKPiBieSBhbmFseXppbmcgYSB0eXBlc2Ny
aXB0IGZpbGUgaW4gd2hpY2ggY2xpLXBhcnR5IHdhcyBydW4uwqAgT25seSBwcm9ibGVtIAo+IGlz
IEkgaW5zdGFsbGVkIGh0bWwydGV4dCBvbiBzbGludCBhbmQgdGhlIGNsaS1wYXJ0eSBnYW1lIGRv
ZXNuJ3QgZmluZCAKPiBodG1sMnRleHQuwqAgUHl0aG9uIGlzIGluIHN1Y2ggYSBtZXNzIG5vdyBs
b3RzIG9mIHRoaW5ncyBpbmNsdWRpbmcgcGlwIAo+IHNlYXJjaGVzIG5vIGxvbmdlciB3b3JrLCBz
byBpdCBtYXkgYmUgbmVjZXNzYXJ5IHRvIGdpdmUgcHl0aG9uIHNvbWUgdGltZSAKPiB0byBzb3J0
IGl0cyBtZXNzIGFuZCBmb3IgZGlzdHJvcyB0byBnZXQgdGhlIHJlcGxhY2VtZW50IHBhY2thZ2Vz
IGZvciBhbGwgCj4gb2YgdGhvc2UgZGVwcmVjYXRlZCBwYWNrYWdlcy4KPiAKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

