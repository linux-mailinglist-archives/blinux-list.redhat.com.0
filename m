Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC6B5BBEE0
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 18:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663516995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/BD9JOezRoqKiH4XuSJo4J8DZDSR9ch8xVeCkwC5ohQ=;
	b=NxMlmAlL5E57zP/6cuZYNC0VM6k1GP3qEAj+szHExxd/pHEVOVNysX3WxA9tCfo2B13IqR
	9Ev6mv0Hf2fWHgvm99gICCdYZztDYEXC2eSuMpSY1+Cs2ZBCrgL0kyKGuH6HfiCm0Flc2+
	TD5EyZ/8lSGur90Hjl5KOxhs05SHQ+w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-90-j6cL4N_tPG2718MzKd8jig-1; Sun, 18 Sep 2022 12:03:11 -0400
X-MC-Unique: j6cL4N_tPG2718MzKd8jig-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14E3985A583;
	Sun, 18 Sep 2022 16:03:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 46CF9492CA4;
	Sun, 18 Sep 2022 16:03:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AED2719465A2;
	Sun, 18 Sep 2022 16:03:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 18 Sep 2022 18:00:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: KDE Plasma 5.26 beta questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1123.1663511932.6076.blinux-list@redhat.com>
 <mailman.1010.1663513818.6081.blinux-list@redhat.com>
In-Reply-To: <mailman.1010.1663513818.6081.blinux-list@redhat.com>
Message-ID: <mailman.1026.1663516986.6083.blinux-list@redhat.com>
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
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCmhlcmUgaXMgdGhlIGluaXRpYWwgaG93dG86Cmh0dHBzOi8vd3d3LnBhdHJlb24uY29t
L3Bvc3RzLzcyMTQ3NDc5CgpjaGVlcnMgY2hyeXMKCgoKQW0gMTguMDkuMjIgdW0gMTc6MTAgc2No
cmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+IEhvd2R5LAo+Cj4gTGlr
ZSBpIHdyb3RlLCBpIG0gY3VycmVudGx5IG5vdCBvbiBteSBjb21wdXRlci4gSSBzZW5kIHRoZSBp
bnN0cnVjdGlvbnMgd2hlbiBpIGFycml2ZSBhdCBob21lLgo+Cj4gQ2hlZXJzIGNocnlzCj4KPgo+
PiBBbSAxOC4wOS4yMDIyIHVtIDE2OjM5IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Cj4+IO+7v1N1cmUsIEkgZ290
IGRvY2tlciBzZXQgdXAgc28gaG93IHdvdWxkIEkgZ28gYWJvdXQgdGhpcz8KPj4KPj4gSSB0cmll
ZCB2aWEgcXVpY2tlbXUgd2l0aCBubyBsdWNrLCBPcmNhIGRpZG4ndCBzZWVtIHRvIGNvbWUgdXAg
aW4gdGhlIGlzbyB0aGF0IHF1aWNrZW11IHB1bGxlZCBkb3duIGZvciBLREUgTmVvbiB1bnN0YWJs
ZS4gU28geWVzLCBJJ2xsIHRha2UgdGhhdCBob3cgdG8gZ3VpZGUgeWVzIHBsZWFzZQo+Pgo+Pgo+
Pgo+Pj4gT24gOS8xOC8yMiAxNTozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4+IEhvd2R5LAo+Pj4KPj4+IFRvIGdldCBpdCBpbiBvZmZpY2lhbCBBcmNoTGlu
dXggUmVwb3NpdG9yeSB5b3UgbWlnaHQgbmVlZCB0byB3YWl0IHRpbCBLREUgUGxhc21hIDUuMjYg
aXMgcmVsZWFzZWQuCj4+Pgo+Pj4gQnV0IGkganVzdCBzZWFyY2hlZCBhIGVhc3kgd2F5IGZvciB0
ZXN0aW5nIEtERSBOZW9uIERldmVsb3BtZW50IG5pZ2h0bHkgdXNpbmcgZG9ja2VyLiAgQXMgdXNl
cnMgc2hvdWxkIGJlIGFibGUgdG8gZ2V0IGludm9sdmVkIGluIGFjY2Vzc2liaWxpdHkgZGV2ZWxv
cG1lbnQgYW5kIHRlc3RpbmcgcHJvY2Vzcy4KPj4+Cj4+PiBJIG0gY3VycmVudGx5IG5vdCBvbiBt
eSBtYWNoaW5lIGJ1dCBpIGFscmVhZHkgaGF2ZSBhIHdvcmtpbmcgaG93dG8gdG8gc2hhcmUgd2l0
aCB5b3UuCj4+Pgo+Pj4gQnkgdGhlIHdheSwgS0RFIGp1c3Qgdm90ZXMgaXRzIGdvYWxzLiBLREUg
dm90ZXMgMyBnb2Fscy4gT25seSA2IGdvYWxzIGF2YWlsYWJsZSBmb3Igdm90aW5nLiBBY2Nlc3Np
YmlsaXR5IGlzIG9uZSBvZiB0aGVtLiBTbyB0aGUgY2hhbmNlIGlzIHZlcnkgaGVpZ2ggdGhhdCBQ
bGFzbWEgNS4yNiB3YXMganVzdCB0aGUgZmlyc3Qgc2hvdCBvZiBhIGxvbmcgc2VyaWVzIG9mIGFj
Y2Vzc2liaWxpdHkgaW1wcm92ZW1lbnRzLiBCeSB0aGUgd2F5IG1vc3Qgb2YgcmVjZW50ICB3b3Jr
IGlzIGRvbmUgYnkgY2FybCBzd2FuIGFuZCBmdXNpb25mdXR1cmUuIFNvIHRoZSBjaGVycnkgZ29l
cyB0aGVyZS4KPj4+Cj4+PiBJIG0gY3VycmVudGx5IG1vc3RseSBidXN5IGluIGdldHRpbmcgb3Jj
YSByZWJhc2VkIG9uIGFuIHBsdWdpbiBhcmNoaXRlY3R1cmUuCj4+Pgo+Pj4gSW50ZXJlc3Rpbmcg
dGltZXMgYWhlYWQgaW4gdGVybXMgb2YgYWNjZXNzaWJpbGl0eS4KPj4+Cj4+PiBDaGVlcnMgY2hy
eXMKPj4+Cj4+Pj4+IEFtIDE4LjA5LjIwMjIgdW0gMTY6MjAgc2NocmllYiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+PiDvu79T
byBxdWljayBxdWVzdGlvbiwgc2luY2UgS0RFIC5QbGFzbWEgNS4yNiBiZXRhIGlzIGEgdGhpbmcs
IHdpdGggYXBwYXJlbnRseSBBMTFZIGltcHJvdmVtZW50cywgZ29pbmcgYnkgbnVtZXJvdXMgWVQg
dmlkcywgS0RFLm9yZyBhbmQgdGhlaXIgKGFkbWl0dGVkbHkgbWFzc2l2ZSkgY2hhbmdlbG9nLi4u
Cj4+Pj4KPj4+PiBJcyBpdCB3b3J0aCB0ZXN0aW5nIGl0IG91dD8gTG9va2luZyBhdCBteSByZXBv
cyBvbiBBcmNoIEknbSBzZWVpbmcgNS4yNS45LTEgaGVyZSwgYW5kIG5vdCBzZWVpbmcgYW55IG9m
IHRoZSB1cGRhdGVzIGxpc3RlZCBpbiB0aGUgY2hhbmdlbG9nLCBpLmUuIHRoZSBkaWFsb2dzIGFy
ZSBzdGlsbCBpbmFjY2Vzc2libGUsIHRoZSBjbG9jayBkb2Vzbid0IHBsYXkgbmljZSB3aXRoIE9y
Y2EsIGV0IGFsLgo+Pj4+Cj4+Pj4gU28gZG8gSSBuZWVkIHRvIHdhaXQgb24gdGhlIGZ1bGwgcmVs
ZWFzZSBvZiA1LjI2IHRvIGdldCBhbGwgdGhlIG5ldyBmZWF0dXJlcyB0aGVuLCBzaW5jZSB0aGUg
d2F5IEkgcmVhZCBLREUncyBiZXRhL3JlbGVhc2Ugc2NlZHVsZSBpcyB0aGUgYmV0YSBpcyBmZWF0
dXJlIGNvbXBsZXRlIGlmIEkgdW5kZXJzdGFuZCBpdCByaWdodCBvciBhbSBJIG5vdCB1bmRlcnN0
YW5kaW5nIGhvdyBLREUgZG9lcyB0aGVpciBiZXRhcwo+Pj4+Cj4+Pj4KPj4+PiBJIGtub3cgQ3J5
cyBoYXMgYmVlbiBkb2luZyBhIGxvdCBvZiB3b3JrIHdpdGggS0RFIHNvIEknbSBob3BpbmcgZm9y
IHlvdXIgaW5wdXQgb24gdGhpcywgc2luY2UgSSd2ZSBiZWVlbiB0b2xkIGJ5IG90aGVyIGZvbGtz
IG9mZiBsaXN0IHRoZXkndmUgaGFkIG11Y2ggbXVjaCBiZXR0ZXIgZXhwZXJpZW5jZXMgd2l0aCBp
dCBhbmQgZ2V0dGluZyB0aGluZ3MgdG8gd29yayB0aGF0IEkgY2FuJ3QsIGZvciBleGFtcGxlCj4+
Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

