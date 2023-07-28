Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD58767162
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jul 2023 18:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690560198;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MKomZX8mIfky189rJmSROEBpQNsa1Zp/I8tifzmdFUE=;
	b=DmEkUaZCPItqpI3ifKX5TKa3USRZE5ZqiXjKWDbBPWqGVL3iCCoNkFV37mvotkM30WIKex
	aa4j2JQOIxpx8sFmNOUd8vvlhrqh5djcdmbVgWF3YOu2O3ztU1k6p7rQ5lMpZetUOLMXvj
	+uggDK2es67Y6qI/pHKoNRPGt5OYiq4=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-mbgkyhiUNsqbY1Rlb7QVbg-1; Fri, 28 Jul 2023 12:03:14 -0400
X-MC-Unique: mbgkyhiUNsqbY1Rlb7QVbg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FB471C05158;
	Fri, 28 Jul 2023 16:03:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3B3312017F3E;
	Fri, 28 Jul 2023 16:03:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D10CB19452D1;
	Fri, 28 Jul 2023 16:03:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Jul 2023 18:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Mint Installation?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
 <mailman.1831.1689948344.687816.blinux-list@redhat.com>
 <mailman.1852.1689953247.687816.blinux-list@redhat.com>
 <mailman.1531.1689959447.687813.blinux-list@redhat.com>
 <mailman.1717.1690516879.3172873.blinux-list@redhat.com>
 <mailman.2023.1690560024.3172870.blinux-list@redhat.com>
In-Reply-To: <mailman.2023.1690560024.3172870.blinux-list@redhat.com>
Message-ID: <mailman.1812.1690560191.3172875.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pl
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBhY3R1YWxseSB1c2UgbWF0ZSAyNi4xLgoKT24gdWJ1bnR1IG1hdGUgMjIuMDQsIHRoZSBwcm9i
bGVtIGRvZXNudCBhcHBlYXIuCgpXIGRuaXUgMjguMDcuMjAyMyBvwqAxNzo1OCwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBwaXN6ZToKPiBBcmUgeW91IHVzaW5nIHRoZSBNYXRl
IGRlc2t0b3A/wqAgTGFzdCB0aW1lIEkgdHJpZWQgTWludCBJIG5vdGljZWQgdGhlIAo+IHZlcnNp
b24gb2YgT1JDQSB3YXMgZmFpcmx5IG9sZCBjb21wYXJlZCB0byBEZWJpYW4gQm9va3dvcm0uCj4K
Pgo+Cj4gT24gNy8yNy8yMDIzIDExOjU5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+PiBNYXliZSBhIGxpdHRsZSBvZmYgdG9waWMsIGJ1dCBJIGFtIGhhdmlu
ZyBzb21lIHByb2JsZW0gd2l0aCB0aGUgCj4+IG5vdGlmaWNhdGlvbiBhcmVhIGluIGxpbnV4IG1p
bnQuIFdoZW4gSSB0cnkgdG8gbW92ZSBhcm91bmQgdGhlIGJvdHRvbSAKPj4gcGFuZWwsIGl0IHNl
ZW1zIHRvIGJlIGNvbXBsZXRlbHkgaW5hY2Nlc3NpYmxlLiBUaGUgb25seSB0aGluZyBJIGhlYXIg
Cj4+IHdoaWxlIG1vdmluZyBpcyBwYW5lbCwgcGFuZWwsIHBhbmVsLi4uLiBDYW4gdGhpcyBiZSBm
aXhlZCBzb21laG93Pwo+Pgo+PiBJIGN1cnJlbnRseSB1c2luZyBsYXRlc3QgdmVyc2lvbiBvZiBs
aW51eCBtaW50IG1hdGUgZWRpdGlvbi4KPj4KPj4KPj4gUHMuIFNvcnJ5IGZvciB0aGUgbGFuZ3Vh
Z2UgZXJyb3JzLCBidXQgSSBzcGVhayBFbmdsaXNoIHF1aXRlIHBvb3JseSwgCj4+IGFuZCB1c2Ug
YSB0cmFuc2xhdG9yLgo+PiBHcmVldGluZ3MuCj4+IE1pY2hhxYIuCj4+Cj4+Cj4+IFcgZG5pdSAy
MS4wNy4yMDIzIG/CoDE5OjEwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHBp
c3plOgo+Pj4gSSBzYWlkIExpZ2h0ZG0gYnkgbWlzdGFrZS7CoCBVbmRlciBNYXRlIHRoZSBkZWZh
dWx0IHdpbmRvdyBtYW5hZ2VyIAo+Pj4gc2VlbXMgdG8gYmUgTWFyY28uwqAgWW91IGNhbiBjaGFu
Z2UgdG8gdGhlIG9sZGVyIG9uZSBjYWxsZWQgTWV0YWNpdHkuCj4+Pgo+Pj4gT24gRGViaWFuIHRo
aXMgcHJvY2VkdXJlIHdvcmtzLCBhbmQgcHJvYmJhYmx5IHdvdWxkIHdvcmsgb24gTWludC4KPj4+
Cj4+PiBhcHQgaW5zdGFsbCBtZXRhY2l0eQo+Pj4KPj4+IEZyb20geW91ciBJRCBhdCB0aGUgY29t
bWFuZCBwcm9tcHQuCj4+Pgo+Pj4gZ3NldHRpbmdzIHNldCBvcmcubWF0ZS5zZXNzaW9uLnJlcXVp
cmVkLWNvbXBvbmVudHMgd2luZG93bWFuYWdlciAKPj4+IG1ldGFjaXR5Cj4+Pgo+Pj4gVGhlbiBy
ZWJvb3QuCj4+PiBUbyBnbyBiYWNrIHRvIE1hcmNvCj4+PiBnc2V0dGluZ3Mgc2V0IG9yZy5tYXRl
LnNlc3Npb24ucmVxdWlyZWQtY29tcG9uZW50cyB3aW5kb3dtYW5hZ2VyIG1hcmNvCj4+Pgo+Pj4g
VGhlbiByZWJvb3QuCj4+Pgo+Pj4gWW91IGNvdWxkIHRyeSBpdCBpZiB5b3Uga2VlcCBnZXR0aW5n
IGh1bmcgYW5kIHNlZSBpZiBpdCBtYWtlcyBhIAo+Pj4gZGlmZmVyZW5jZS7CoCBNYXliZSB5b3Ug
aGF2ZSBhIGRpZmZlcmVudCBwcm9ibGVtLgo+Pj4KPj4+Cj4+PiBPbiA3LzIxLzIzIDExOjI3LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEdvb2QgbW9ybmlu
ZywKPj4+PiBJZiBJIGRvIGNoYW5nZSBteSBXaW5kb3cgbWFuYWdlciwgdGhhdCBkbyB5b3UgcmVj
b21tZW5kIEkgc3dpdGNoIHRvPwo+Pj4+IFJpZ2h0IG5vdywgSeKAmW0gYWN0dWFsbHkgaW4gYSBz
aXR1YXRpb24gd2hlcmUgYSB0ZXh0LWJhc2VkIGxvZ2luIAo+Pj4+IHByb21wdCBjb21lcyB1cCwg
cmF0aGVyIHRoYW4gdGhlIG9uZSB3aGljaCBpcyBhY2Nlc3NpYmxlIHdpdGggT3JjYS4KPj4+PiBU
aGlzIGlzIGJlY2F1c2Ugd2UgaGFkIGEgaHVnZSBzdG9ybSBjb21lIHRocm91Z2ggbGFzdCBuaWdo
dC4KPj4+PiBUaGFua2Z1bGx5IHRob3VnaCwgd2UgZGlkbuKAmXQgaGF2ZSBhbnkgc2lnbmlmaWNh
bnQgZGFtYWdlIHRvIG91ciAKPj4+PiBwcm9wZXJ0eSwgb3RoZXIgdGhhbiBhIGZldyB0cmVlcyB0
aWx0ZWQuCj4+Pj4gSSBsZWZ0IG15IExpbnV4IG1hY2hpbmUgb24gZHVyaW5nIHRoZSBzdG9ybSAm
IHByb2JhYmx5IHNob3VsZG4ndCBoYXZlLgo+Pj4+IEkgYWxzbyBkaWRu4oCZdCBoYXZlIGl0IHBs
dWdnZWQgaW50byBhIFVQUy4KPj4+PiBUaGFua3MsCj4+Pj4gSmVzc2ljYSBEYWlsCj4+Pj4KPj4+
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4+IEZyb206IEJsaW51eC1saXN0IDxibGlu
dXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiAKPj4+PiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4gU2VudDogRnJpZGF5LCBKdWx5IDIxLCAyMDIz
IDEwOjA2Cj4+Pj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBTdWJqZWN0OiBSZTog
TWludCBJbnN0YWxsYXRpb24/Cj4+Pj4KPj4+PiDCoCDCoMKgwqAgSWYgeW91IGFyZSBydW5uaW5n
IE1hdGUsIHNvbWV0aW1lcyB0aGUgTWFyY28gcHJvY2VzcyBiZWNvbWVzIAo+Pj4+IGh1bmcsIHdo
aWNoIGNhdXNlcyBPUkNBIHRvIHNlZW0gaHVuZy7CoCBJZiB5b3UgcHJlc3MgT1JDQStzcGFjZSBv
ciAKPj4+PiB0cnkgbW92aW5nIHRoZSBtb3VzZSwgaXQgbWF5IGdldCB5b3Ugb3V0IG9mIHRoZSBz
aXR1YXRpb24uwqAgSSdtIG5vdCAKPj4+PiBydW5uaW5nIE1pbnQsIGJ1dCBpdCBoYXBwZW5zIG9u
IERlYmlhbiBhbmQgVWJ1bnR1LCBhbmQgTWludCBpcyAKPj4+PiBkZXJpdmVkIGZyb20gVWJ1bnR1
LsKgIEEgbW9yZSBwZXJtYW5lbnQgZml4IGlzIHRvIGNoYW5nZSB0byB0aGUgCj4+Pj4gTGlnaHRk
bSB3aW5kb3cgbWFuYWdlciwgYnV0IGl0IGlzbid0IGEgZ29vZCBsb25nLXRlcm0gc29sdXRpb24u
Lgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4KPj4+PiBPbiA3LzIwLzIzIDE2OjE0LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBIaSwKPj4+Pj4gT2NjYXNp
b25hbGx5LCBJ4oCZbGwgZXhwZXJpZW5jZSBPcmNhIGxvY2tpbmcgdXAuCj4+Pj4+IFdoZW4gdGhp
cyBoYXBwZW5zLCBzb21ldGltZXMsIGl0J3Mgb25seSBmb3IgYSBmZXcgc2Vjb25kcyAmIG90aGVy
IAo+Pj4+PiB0aW1lcywgSSBoYXZlIHRvIHdhaXQgYXMgbG9uZyBhcyA1IG9yIDEwIG1pbnV0ZXMu
Cj4+Pj4+IFRoaXMgY2FuIGhhcHBlbiB3aXRoIGFueSBhcHAuCj4+Pj4+IEhvdyBjYW4gSSBwcmV2
ZW50IHRoaXM/Cj4+Pj4+IEnigJltIHdvcmtpbmcgd2l0aCBhIERlbGwgcHJlY2lzaW9uIDQ4MDAg
d2hpY2ggaGFzIDE2R0Igb2YgcmFtICYgYSAKPj4+Pj4gMVRCIFNTRC4KPj4+Pj4gU28sIGJhc2Vk
IG9uIHRoYXQsIHdoYXQgZG8geW91IHRoaW5rIHdvdWxkIGNhdXNlIHRoZXNlIGlzc3Vlcz8KPj4+
Pj4KPj4+Pj4KPj4+Pj4+IE9uIEp1bCAyMCwgMjAyMywgYXQgMTM6NTUsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gCj4+Pj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Pj4+Pgo+Pj4+Pj4gSmVzc2ljYSwKPj4+Pj4+Cj4+Pj4+PiBJIGp1c3QgcmVjZW50bHkg
aW5zdGFsbCBtaW50IDIxLjIgb24gYSBsYXB0b3AgYW5kIHNvIGZhciBpIGxvdmUgCj4+Pj4+PiBp
dCBhcyB3ZWxsLgo+Pj4+Pj4KPj4+Pj4+IFJvZG5leQo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiA3
LzE5LzIwMjMgMDk6NDgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+Pj4+Pj4gSGVsbG8sCj4+Pj4+Pj4gSSBhbSBhIGh1Z2UgZmFuIG9mIHBvZGNhc3RzIQo+Pj4+
Pj4+IEknZCBsb3ZlIHRvIGNoZWNrIG91dCB0aGlzIHByb2dyYW0gYnV0IGJlZm9yZSBJIHByb2Nl
ZWQsIEknZCAKPj4+Pj4+PiBsaWtlIHRvIGtub3cgaWYgaXQnbGwgd29yayBvbiBMaW51eCBNaW4/
Cj4+Pj4+Pj4gSSBqdXN0IHVwZ3JhZGVkIHRvIE1pbnQgMjEuMiBsYXN0IG5pZ2h0ICYgYW0gbG92
aW5nIGl0IHNvIGZhci4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhhbmtzLAo+Pj4+Pj4+IEpl
c3NpY2EgRGFpbAo+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gClRhIHdpYWRvbW/Fm8SHIGUtbWFpbCB6
b3N0YcWCYSBzcHJhd2R6b25hIHBvZCBrxIV0ZW0gd2lydXPDs3cgcHJ6ZXogb3Byb2dyYW1vd2Fu
aWUgYW50eXdpcnVzb3dlIEF2YXN0Lgp3d3cuYXZhc3QuY29tCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cg==

