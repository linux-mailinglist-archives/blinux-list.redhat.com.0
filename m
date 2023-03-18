Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5883C6BFBDB
	for <lists+blinux-list@lfdr.de>; Sat, 18 Mar 2023 18:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679160662;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+z7RU3WFTISPuiZ738Nxv44MmFC6Ogrf/7ZwR8pDE/4=;
	b=TKddPVYIqtbZCpWqk4M1tCTa+KkieNr4DkdipwO4O1lOfXltN3A9HdNQjw1a8SUC/omuWX
	8r06nXt9v/L6FMK4RqdrDTpPq3VZM/+aDqlDb46xcnyY1KgSMrbTqy/Y5bG3oduOw0th66
	r/VKhvPTuKyTZPAvfiSFBXJ6F9fuZOg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-CuHUu-E7OjWE7mP-xgCXjA-1; Sat, 18 Mar 2023 13:31:00 -0400
X-MC-Unique: CuHUu-E7OjWE7mP-xgCXjA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D82029AA2FC;
	Sat, 18 Mar 2023 17:30:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C55611121318;
	Sat, 18 Mar 2023 17:30:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 79A9C1946A51;
	Sat, 18 Mar 2023 17:30:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 18 Mar 2023 13:30:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: sparkylinux info
To: blinux-list@redhat.com
References: <mailman.65.1679141396.636364.blinux-list@redhat.com>
 <mailman.74.1679159925.636366.blinux-list@redhat.com>
 <mailman.73.1679160484.636359.blinux-list@redhat.com>
In-Reply-To: <mailman.73.1679160484.636359.blinux-list@redhat.com>
Message-ID: <mailman.59.1679160655.636367.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBzdXBwb3NlIHRoZSBjb25jbHVzaW9uIGlzOiBhY2Nlc3NpYmlsaXR5IGRvZXNuJ3QgaGFwcGVu
IGJ5IGFjY2lkZW50LiAKSXQgbmVlZHMgcGVvcGxlIHRvIGxvb2sgYWZ0ZXIgaXQuCgpPbiAxOC8z
LzIzIDEzOjI3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEl0
J3Mga2luZCBvZiBzYWQgcmVhbGx5LiBJIHRob3VnaHQgSSdkIHRyeSB2YW5pbGxhIE9TIG91dCwg
YW5kIAo+IHNwZWVjaC1kaXNwYXRjaGVyIHdhc24ndCBwYWNrYWdlZCBjb3JyZWN0bHkgaW4gdGhl
IGluc3RhbGxlci4gT2theSBubyAKPiBwcm9ibGVtLCBJJ2xsIGp1c3QgaW5zdGFsbCBzcGVlY2gt
ZGlzcGF0Y2hlci1lc3BlYWstbmcuIFRoZW4gSSBmb3VuZCAKPiBvdXQgdGhlIGluc3RhbGxlciB3
YXMgQSwgR1RLNCwgYW5kIEIsIHNlZW1lZCB0byByZW5kZXIgZXZlcnl0aGluZyB0byAKPiBPcmNh
IGF0IG9uY2UsIHNvIGZpbmRpbmcgd2hhdCBzY3JlZW4geW91IHdlcmUgb24gYW5kIGdvaW5nIHRo
cm91Z2ggCj4gdGhlbSB3YXMgbW9yZSB0cm91YmxlIHRoYW4gaXQgd2FzIHdvcnRoLgo+Cj4gT24g
MTgvMDMvMjAyMyAxNzoxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4gSXQgc2hvdWxkIGJlIG5vIHN1cnByaXNlIHRoYXQgaWYgeW91IGRvd25sb2FkIHNvbWUg
TGludXggZGlzdHJpYnV0aW9uIAo+PiB3aGljaCBoYXMgbm8gYWNjZXNzaWJpbGl0eSBjb21tdW5p
dHksIGl0IGlzbid0IGFjY2Vzc2libGUuCj4+Cj4+IFRoaXMgc29ydCBvZiBtZXNzYWdlIGtlZXBz
IGNvbWluZyB1cCBvbiBtYWlsaW5nIGxpc3RzIHdpdGggdmFyaW91cyAKPj4gZGlzdHJpYnV0aW9u
cywgd2l0aCBzaW1pbGFyIHJlc3VsdHMuCj4+Cj4+IElmIHlvdSB3YW50IGFjY2Vzc2liaWxpdHks
IHlvdSBiYXNpY2FsbHkgaGF2ZSB0byBrZWVwIHRvIHRoZSAKPj4gZGlzdHJpYnV0aW9ucyBmb3Ig
d2hpY2ggc29tZW9uZSBpcyBsb29raW5nIGFmdGVyIHRoZSAKPj4gYWNjZXNzaWJpbGl0eS1yZWxh
dGVkIHBhY2thZ2VzLCBhbmQgcHJlZmVyYWJseSBmb3Igd2hpY2ggdGhlcmUncyBhIAo+PiBjb21t
dW5pdHkgb2Ygc2NyZWVuIHJlYWRlciB1c2Vycy4KPj4KPj4gRm9yICJtYWluc3RyZWFtIiAoaS5l
Liwgbm90IHNwZWNpZmljYWxseSBhY2Nlc3NpYmlsaXR5LW9yaWVudGVkKSAKPj4gZGlzdHJpYnV0
aW9ucywgaXQgcHJvYmFibHkgbWVhbnMgQXJjaCwgRGViaWFuLCBGZWRvcmEgYW5kIFVidW50dSBm
b3IgCj4+IHRoZSBtb3N0IHBhcnQgYXQgdGhpcyBwb2ludCAtIHdpdGggYXBvbG9naWVzIGluIGFk
dmFuY2UgZm9yIHdoYXRldmVyIAo+PiBJJ3ZlIGluYWR2ZXJ0ZW50bHkgbGVmdCBvdXQuCj4+Cj4+
IE9uIDE4LzMvMjMgMDg6MDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+PiBEb24ndCBkb3dubG9hZCB0aGlzIGluc3RhbGxlci7CoCBJdHMgcGFja2FnZSBsaXN0
IGhhcyBuZWl0aGVyIGVzcGVhayBub3IKPj4+IG9yY2EgaW4gaXQgYW5kIHRoYXQgbWVhbnMgaWYg
eW91IGRvIG1ha2UgdGhlIGRvd25sb2FkIG1pc3Rha2UgeW91J3JlIAo+Pj4gZ29pbmcKPj4+IHRv
IG5lZWQgYSBzaWdodGVkIGluc3RhbGwgYW5kIG1heWJlIHdvbid0IGZpbmQgZXNwZWFrIG9yIG9y
Y2EgaW4gdGhlaXIKPj4+IHJlcG9zaXRvcmllcyBlaXRoZXIuCj4+Pgo+Pj4KPj4+IC0tIEp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1
c2VkIGluCj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+PiDCoCBzb2FwLCBiYWxsb3QsIGp1cnks
IGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4gLUVkIEhvd2RlcnNoZWx0
IChBdXRob3IsIDE5NDApCj4+Pgo+Pj4gLgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

