Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0E44CE56A
	for <lists+blinux-list@lfdr.de>; Sat,  5 Mar 2022 16:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646492618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f/Q3HGE3JW1Oz0WrtD2ergLvkOYRyPEwp5E6Dcn2W4w=;
	b=Nu9FzYTB90yZFyAsDEYna3bxrTYtCSFQpn1OpKCPxvAAuvYgoykra0e2lE8aZFfWQTwDrY
	E7A835EcD0s/VoiTe/KMAJoH3gjcqyvQd+eMU6HcF+VnXSo+1MC2Kwrl62+yPEVuv0cZZi
	YugkZrSSA5GmuhnLBd4ZT0HlKMpaNZQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-302-CTSqLXNKPTqW4yipZvQpEA-1; Sat, 05 Mar 2022 10:03:34 -0500
X-MC-Unique: CTSqLXNKPTqW4yipZvQpEA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 377A4811E76;
	Sat,  5 Mar 2022 15:03:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 484F7141DC28;
	Sat,  5 Mar 2022 15:03:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7B5BD1931BE1;
	Sat,  5 Mar 2022 15:03:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 5 Mar 2022 10:00:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Snap, Flatpak and/or AppImages?
To: blinux-list@redhat.com
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
 <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
 <81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
 <f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
 <37d011eb-16c0-f52d-1e12-f6e422ca4c5c@free2.ml>
In-Reply-To: <37d011eb-16c0-f52d-1e12-f6e422ca4c5c@free2.ml>
Message-ID: <mailman.2.1646492601.61339.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBJbWFnZXMgYXJlIGdlbmVyYWxseSB1c2VkIGZvciBuZXcgaW5zdGFsbGF0aW9uIG9y
IGxpdmUgYm9vdCBzdWNoIGFzIApmb3IgcmVwYWlyIGRpc2tzLsKgIFBhY2thZ2UgbWFuYWdlcnMg
YXJlIGJlc3QgdG8gYWRkLCByZW1vdmUsIG9yIHVwZGF0ZSAKYW4gYWxyZWFkeSBpbnN0YWxsZWQg
c3lzdGVtLsKgIEkgdGhpbmsgd2hvZXZlciBzdGFydGVkIHRoaXMgdGhyZWFkIApkb2Vzbid0IHVu
ZGVyc3RhbmQgdGhhdCB5b3UgbmVlZCB0byB1c2UgdGhlIGNvcnJlY3QgdG9vbCBmb3IgdGhlIGpv
YiB5b3UgCmFyZSB0cnlpbmcgdG8gYWNjb21wbGlzaC4KCklmIHlvdXIgYWxyZWFkeSBpbnN0YWxs
ZWQgc3lzdGVtIGRvZXNuJ3QgaGF2ZSBhbiBlZGl0b3Igb3IgYSBnYW1lIHlvdSAKd2FudCB0byB1
c2UsIHRoZW4gdGhlIHBhY2thZ2UgbWFuYWdlciBhbGxvd3MgeW91IHRvIGFkZCBpdC4gUmVkaGF0
IHVzZXMgCnRoZSAncnBtJyBwYWNrYWdlIG1hbmFnZXIsIGFuZCBvdGhlciBkaXN0cmlidXRpb25z
IGNob29zZSBkaWZmZXJlbnQgdG9vbHMuCgoKCk9uIDMvNC8yMDIyIDU6MDggUE0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gU28gaXQgZG9lcyBzZWVtIHRoZW4g
bGlrZSBhcHBJbWFnZXMgYXJlIHRoZSB3YXkgdG8gZ28uIEl0IHNvdW5kcyBsaWtlIAo+IHdlIGdl
dCB0aGUgYWJzb2x1dGUgYmVzdCBvZiBldmVyeSBwb3NzaWJsZSBzY2VuYXJpbyBpbiB0aGlzIHNl
ZW1pbmdseSAKPiBhbnRpcXVhdGVkIGJ1dCBhY3R1YWxseSBoaWdobHkgaW5ub3ZhdGl2ZSBwb3J0
YWJsZSBhcHAgdGVjaG5vbG9neS4gV2h5IAo+IG9oIHdoeSBkbyB3ZSBoYXZlIHBlb3BsZSBzYXlp
bmcgdGhhdCBmbGF0cGFrIGlzIHRoZSBmdXR1cmUsIG9yIHdvcnNlLCAKPiBzbmFwZCBpcyB0aGUg
ZnV0dXJlLCB3aGVuIHdlIGhhdmUgYXBwSW1hZ2VzIHRoYXQgYXJlIGhpZ2hseSBwb3J0YWJsZSwg
Cj4gYW5kIGNhbiBldmVuIGJlIHNhbmRib3hlZCBpbiBtdWNoIHRoZSBzYW1lIHdheSwgYnV0IGFy
ZSBtdWNoIG1vcmUgCj4gdmVyc2F0aWxlIG93aW5nIHRvIHRoZSBwb3J0YWJpbGl0eT8gSXQncyBy
ZWFsbHkgbmljZSB0byBiZSBhYmxlIHRvIHB1dCAKPiBhbGwgdGhlIGFwcEltYWdlcyBJIG5lZWQg
b24gYSBVU0IgZHJpdmUgYW5kIGp1c3QgdXNlIHRoZW0gb24gYW55IExpbnV4IAo+IGNvbXB1dGVy
LiBJIGd1ZXNzIHRoZSBvbmUgZHJhd2JhY2sgSSBjYW4gc2VlIGlzIHRoZSB1cGRhdGUgcHJvYmxl
bSwgCj4gd2hlcmUgbW9zdCBkb24ndCB1cGRhdGUgdGhlbXNlbHZlcywgYnV0IGhhdmluZyByZXBv
c2l0b3JpZXMgYW5kIAo+IGFwcEltYWdlIG1hbmFnZXJzIGF2YWlsYWJsZSB3b3VsZCBzZWVtIHRv
IHJlc29sdmUgdGhhdCBpc3N1ZSwgYWxzbyBpbiAKPiBhIGhpZ2hseSBwb3J0YWJsZSB3YXkuCj4K
PiB+S3lsZQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

