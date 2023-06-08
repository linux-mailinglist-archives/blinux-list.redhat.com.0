Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1805F72882E
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 21:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686252099;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Yka+vRt6P4bkwHcBvOoH2qS9r+DmgkCxQd3l+jr/cE=;
	b=W2CmdOWvzmwaMJViuUdNgtdQc009+cUMh0I+HMxQ5msZ5yeNmJl8iiFiZZtevuNhCfR476
	eCwJqkLfs19uYO/gfUciPUWX1tm8TGu2bZ1aEmGeWSHnQZj6vktu7jWxibSzsUbO++DJMS
	ScKFnOLbolaqYhPMWeEkRq3g6DTWfmA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-goczwlEPPqSyEzeP1lrC6A-1; Thu, 08 Jun 2023 15:21:36 -0400
X-MC-Unique: goczwlEPPqSyEzeP1lrC6A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C75322999B44;
	Thu,  8 Jun 2023 19:21:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 23F1448205E;
	Thu,  8 Jun 2023 19:21:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8535319451C4;
	Thu,  8 Jun 2023 19:21:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 8 Jun 2023 15:21:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: Fedora Mate and Wi-Fi
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1470.1686180577.910454.blinux-list@redhat.com>
 <mailman.1512.1686222307.910461.blinux-list@redhat.com>
 <mailman.1556.1686237090.910461.blinux-list@redhat.com>
In-Reply-To: <mailman.1556.1686237090.910461.blinux-list@redhat.com>
Message-ID: <mailman.1661.1686252087.910454.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgYWxsLAoKZWRvcmEgMzUgYW5kIDM2IGFyZSBib3RoIEVPTC7CoCBJIHdvdWxkIGVhdGhlciAz
NyBvciAzOCB3aGljaCBpcyAKY3VycmVudC7CoCBIVEguCgpCVFcsIGlmIHlvdSBkbyBhIHNlYXJj
aCB5b3Ugd2lsbCBmaW5kIG9sZGVyIHZlcnNpb25zIG9mIGZlZG9yYS4KCk1hdHRoZXcKCk9uIDYv
OC8yMyAxMDo0NeKAr0FNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEkgaGF2ZSBmZWRvcmEgbWF0ZSAzNSBvbiBhIHRodW1iIGRyaXZlLCBidXQgYW0gbm90IHN1
cmUgd2hlbiBJIGhhZCBkb3dubG9hZGVkIGl0Lgo+IE1heWJlIGl0IGNvdWxkIHN0aWxsIGJlIGhh
ZCBvbiB0aGUgZmVkb3JhIHNpdGUuCj4KPj4gT24gSnVuIDgsIDIwMjMsIGF0IDA2OjA1LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPj4KPj4gTWF5YmUgeW91IGhhdmUgYSBtaXNzaW5nIGRyaXZlci4gQnkgdGhlIHdheSwg
d2hlcmUgY2FuIEkgZ2V0IGEgY3VycmVudCBjb3B5Cj4+IG9mIEZlZG9yYSAzNT8KPj4KPj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogQmxpbnV4LWxpc3QgPGJsaW51eC1saXN0
LWJvdW5jZXNAcmVkaGF0LmNvbT4gT24gQmVoYWxmIE9mIExpbnV4IGZvcgo+PiBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24KPj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDcsIDIwMjMgNjoyOCBQTQo+
PiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4KPj4gU3ViamVjdDogRmVkb3JhIE1hdGUgYW5kIHdpZmkKPj4KPj4gSSBoYXZlIGp1
c3QgcHV0IEZlZG9yYSAzNSBvbiBhIG1hY2hpbmUgd2hpY2ggaGFkIGhhZCB3aW5kb3dzIDEwLgo+
PiBJIGNhbm5vdCByZW1lbWJlciBob3cgdG8gZ2V0IHdpZmkgbmV0d29yayBuYW1lcyB0byBiZSBz
ZWVuLgo+PiBUaGUgaXRlbXMgb24gdGhlIHRvcCBwYW5uZWwgSSBmaW5kIGFyZToKPj4gc291bmQs
IGJsdWUgdG9vdGgsIGRyYWdvcmEsIGEgbWVudSBmb3IgZWRpdGluZyBjb25uZWN0aW9ucywgYnV0
IG5vdGhpbmcKPj4gb2ZmZXJpbmcgdG8gc2hvdyB3aGF0IHdpZmkgbmV0d29ya3MgYXJlIGF2YWls
YWJsZS4KPj4gTGFzdCBuaWdodCBJIGZvdW5kIHRoZSBsaXN0IHdpdGggYW5vdGhlciBtYWNoaW5l
IG9uIHdoaWNoIEkgaGFkIHB1dCB0aGUgc2FtZQo+PiBvcGVyYXRpbmcgc3lzdGVtLgo+Pgo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KLS0gClNlbnQgZnJvbSBhcmNo
IGxpbnV4IHVzaW5nIHRodW5kZXJiaXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cg==

