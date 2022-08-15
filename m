Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E73B5942D6
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 00:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660603961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AxdXI8EaEW1V383aw8+EVtisl/q8L/WHU8S58lOCdII=;
	b=GoqpaN0efJWWIJuGWA79azNvNttmDm3gmOnUWzCSsZLZkKvUzdsaPZCYL42C1XeonCUukD
	Qp0sME9QY28a4U/o3xAI/CWg4WaM8bmXXnByxyByn2uQ/54QC2vNQds27rudfEfFTlnrZq
	KVRSB0C602loqGInWjqDzzpYn92mSeg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-505-2J68gEmqPWuGLaXX39lqnw-1; Mon, 15 Aug 2022 18:52:37 -0400
X-MC-Unique: 2J68gEmqPWuGLaXX39lqnw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 130A43804060;
	Mon, 15 Aug 2022 22:52:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8F321140EBE3;
	Mon, 15 Aug 2022 22:52:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF8DD1940353;
	Mon, 15 Aug 2022 22:52:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.770.1660603181.10501.blinux-list@redhat.com>
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
Date: Tue, 16 Aug 2022 00:52:30 +0200
Subject: Re: Impossible to know sender info
To: blinux-list@redhat.com
Message-ID: <mailman.731.1660603954.10502.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgphbmQgZnJvbSBhbiBhY2Nlc3NpYmlsaXR5IHBlcnNwZWN0aXZlIChmcm9tIG15IHBv
aW50IG9mIHZpZXcpIGl0IHdvdWxkCmJlIG5pY2UsIGlmIGluIHRoZSBzdWJqZWN0IGZpZWxkIGNv
dWxkIGJlIHdyaXR0ZW4gYmxpbmRsaW51eCBvcgpzb21ldGhpbmcgbGlrZSB0aGF0LCBzbyBhbiBh
dmVyYWdlIGJsaW5kIHVzZXIgY291bGQgcXVpY2tseSBkZXRlcm1pbmUsCndoYXQgaXMgYW5kIGZy
b20gd2hlcmUgaXMgYSBtYWlsLCBzaW11bGFyIGxpa2UgbWFqb3JpdHkgb2Ygb3RoZXIKbWFpbGlu
ZyBsaXN0cyBoYXZlIGJlZW4gc2V0LgoKaG9wZSwgdGhhdCBJIHdhcyBjbGVhciwgdGhhbmtzLgoK
YmVzdCByZWdhcmRzLApKb8W+ZWYKCjIwMjItMDgtMTYgMDozNSBHTVQrMDIuMDAsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IFNh
bXVlbCB3cm90ZToKPj4gSm9obiB3cm90ZToKPj4gPiBJIHdvdWxkIGxpa2UgdG8gc2VlIGlmIHRo
ZXJlIGlzIG5vdCBhbiBhbHRlcm5hdGl2ZS9wb3NzaWJpbGl0eQo+PiA+IHRvIGJyaW5nIGJhY2sg
bmFtZSBhbmQgZS1tYWlsIGZyb20gc2VuZGVycyB3aGlsZSBtYWludGFpbmluZyB0aGUKPj4gPiB2
aWFiaWxpdHkgb2YgdGhpcyBsaXN0Pwo+Pgo+PiBOb3QgZ2V0dGluZyB0aGUgZS1tYWlsIHdvdWxk
IGJlIG5vdCB0b28gbXVjaCBhIHByb2JsZW0sIGJ1dCBub3QgaGF2aW5nCj4+IHRoZSBuYW1lIGlz
IHJlYWxseSBwcm9ibGVtYXRpYyBmb3IgZm9sbG93aW5nIGRpc2N1c3Npb25zLCBpbmRlZWQuCj4K
PiBJIGFncmVlLiBJZiB3ZSdyZSBhbHJlYWR5IGhhY2tpbmcgdGhlIEZyb206IGZpZWxkLCBob3cg
YWJvdXQKPiBpbmNsdWRpbmcgdGhlIG9yaWdpbmFsIG5hbWUgZS5nCj4gSnVzdFNvbWVHdXkgdmlh
IEJsaW51eCA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gPwo+Cj4gSWYgdGhlIE1UQSBpcyBwb3N0
Zml4LCBpdCBjb3VsZCBiZSBqdXN0IHRoZSBtYXR0ZXIKPiBvZiB3cml0aW5nIGEgcmVnZXggdG8g
ZG8gdGhpcy4gKFJhaXNlcyBoYW5kIHRvIHZvbHVudGVlcikKPgo+IEpvZWwKPgo+IC0tCj4gSm9l
bCBSb3RoCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

