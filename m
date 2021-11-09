Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA88144B23D
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 18:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636480654;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CYCSrM0B5jf2mOt8wT9p+U4D3/CnMhOG6BCultPNgEE=;
	b=V2agyJN8ISU/ufPap5StR2GmC8TcRrJ9divJIOJcFVh2Lz3LVKN0RXTXGsS5Gdp+PSylVK
	vFbMN1v1i9s7SVVAhuibEClKe2gyPZXTHG9w7MDaogEvJnS0GH3yQtflT2CSqcdgIkQvJq
	e8t/CtDIBjVWICLDCBZwGCKkKcvOwBM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-401-QlUBwOduM_mW-KccxCrepg-1; Tue, 09 Nov 2021 12:57:33 -0500
X-MC-Unique: QlUBwOduM_mW-KccxCrepg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 828A4A40C2;
	Tue,  9 Nov 2021 17:57:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55AF95BAE3;
	Tue,  9 Nov 2021 17:57:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DF644E58E;
	Tue,  9 Nov 2021 17:57:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9Huvxx032555 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 12:56:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8CF6651E2; Tue,  9 Nov 2021 17:56:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 874CD51E1
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 17:56:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 984BB1066559
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 17:56:54 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-545-6Qv92RfBOq2zT0Gmppec2A-1;
	Tue, 09 Nov 2021 12:56:49 -0500
X-MC-Unique: 6Qv92RfBOq2zT0Gmppec2A-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DB184A3EFE
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 16:56:13 +0100 (CET)
Message-ID: <368f9672-cb20-9490-391a-ad3e04019ed2@slint.fr>
Date: Tue, 9 Nov 2021 18:56:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
	<f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
	<c24ee84b-4865-ffec-40bb-1382b16d8fb3@gmail.com>
In-Reply-To: <c24ee84b-4865-ffec-40bb-1382b16d8fb3@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A9Huvxx032555
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBqdXN0IGNoZWNrZWQsIGFueXdheSB0aGVzZSBncmFwaGljYWwgYXBwcyBhcmUgaHJkbHkgYWNj
ZXNzaWJsZS4gVG8gCmtub3cgbW9yZSBhYm91dCB0ZWxlZ3JhbSBpdHNlbGY6Cmh0dHBzOi8vdGVs
ZWdyYW0ub3JnL2FwcHMKCkNoZWVycywKRGlkaWVyCgoKTGUgMDkvMTEvMjAyMSDDoCAxNzozMSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgYWxzbyBu
b3RpY2VkIHRoYXQgdGhlcmUgYXJlIHR3byBtZW51IGVudHJpZXMgZm9yIHRlbGVncmFtLsKgIEkg
YW0gbm90IGEgCj4gdXNlciBvZiB0ZWxlZ3JhbSwgYnV0IG91dCBvZiBjdXJpb3VzaXR5IEkgY2xp
Y2tlZCBvbiBib3RoIHRvIHNlZSB3aGF0IAo+IG9wdGlvbnMgZG8gSSBnZXQsIGFuZCBJIGNvdWxk
IG5vdCBmaW5kIGFueSBvcHRpb25zIG9yIG1lbnVzIG9yIAo+IGluc3RydWN0aW9ucyB0byB1c2Uu
Cj4gCj4gQ2hlZXJzLAo+IAo+IAo+IElicmFoaW0KPiAKPiBPbiAxMS84LzIxIDc6MjggUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhpIElicmFoaW0sCj4+
Cj4+IE9mZiB0b3BpYyBidXQgc3RpbGwuLi4KPj4gSSBTbGludCB3ZSBzaGlwOgo+PiBuY1RlbGVn
cmFtIGh0dHBzOi8vZ2l0aHViLmNvbS9OYW5vc2ViL25jVGVsZWdyYW0KPj4gVGVsZWdyYW0gRGVz
a3RvcCAoSSBqdXN0IHJlYWxpemVkIHRoYXQgd2UgaGF2ZSB0d28gbWVudSBlbnRyaWVzID8/PykK
Pj4gdGVsZWdyYW0tY2xpIGh0dHBzOi8vZ2l0aHViLmNvbS92eXNoZW5nL3RnCj4+IHRlbGVncmFt
LXB1cnBsZSAocGx1Zy1pbiBmb3IgcGlkZ2luKSAKPj4gaHR0cHM6Ly9naXRodWIuY29tL21ham4v
dGVsZWdyYW0tcHVycGxlIChtYXliZSBzd2l0Y2ggdG8gdGRsaWItcHVycGxlKQo+Pgo+PiBBbGwg
dGhpcyBpbiBhZGRpdGlvbiB0byBUZWxlZ3JhbSBXRUIgYW5kIFRlbGVncmFtIG9uIHlvdXIgcGhv
bmUuCj4+Cj4+IEp1dHMgc2F5aW5nLi4uCj4+Cj4+IENoZWVycywKPj4gRGlkaWVyCj4+Cj4+IExl
IDA4LzExLzIwMjEgw6AgMTk6MzUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPj4+IEhlbGxvIGZvbGtzLAo+Pj4KPj4+IEkgYW0gd29uZGVyaW5nIGlmIGFu
eSBvZiB5b3UgdXNlIGFuIGFjY2Vzc2libGUgTGludXggY2xpZW50IGZvciAKPj4+IFdoYXRzYXBw
LiBXaGF0IGlzIHRoZSBiZXN0IHdheSBvZiB1c2luZyBXaGF0c2FwcCBvbiBMaW51eCBpZiBubyAK
Pj4+IGFjY2Vzc2libGUgY2xpZW50IGlzIGF2YWlsYWJsZT8KPj4+Cj4+PiBBbnkgaWRlYXM/Cj4+
Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

