Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 884175BBEE8
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 18:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663517706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zBHlpiYP/vGh2J4IY7cKbvNA8u6j4GrueObQp2CBvG4=;
	b=WjZh8tVaYVOVoGva21A9y4BZGsmXjhcDS++Kb0DA9Er0cH5xYhyoQMtEsy8XUzQafICQze
	hMk64W/9bY3G3+BHcKz4mGKtN1SWMQiRqLGlLDw7IND3phCo6xmAjmBP9PIyswhC8bvEo8
	psbhuwzrWF9IYKgMgUt7bImPbKmc3uo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-548-J9o19nhqM1Smicg5oXFXcw-1; Sun, 18 Sep 2022 12:15:02 -0400
X-MC-Unique: J9o19nhqM1Smicg5oXFXcw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8CE023C021A6;
	Sun, 18 Sep 2022 16:15:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 054F2492B05;
	Sun, 18 Sep 2022 16:15:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8BA3E19465A2;
	Sun, 18 Sep 2022 16:15:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 18 Sep 2022 17:14:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: KDE Plasma 5.26 beta questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1123.1663511932.6076.blinux-list@redhat.com>
 <mailman.1010.1663513818.6081.blinux-list@redhat.com>
 <mailman.1026.1663516986.6083.blinux-list@redhat.com>
In-Reply-To: <mailman.1026.1663516986.6083.blinux-list@redhat.com>
Message-ID: <mailman.1029.1663517700.6083.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Tm90IHN1cmUgd2h5IGFuZCBJIHRob3VnaHQgSSBtZW50aW9uZWQgaXQgYmVvcmUsIGJ1dCBpbiB0
aGUgbGF0ZXN0IApGaXJlZm94IHRoYXQganVzdCBsb2FkcyB1cCBhIGJsYW5rIHBhZ2UgZm9yIG1l
IHdpdGggYW4gYWxlcnQgYm94IEkgY2FuJ3QgCmRvIGFueXRoaW5nIHdpdGg/CgoKVGhhdCdzIGEg
dGhpbmcgd2l0aCBQYXRyaW9uIHRob3VnaCwgaXQncyBkb2luZyB0aGF0IG5vIG1hdHRlciB3aGlj
aCBJIApsb29rIGF0IG9uIHRoZSBsYXRlc3QgRmlyZWZveCBob3dldmVyCgpPbiA5LzE4LzIyIDE3
OjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhvd2R5LAo+
IGhlcmUgaXMgdGhlIGluaXRpYWwgaG93dG86Cj4gaHR0cHM6Ly93d3cucGF0cmVvbi5jb20vcG9z
dHMvNzIxNDc0NzkKPgo+IGNoZWVycyBjaHJ5cwo+Cj4KPgo+IEFtIDE4LjA5LjIyIHVtIDE3OjEw
IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4gSG93ZHksCj4+
Cj4+IExpa2UgaSB3cm90ZSwgaSBtIGN1cnJlbnRseSBub3Qgb24gbXkgY29tcHV0ZXIuIEkgc2Vu
ZCB0aGUgCj4+IGluc3RydWN0aW9ucyB3aGVuIGkgYXJyaXZlIGF0IGhvbWUuCj4+Cj4+IENoZWVy
cyBjaHJ5cwo+Pgo+Pgo+Pj4gQW0gMTguMDkuMjAyMiB1bSAxNjozOSBzY2hyaWViIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gCj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46
Cj4+Pgo+Pj4g77u/U3VyZSwgSSBnb3QgZG9ja2VyIHNldCB1cCBzbyBob3cgd291bGQgSSBnbyBh
Ym91dCB0aGlzPwo+Pj4KPj4+IEkgdHJpZWQgdmlhIHF1aWNrZW11IHdpdGggbm8gbHVjaywgT3Jj
YSBkaWRuJ3Qgc2VlbSB0byBjb21lIHVwIGluIAo+Pj4gdGhlIGlzbyB0aGF0IHF1aWNrZW11IHB1
bGxlZCBkb3duIGZvciBLREUgTmVvbiB1bnN0YWJsZS4gU28geWVzLCAKPj4+IEknbGwgdGFrZSB0
aGF0IGhvdyB0byBndWlkZSB5ZXMgcGxlYXNlCj4+Pgo+Pj4KPj4+Cj4+Pj4gT24gOS8xOC8yMiAx
NTozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBIb3dk
eSwKPj4+Pgo+Pj4+IFRvIGdldCBpdCBpbiBvZmZpY2lhbCBBcmNoTGludXggUmVwb3NpdG9yeSB5
b3UgbWlnaHQgbmVlZCB0byB3YWl0IAo+Pj4+IHRpbCBLREUgUGxhc21hIDUuMjYgaXMgcmVsZWFz
ZWQuCj4+Pj4KPj4+PiBCdXQgaSBqdXN0IHNlYXJjaGVkIGEgZWFzeSB3YXkgZm9yIHRlc3Rpbmcg
S0RFIE5lb24gRGV2ZWxvcG1lbnQgCj4+Pj4gbmlnaHRseSB1c2luZyBkb2NrZXIuwqAgQXMgdXNl
cnMgc2hvdWxkIGJlIGFibGUgdG8gZ2V0IGludm9sdmVkIGluIAo+Pj4+IGFjY2Vzc2liaWxpdHkg
ZGV2ZWxvcG1lbnQgYW5kIHRlc3RpbmcgcHJvY2Vzcy4KPj4+Pgo+Pj4+IEkgbSBjdXJyZW50bHkg
bm90IG9uIG15IG1hY2hpbmUgYnV0IGkgYWxyZWFkeSBoYXZlIGEgd29ya2luZyBob3d0byAKPj4+
PiB0byBzaGFyZSB3aXRoIHlvdS4KPj4+Pgo+Pj4+IEJ5IHRoZSB3YXksIEtERSBqdXN0IHZvdGVz
IGl0cyBnb2Fscy4gS0RFIHZvdGVzIDMgZ29hbHMuIE9ubHkgNiAKPj4+PiBnb2FscyBhdmFpbGFi
bGUgZm9yIHZvdGluZy4gQWNjZXNzaWJpbGl0eSBpcyBvbmUgb2YgdGhlbS4gU28gdGhlIAo+Pj4+
IGNoYW5jZSBpcyB2ZXJ5IGhlaWdoIHRoYXQgUGxhc21hIDUuMjYgd2FzIGp1c3QgdGhlIGZpcnN0
IHNob3Qgb2YgYSAKPj4+PiBsb25nIHNlcmllcyBvZiBhY2Nlc3NpYmlsaXR5IGltcHJvdmVtZW50
cy4gQnkgdGhlIHdheSBtb3N0IG9mIAo+Pj4+IHJlY2VudMKgIHdvcmsgaXMgZG9uZSBieSBjYXJs
IHN3YW4gYW5kIGZ1c2lvbmZ1dHVyZS4gU28gdGhlIGNoZXJyeSAKPj4+PiBnb2VzIHRoZXJlLgo+
Pj4+Cj4+Pj4gSSBtIGN1cnJlbnRseSBtb3N0bHkgYnVzeSBpbiBnZXR0aW5nIG9yY2EgcmViYXNl
ZCBvbiBhbiBwbHVnaW4gCj4+Pj4gYXJjaGl0ZWN0dXJlLgo+Pj4+Cj4+Pj4gSW50ZXJlc3Rpbmcg
dGltZXMgYWhlYWQgaW4gdGVybXMgb2YgYWNjZXNzaWJpbGl0eS4KPj4+Pgo+Pj4+IENoZWVycyBj
aHJ5cwo+Pj4+Cj4+Pj4+PiBBbSAxOC4wOS4yMDIyIHVtIDE2OjIwIHNjaHJpZWIgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiAKPj4+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29t
PjoKPj4+Pj4g77u/U28gcXVpY2sgcXVlc3Rpb24sIHNpbmNlIEtERSAuUGxhc21hIDUuMjYgYmV0
YSBpcyBhIHRoaW5nLCB3aXRoIAo+Pj4+PiBhcHBhcmVudGx5IEExMVkgaW1wcm92ZW1lbnRzLCBn
b2luZyBieSBudW1lcm91cyBZVCB2aWRzLCBLREUub3JnIAo+Pj4+PiBhbmQgdGhlaXIgKGFkbWl0
dGVkbHkgbWFzc2l2ZSkgY2hhbmdlbG9nLi4uCj4+Pj4+Cj4+Pj4+IElzIGl0IHdvcnRoIHRlc3Rp
bmcgaXQgb3V0PyBMb29raW5nIGF0IG15IHJlcG9zIG9uIEFyY2ggSSdtIHNlZWluZyAKPj4+Pj4g
NS4yNS45LTEgaGVyZSwgYW5kIG5vdCBzZWVpbmcgYW55IG9mIHRoZSB1cGRhdGVzIGxpc3RlZCBp
biB0aGUgCj4+Pj4+IGNoYW5nZWxvZywgaS5lLiB0aGUgZGlhbG9ncyBhcmUgc3RpbGwgaW5hY2Nl
c3NpYmxlLCB0aGUgY2xvY2sgCj4+Pj4+IGRvZXNuJ3QgcGxheSBuaWNlIHdpdGggT3JjYSwgZXQg
YWwuCj4+Pj4+Cj4+Pj4+IFNvIGRvIEkgbmVlZCB0byB3YWl0IG9uIHRoZSBmdWxsIHJlbGVhc2Ug
b2YgNS4yNiB0byBnZXQgYWxsIHRoZSAKPj4+Pj4gbmV3IGZlYXR1cmVzIHRoZW4sIHNpbmNlIHRo
ZSB3YXkgSSByZWFkIEtERSdzIGJldGEvcmVsZWFzZSBzY2VkdWxlIAo+Pj4+PiBpcyB0aGUgYmV0
YSBpcyBmZWF0dXJlIGNvbXBsZXRlIGlmIEkgdW5kZXJzdGFuZCBpdCByaWdodCBvciBhbSBJIAo+
Pj4+PiBub3QgdW5kZXJzdGFuZGluZyBob3cgS0RFIGRvZXMgdGhlaXIgYmV0YXMKPj4+Pj4KPj4+
Pj4KPj4+Pj4gSSBrbm93IENyeXMgaGFzIGJlZW4gZG9pbmcgYSBsb3Qgb2Ygd29yayB3aXRoIEtE
RSBzbyBJJ20gaG9waW5nIAo+Pj4+PiBmb3IgeW91ciBpbnB1dCBvbiB0aGlzLCBzaW5jZSBJJ3Zl
IGJlZWVuIHRvbGQgYnkgb3RoZXIgZm9sa3Mgb2ZmIAo+Pj4+PiBsaXN0IHRoZXkndmUgaGFkIG11
Y2ggbXVjaCBiZXR0ZXIgZXhwZXJpZW5jZXMgd2l0aCBpdCBhbmQgZ2V0dGluZyAKPj4+Pj4gdGhp
bmdzIHRvIHdvcmsgdGhhdCBJIGNhbid0LCBmb3IgZXhhbXBsZQo+Pj4+Pgo+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

