Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF8468A9B0
	for <lists+blinux-list@lfdr.de>; Sat,  4 Feb 2023 12:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675511174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UJWCogFs0jWS+YNTOQpt0Ryc3842ic6bSsXQkGVBU1w=;
	b=NIZHpWp5me090aeHeOsgpUsQaVEA0GL9Bzrs7HDdqPwkNvHzO6Gm8Ej2XfkoNuCcYel8iD
	6BB8v9RayWm3i/Ys9OL800w0LeocWQzhuplVfuebYnHcTPxobmmgxEmT6ivV39tg5srpcC
	wxNTnYlLxy8ngj+y7aztn+780V4f6DY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-Bd_KE28_MDODdpxmyTUKJw-1; Sat, 04 Feb 2023 06:46:10 -0500
X-MC-Unique: Bd_KE28_MDODdpxmyTUKJw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEE3F3C025B2;
	Sat,  4 Feb 2023 11:46:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 98635140EBF6;
	Sat,  4 Feb 2023 11:45:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 981FD19465A3;
	Sat,  4 Feb 2023 11:45:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 4 Feb 2023 03:45:49 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.3815.1675286644.8172.blinux-list@redhat.com>
In-Reply-To: <mailman.3815.1675286644.8172.blinux-list@redhat.com>
Message-ID: <mailman.4169.1675511154.8172.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8KCmFtIHNhdmluZyB0aGlzIG1lc3NhZ2UuCgp0aGFua3MgZm9yZSB0aGUgdGlwCgp5b3Vy
IGF3ZXNvbWUKCkhhbmsKCgpPbiAyLzEvMjAyMyAxOjIzIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IE1pa2UsCj4KPgo+IFdoYXQgdm0gc29mdHdhcmUgYXJl
IHlvdSB1c2luZz/CoCBJZiB1c2luZyB2bXdhcmUsIHdoZW4gdGhlIG1lbnUgY29tZXMgCj4gdXAs
IGRvd25hcnJvdyB0byBtYWtlIHN1cmUgeW91IGFyZSBpbiB0aGUgbWVudS7CoCBwcmVzcyBzIGZv
ciBzaGVsbCBhbmQgCj4gcHJlc3MgZW50ZXIuwqAgVGhpcyB3aWxsIGRyb3AgeW91IGluIGEgc2hl
bGwuwqAgTm93IHR5cGUgdGhlIGZvbGxvd2luZywgCj4gYWxzYW1peGVyLsKgIFRoaXMgd2lsbCBs
b2FkIHRoZSBhbHNhIG1peGVyIHNldHRpbmdzLsKgIE5vdyBwcmVzcyB1cCAKPiBhcnJvdyB0byBy
YXplIHRoZSB2YWx1bWUuwqAgWW91IG1heSB3YW50IHRvIHByZXNzIHJpZ2h0IGFycm93IHRvIHN3
aXRjaCAKPiBiZXR3ZWVuIHRoZSBkaWZmZXJlbnQgYXVkaW8gc2V0dGluZ3MgdG8gbWFrZSBzdXJl
IHRoYXQgeW91IGFyZSBzZXQgCj4gdGh3ZSB3YXkgeW91IHdhbnQuwqAgT25jZSB0aGlzIGlzIGRv
bmUsIGp1c3QgcHJlc3MgZXhjYXBlIHRvIHJldHVybiB0byAKPiB0aGUgc2hlbGwgYW5kIHByZXNz
IGN0cmwrRCBhbmQgeW91IHdpbGwgYmUgcmV0ZXJuZWQgdG8gdGhlIG1lbnUgYW5kIAo+IHNlbGVj
dCBpbnN0YWxsIGplbnV4IG9uIHRoaXMgZGV2aWNlIGFuZCBmb2xsb3cgdGhlIHByb21wdHMuwqAg
RkVucmVyIGlzIAo+IHVzZWQgYnkgZGVmYXVsdC4KPgo+Cj4gSFRILgo+Cj4gTWF0dGhldwo+Cj4K
Pgo+IE9uIDIvMS8yMyAwMTowMiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4gSGV5IGFsbCwKPj4KPj4gSnVzdCBwdWxsZWQgZG93biB0aGUgbGF0ZXN0IEpl
bnV4IHRvIGdpdmUgaXQgYSB0cnksIGJ1dCBmb3Igc29tZSAKPj4gcmVhc29uIEkgY2Fubm90IGdl
dCBhbnkgc3BlZWNoIG91dCBvZiBpdC7CoCBJIGhlYXIgdGhlIGJlZXBzIHdoZW4gdGhlIAo+PiBW
TSBib290cyB1cCwgSSBjYW4gb2NyIHdpdGggbnZkYSBhbmQgc2VlIHNlbGYtdGVzdCByZXF1ZXN0
ZWQsIHBsZWFzZSAKPj4gd2FpdCwgYW5kIGFmdGVyIGEgd2hpbGUgdGhlIG1lbnUgY29tZXMgdXAu
wqAgSSBjYW4gYWxzbyBzZWUgdGhhdCAKPj4gdGhyb3VnaCBvY3IsIGJ1dCBJIGdldCBubyBzcGVl
Y2ggd2hlbiBpbnNpZGUgdGhlIHZtLiBJJ3ZlIGNoZWNrZWQgdG8gCj4+IG1ha2Ugc3VyZSB0aGUg
c291bmQgY2FyZHMgYXJlIGNvcnJlY3QsIGFueW9uZSBoYXZlIGFueXRoaW5nIGVsc2UgSSAKPj4g
Y2FuIHRyeT/CoCBJJ20gbm90IGZpbmRpbmcgYW55IGRvY3VtZW50YXRpb24gYW55d2hlcmUsIHdo
aWNoIGlzIHdoeSAKPj4gSSdtIGFza2luZyBoZXJlLgo+Pgo+PiBNaWtlLgo+Pgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

