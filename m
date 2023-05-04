Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC2B6F6531
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 08:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683182669;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3GA24l4yU9MBU15RAbcQrsD0qDZWvALH4RfgrhoQijY=;
	b=LcYtHgIOxhYvlxp1rvl+bD+8lVjDSg8iLIGSX7bljBe8itV/c14T05C4mRvAi7RrKNXXbM
	bbXWY63WMdMqolgHnSSYBY8bHHk/X+h4aRUJSi4mwuPMhmbvlF/624yGcTozAH2EAM8N5P
	vWm68WFRsXo6xQmNazoCAc7nKUJn3dw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-482-rSDEZiYpNdiMCTS_8kv4CQ-1; Thu, 04 May 2023 02:44:25 -0400
X-MC-Unique: rSDEZiYpNdiMCTS_8kv4CQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF6893C16E8E;
	Thu,  4 May 2023 06:44:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A7E3D1121331;
	Thu,  4 May 2023 06:44:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3746A1946A42;
	Thu,  4 May 2023 06:44:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 02:44:14 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
In-Reply-To: <mailman.1628.1683140218.290941.blinux-list@redhat.com>
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1628.1683140218.290941.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1717.1683182658.290935.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHJ5IGRuZiBpbnN0YWxsIGV2ZGV2IGFzIHJvb3Qgb3Igc3VkbyBhbmQgc2VlIGlmIHRoYXQgZ2V0
cyBzb21ldGhpbmcKZ29pbmcuCgoKLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4g
IlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5OiBz
b2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQKb3JkZXIuIiBF
ZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24gV2VkLCAzIE1heSAyMDIzLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBJIGZvcndhcmRlZCB5b3VyIGVtYWlsIHRvIGZl
bnJpci1zY3JlZW5yZWFkZXJAZnJlZWxpc3RzLm9yZy4gIEl0J3MgYSBsb3cKPiB2b2x1bWUgZmVu
cmlyIHN1cHBvcnQgbGlzdCBzbyB0aGlzb3VnaHQgdG8gYmUgc29sdmVkIHNob3J0bHkuCj4KPgo+
IC0tIEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hl
cyB0byBiZSB1c2VkIGluCj4gZGVmZW5zZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnks
IGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQKPiBvcmRlci4iIEVkIEhvd2RlcnNoZWx0IDE5
NDAuCj4gQXJlIHlvdSBkb2luZyB0aGlzIG9uIGJhcmUgbWV0YWwgb3IgdmlydHVhbCBlbnZpcm9u
bWVudCBhbmQgaWYgaW4gdmlydHVhbAo+IGVudmlyb25tZW50IHdoaWNoIG9uZT8KPgo+IE9uIFdl
ZCwgMyBNYXkgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pgo+ID4gSGkgYWxsLAo+ID4KPiA+Cj4gPiBJIGFtIHVzaW5nIGZlZG9yYSAzOCB3b3Jrc3RhdGlv
biBpZiB0aGlzIG1hdHRlcnMgYW5kIHdoZW4gdHJ5aW5nIHRvIGluc3RhbGwKPiA+IGZlbnJpciBJ
IGdldCBhIGVycm9yIGZyb20gZXZkZXYgb3Igc29tZXRpbmcgYWJvdXQgYSBubyBzdWNoIGZpbGUg
b3IKPiA+IGRpcmVjdG9yeS7CoCBJIGZpcnN0IGluc3RhbGxlZCBwaXAgdGhlbiByYW4gcGlwIGlu
c3RhbGwgYW5kIGdvdCB0aGF0IGVycm9yLsKgCj4gPiBBbnl3YXkgdXNpbmcgZmVucmlyIGluIGZl
ZG9yYSBhbmQgaG93IGRpZCB5b3UgZ2V0IGl0IHdvcmtpbmc/wqAgSXMgdGhlcmUKPiA+IGFub3Ro
ZXIgcGFja2FnZSBJIG5lZWQgdG8gaW5zdGFsbCBzb21ld2FyZT/CoCBUaGFua3MgaWYgYW55b25l
IGhhcyBhbnkgaWRlYXMgb24KPiA+IHdoYXQgbWlnaHQgYmUgZ29pbmcgb24gSSB3b3VsZCBsaWtl
IHNvbWUgcG9pbnRlcnMgb24gdGhpcyBvbmUuCj4gPgo+ID4KPiA+IE1hdHRoZXcKPiA+Cj4gPgo+
ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiA+Cj4gPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

