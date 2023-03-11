Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1CD6B5FC6
	for <lists+blinux-list@lfdr.de>; Sat, 11 Mar 2023 19:30:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678559402;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+Kk41WgSpS4WU8pJ0WS0K8lgvRoHKREZtZPmUeBrm0c=;
	b=aq/cKCHtvuzI9gR9nFyroFSJh4YxxMuupxkDsb4+HC65QuytZfS7ooQ2bGH4cHZCVT50xy
	USJUdU7znDxpuAQ980liVx3xkgDNzDUsLMm9oQ6TJRlB815fye/C0TJb2niNaEeT9KaNNv
	aTlezvZ5+NVGfGoCl3N7v07yFOOfPVQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-397-B_p3SUI8NAulZMJWTwtATg-1; Sat, 11 Mar 2023 13:29:58 -0500
X-MC-Unique: B_p3SUI8NAulZMJWTwtATg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCC001C05154;
	Sat, 11 Mar 2023 18:29:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 97611492B04;
	Sat, 11 Mar 2023 18:29:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 225081946A69;
	Sat, 11 Mar 2023 18:29:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.415.1678557774.3486291.blinux-list@redhat.com>
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2342.1678458650.1521161.blinux-list@redhat.com>
 <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
 <mailman.2412.1678465672.1521167.blinux-list@redhat.com>
 <mailman.2361.1678466488.1521166.blinux-list@redhat.com>
 <mailman.414.1678557191.3486291.blinux-list@redhat.com>
 <mailman.415.1678557774.3486291.blinux-list@redhat.com>
Date: Sat, 11 Mar 2023 18:29:42 +0000
Subject: Re: XFCE a11Y specific tweaks?
To: blinux-list@redhat.com
Message-ID: <mailman.355.1678559394.3486283.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjYW4ndCBzYXkgaG93IHdlbGwgaXQgd29ya3MgYXMgYSBkYWlseSBkcml2ZXIgc2luY2UgSSd2
ZSBtYWlubHkgdXNlZAp0aGUgb3B0aW9uIHRvIHJ1biBGaXJlZm94IGluIGEgc3RyaXBwZWQgZG93
biB4LXNlc3Npb24sIGJ1dCBMWERFIGlzCnRoZSBERSBLbm9wcGl4IHVzZXMgZm9yIHRoZSBGdWxs
IFggc2Vzc2lvbiBvcHRpb24gaW4gaXRzIEFkcmlhbmUKYWNjZXNzaWJpbGl0eSBzdWl0ZS4gSSBh
bHNvIGRvbid0IGtub3cgd2hhdCB0d2Vha3MsIGlmIGFueSwgS25vcHBpeAp1c2VzIHdoZW4gcnVu
bmluZyBhIGZ1bGwgTFhERSBzZXNzaW9uIHdpdGggT3JjYS4KCk9uIDMvMTEvMjMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+IFllcywgYXMgaXQgaXMgYmFzZWQgb24gR1RLMy4gWW91IG1heSBuZWVkIHRvIGFkYXB0IHRo
ZSBrZXkgYmluZGluZ3MgdG8gdGhvc2UKPiB5b3UKPiB1c2UgaW4gYW5vdGhlciBkZXNrdG9wLCBs
aWtlIE1hdGUuCj4KPiBEaWRpZXIKPgo+IExlIDExLzAzLzIwMjMgw6AgMTg6NTMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gaXMgbHhkZSB1c2VhYmxl
IHdpdGggb3JjYT8KPj4KPj4gT24gMy8xMC8yMDIzIDg6NDEgQU0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBZZXMsIGl0J3MgbHhkZS4KPj4+Cj4+Pgo+Pj4K
Pj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+Cj4+PiAiVGhlcmUgYXJlIGZvdXIg
Ym94ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+PiDCoCBzb2FwLCBiYWxs
b3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4gLUVkIEhv
d2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+Pgo+Pj4gLgo+Pj4KPj4+IE9uIEZyaSwgMTAgTWFy
IDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pgo+Pj4+
IE1hdGUgaXMgYSBkZXNrdG9wIGZvciBsb3cgcmVzb3VyY2VzLCBjb21wYXJlZCB0byBnbm9tZS4K
Pj4+PiBJIG91Z2h0IHRvIHJlYWQgYWJvdXQgeCBmIGMgZS4KPj4+PiBUaGVyZSBpcyB5ZXQgYW5v
dGhlciBkZXNrdG9wIHdpdGggYSBuYW1lIGxpa2UgdGhhdC4KPj4+Pgo+Pj4+PiBPbiBNYXIgMTAs
IDIwMjMsIGF0IDA4OjMyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4+
IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4gSXQgZG9lcywgYXMg
YSBwbGVhc2FudCBzdXJwcmlzZS4KPj4+Pj4KPj4+Pj4KPj4+Pj4gTm93IGlmIGl0J2QgcXVpdCBy
YW5kb21seSBzYXZpbmcgbXkgc2Vzc2lvbnMsIHRoYXQnZCBoZWxwLiBJJ3ZlIGEgbWluZAo+Pj4+
PiB0bwo+Pj4+PiBqdXN0IHN0YXJ0IGJydXRlIGZvcmNpbmcgdGhhdCBvbmUuIEkgbGlrZSB3aGF0
IFhGQ0UgaXMgZ29pbmcgZm9yLCBpdCdzCj4+Pj4+IGFic29sdXRlbHkgbGlnaHQgYW5kIGdvb2Qg
Zm9yIG15IGxvdyBwb3dlciBtYWNoaW5lCj4+Pj4+Cj4+Pj4+IE9uIDMvMTAvMjMgMTQ6MzAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiB5ZXMgYW5kIGhh
cyBmb3Igc29tZSB0aW1lIGJ5IG5vdy7CoCBJIHVzZWQgaXQgYSBjb3VwbGUgeWVhcnMgYWdvLgo+
Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNv
bT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPj4+Pj4+IGRlZmVuc2Ugb2Yg
bGliZXJ0eToKPj4+Pj4+IMKgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1
c2UgaW4gdGhhdCBvcmRlci4iCj4+Pj4+PiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkK
Pj4+Pj4+Cj4+Pj4+PiAuCj4+Pj4+Pgo+Pj4+Pj4gT24gRnJpLCAxMCBNYXIgMjAyMywgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Cj4+Pj4+Pj4gRG9lcyBv
cmNhIHdvcmsgd2l0aCB4IGYgYyBlIG5vdz8KPj4+Pj4+Pgo+Pj4+Pj4+PiBPbiBNYXIgMTAsIDIw
MjMsIGF0IDAyOjE3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4+Pj4+
IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gUXVpY2sg
cXVlc3Rpb24uIEkndmUgcHV0IFhGQ0XCoCBvbiBhbiBBcmNoIGluc3RhbGwgb24gYW4gb2xkIGxh
cHRvcCwKPj4+Pj4+Pj4gc2luY2UKPj4+Pj4+Pj4gaXQncyBvbmUgdGhhdCB0YWtlcyB1cCB0aGUg
bGVhc3Qgc3BhY2Ugb3V0IG9mIGFsbCBkZXNrdG9wcyBhbmQgaXMKPj4+Pj4+Pj4gbGlnaHR3ZWln
aHQuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFNvIHdoYXQgYXJlIHNvbWUgc3VnZ2VzdGVk
IHRoaW5ncyBJIHNob3VsZCBkbyBmcm9tIGFuIEExMVkKPj4+Pj4+Pj4gc3RhbmRwb2ludD8KPj4+
Pj4+Pj4gSSdtIHNldHRpbmcgdXAgc2hvcnRjdXRzIGZvciB0aGluZ3MgbGlrZSBGaXJlZm94IG9y
IFRodW5kZXJiaXJkLCBhbgo+Pj4+Pj4+PiBzbwo+Pj4+Pj4+PiBvbi4gSSd2ZSBjaGVja2VkIHRo
ZSBib3ggZm9yIGFzc2lzdGl2ZSB0ZWNoLCBJJ3ZlIHNldCBteSAuYmFzaHJjIHVwCj4+Pj4+Pj4+
IGNvcnJlY3RseS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU28gd2hhdCBYRkNFIHNwZWNp
ZmljIHRoaW5ncyBkbyBwZW9wbGUgc3VnZ2VzdD8gSSdtIHN0YXJ0aW5nIHRvIGxpa2UKPj4+Pj4+
Pj4gWEZDRQo+Pj4+Pj4+PiBub3cgSSd2ZSBnb3QgdGhlIGhhbmcgb2YgaXQgYSBsaXR0bGUsIGp1
c3Qgd29uZGVyaW5nIHdoYXQgQTExWQo+Pj4+Pj4+PiB0aGluZ3MgSQo+Pj4+Pj4+PiBuZWVkIHRv
IGRvIGluIG9yZGVyIHRvIGdldCB0aGUgbGFzdCBmZXcga2lua3Mgb3V0IG9mIGl0Cj4+Pj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4KPj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+Pgo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

