Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D2D543E9B
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jun 2022 23:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654723711;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sr/rju1BLoOY5zK+SOWoBgfAilqXgkBOtvR3jpH6Sf4=;
	b=FLPhBUkobwo0QL8ubvg+e0ZireWZbGtePPJdPO/9Gxab8LPOGKL7hKKErGDMUaSqsI8sXO
	umM6AtlPbU8DDUerStr3q2/NGxiWWSIi4IywRFMMVoeznqbLAY0JrlDNyhxG7/CEeC0KzX
	wXVbIvKVK1CEjCJXYxHD31sBpw/vEho=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-34-2Q49Q2RaNjqv41LnmK_LMQ-1; Wed, 08 Jun 2022 17:28:28 -0400
X-MC-Unique: 2Q49Q2RaNjqv41LnmK_LMQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24E2B8027EE;
	Wed,  8 Jun 2022 21:28:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 57C0B2026985;
	Wed,  8 Jun 2022 21:28:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 16F36194705D;
	Wed,  8 Jun 2022 21:28:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 8 Jun 2022 22:27:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
 <mailman.21730.1654451477.111203.blinux-list@redhat.com>
 <mailman.21900.1654458346.111208.blinux-list@redhat.com>
 <mailman.22357.1654606973.111201.blinux-list@redhat.com>
 <mailman.22758.1654693519.111210.blinux-list@redhat.com>
 <mailman.22854.1654697491.111205.blinux-list@redhat.com>
 <mailman.22995.1654713475.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.22995.1654713475.111210.blinux-list@redhat.com>
Message-ID: <mailman.23313.1654723703.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhdCBkb2VzLCBpbiBmYWN0LCB3b3JrIGZpbmUgeWVzLiBJJ3ZlIGJlZW4gcG9raW5nIGFuZCBw
cm9kZGluZyBhdCAKdmFyaW91cyBnYW1lcy9hcHBzIHdpdGggbm8gbHVjayBob3dldmVyLCB1bnN1
cmUgaG93IHRoZSAKbnZkYUNvbnRyb2xsZXJDbGllbnQzMiBvciA2NC5kbGwgaW50ZXJhY3RzIHdp
dGggdGhlIHNlcnZlciBvciBpbnN0YWxsZWQgCnByb2dyYW1zIHRob3VnaC4KCkkndmUgYmVlbiB0
cnlpbmcgYSB2YXJpZXR5IG9mIGF1ZGlvZ2FtZXMgdGhhdCBzaGlwIHdpdGggTlZEQSBzdXBwb3J0
IHRvIApubyBsdWNrLCBob3dldmVyIEkgZGlkIGp1c3QgZmluZCBvdXQgdGhhdCBubywgSSBkbyBu
b3QgbmVlZCAoYXQgbGVhc3QgCmZvciB0ZXN0Y2xpZW50KSBhbiBpbnN0YWxsZWQgU0FQSSBzZXR1
cCB0aG91Z2gsIG9idmlvdXNseSBhY3R1YWwgCmdhbWVzL3Byb2dyYW1zIG1heSBiZSBkaWZmZXJl
bnQsIGhvd2V2ZXIKCgpTbyBpbiBzaG9ydCwgdGVzdGNsaWVudCB3b3JrcywgYnV0IG5vdGhpbmcg
cGFzdCB0aGF0PwoKCk9uIDYvOC8yMiAxOTozNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBIZWxsbywKPgo+IHdoaWxlIEkgZ2V0IHRoaXMgdXAgYW5kIHJ1bm5p
bmcsIGEgcGFydCBvZiB0aGUgbnZkYTJzcGVlY2hkIGlzIGFuCj4gYXBwbGljYXRpb24gY2FsbGVk
IHRlc3RjbGllbnQuCj4KPiBZb3UgY2FuIGNvbXBpbGUgaXQgdXNpbmcgY2FyZ28gYnVpbGQgLS1y
ZWxlYXNlIC1xLCBvciB1c2UgdGhpcyBiaW5hcnk6Cj4KPiBodHRwczovL2RyaXZlLnByb3Rvbi5t
ZS91cmxzLzk1TVY1VEVLN00janlRWE9hSnZvamtZCj4KPgo+IFNIQTI1NjogODJmYjg2NmQwMDBh
MDU5NDJkNjEwOWRhZjU4ZTM2ZWU2ZmVhYmE4YmYzMDY0NDczODI3N2JhMTQwYjkwZWU0MAo+Cj4K
PiB0aGlzIGFwcGxpY2F0aW9uIHdvcmtzIGFzIGEgdGVybWluYWwgY2xpZW50IHRvIHRoZSBzZXJ2
ZXIuIFlvdSBsYXVuY2gKPiBpdCwgYW5kIHR5cGUgY29tbWFuZCAic3BlYWtUZXh0IHNvbWUgdGV4
dCIuCj4KPiBJZiB5b3UgaGVhciB0aGUgc2VydmVyIHNwZWFrLCB0aGUgY29ubmVjdGlvbiB3b3Jr
cy4KPgo+IFlvdSBjYW4gcXVpdCB1c2luZyB0aGUgcXVpdCBjb21tYW5kLgo+Cj4KPiBUaGlzIHNo
b3VsZCB0ZWxsIHlvdSwgd2hldGhlciBudmRhMnNwZWVjaGQgc2VydmVyIGlzIHdvcmtpbmcgY29y
cmVjdGx5Lgo+IElmIG5vLCB3ZSBuZWVkIHRvIHNlYXJjaCB0aGUgcHJvYmxlbSB0aGVyZSwgaWYg
eWVzLCB0aGVyZSBpcyBhIHByb2JsZW0KPiB3aXRoIHRoZSBsaWJyYXJ5IG9yIGFwcGxpY2F0aW9u
Lgo+Cj4KPiBXaGV0aGVyIFNBUEkgaW5zdGFsbGF0aW9uIGlzIG5lZWRlZCBvciBub3QgZGVwZW5k
cyBsYXJnZWx5IG9uIGhvdyBpcyB0aGUKPiBhcHAgcHJvZ3JhbW1lZC4gSG9uZXN0bHksIEkgZGlk
bid0IHRlc3Qgb3V0IHdpdGggYSBjbGVhciB3aW5lCj4gaW5zdGFsbGF0aW9uLCBzbyBJIGNhbid0
IHRlbGwgd2hpY2ggdmFyaWFudCBpcyB0byBiZSBleHBlY3RlZCwgaXQncyBhbHNvCj4gcG9zc2li
bGUgdGhhdCB0aGUgYXBwIGNyYXNoZXMgZXhhY3RseSBiZWNhdXNlIG9mIG1pc3NpbmcgU0FQSSwg
c2luY2UKPiB1c3VhbGx5IHByb2dyYW1tZXJzIGV4cGVjdCBpdCB0byBiZSBhdCBsZWFzdCBwcmVz
ZW50LCBldmVuIGlmIG5vdCB1c2VkLgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2
Cj4KPgo+IETFiGEgOC4gNi4gMjAyMiBvIDE2OjA5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gbmFww61zYWwoYSk6Cj4+IEJvb3QgdGhlIElTTyBhbmQgaGl0IGRvd24gb25jZSB0
aGVuIGVudGVyLCBpdCBzaG91bGQgY29tZSB1cCB0YWxraW5nCj4+Cj4+Cj4+IElmIG5vdCwgc3lz
dGVtY3RsIGVuYWJsZSAtLXN0YXJ0bm93IGVzcGVha3VwCj4+Cj4+Cj4+IEknbSB0cnlpbmcgdG8g
d29yayBvdXQgd2h5IEknbSBnZXR0aW5nIGEgbG90IG9mIHRoaW5ncyBhYm91dCBTQVBJLCBhbmQK
Pj4gaWYgSSBuZWVkIHZvaWNlcyBpbnN0YWxsZWQgYmVjYXVzZSBJIGFtIGdvaW5nIGZyb20gYSBj
b21wbGV0ZWx5IHN0YW5kYXJkCj4+IHdpbmUgaW5zdGFsbGF0aW9uIG9uIGEgNjRiaXQgbWFjaGlu
ZSwgeWV0IGl0J3MgZmxvb2RpbmcgbXkgdGVybWluYWwgd2l0aAo+PiBhIHRvbiBvZiB2b2ljZSBs
aXN0IHRoaW5ncyBhYm91dCBTQVBJIGhvd2V2ZXIgc28gSSdtIHVuc3VyZS4KPj4KPj4KPj4gRG8g
SSBuZWVkIHRvIGluc3RhbGwgdW5kZXIgd2luZSB0aGUgc3BlZWNoc2RrIGFuZCB0aGluZ3Mgb3Ig
c2hvdWxkCj4+IG52ZGEyc3BlZWNoZCB0YWtlIGNhcmUgb2YgdGhhdC4gSXQncyBlc3RhYmxpc2hp
bmcgYSBjb25uZWN0aW9uLCBidXQuLi5ubwo+PiBsdWNrCj4+Cj4+IE9uIDYvOC8yMiAxMzo0NCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+
IEkgc2F3IHlvdXIgaXNzdWUgb24gR2l0aHViLCB3aWxsIGJlIGdldHRpbmcgdG8gaXQgc29vbi4K
Pj4+Cj4+PiBSaWdodCBub3csIEknbSB0cnlpbmcgdG8gZmlndXJlIG91dCBob3cgdG8gYm9vdCB1
cCBBcmNobGludXggaW50byB0aGUKPj4+IGFjY2Vzc2libGUgbW9kZSBpbiBxdWlja2VtdSwgc28g
SSBjYW4gZ2V0IGF0IGxlYXN0IGEgc2ltaWxhciBlbnZpcm9ubWVudC4KPj4+Cj4+Pgo+Pj4gQmVz
dCByZWdhcmRzCj4+Pgo+Pj4KPj4+IFJhc3Rpc2xhdgo+Pj4KPj4+Cj4+PiBExYhhIDcuIDYuIDIw
MjIgbyAxNTowMiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEp
Ogo+Pj4+IEFzIHNhaWQgb24gdGhlIEdpdGh1YiBwYWdlLiBJJ20gcnVubmluZyB0aGlzIHVuZGVy
IEFyY2ggYW5kIGdldCBubwo+Pj4+IG91dHB1dCBhdCBhbGwuCj4+Pj4KPj4+PiB3aGF0IEkgZG8K
Pj4+Pgo+Pj4+IDEuIERvd25sb2FkIFdpbmRvd3MgZXhlIGFuZCBleHRyYWN0IGl0Cj4+Pj4KPj4+
PiAyLiBHcmFiIHRoZSBzZXJ2ZXIvY2xpZW50IGFuZCByZW5hbWUvcmVwbGFjZSBudmRhQ29udHJv
bGxlcnh4LmRsbAo+Pj4+IHdoZXJlIHh4IGlzIDMyIG9yIDY0Cj4+Pj4KPj4+PiAzLiBzdGFydCB0
aGUgc2VydmVyIHdpdGggLi9udmRhMnNwZWVjaGQgaW4gaXRzIGZvbGRlcgo+Pj4+Cj4+Pj4gNC4g
d2luZSB3aW5kb3dzZXhlLmV4ZQo+Pj4+Cj4+Pj4gSSBnZXQgYSBjb25uZWN0aW9uIGhhcyBiZWVu
IGVzdGFibGlzaGVkIG9uIHRoZSB0YWIgd2l0aCB0aGUKPj4+PiBudmRhMnNwZWVjaGQgcnVubmlu
ZywgYW5kIG5vIHNwZWVjaCBmcm9tIHRoZSBwcm9ncmFtIGF0IGFsbCBob3dldmVyLAo+Pj4+IGFu
ZCBhIGJvYXRsb2FkIG9mIFdJTkUgU2FwaSBlcnJvcnMsIGl0IHNlZW1zKiB0byBtZSBsaWtlIGl0
J3MgbG9va2luZwo+Pj4+IGZvciB0aGUgU0FQSSBzdHVmZgo+Pj4+Cj4+Pj4gQW0gSSBtaXNzaW5n
IHNvbWVldGhpbmcgc3VwZXIgc3VwZXIgb2J2aW91cyBoZXJlIG9yPwo+Pj4+Cj4+Pj4gT24gMDUv
MDYvMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+Pj4+IDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4gSSBhdm9pZCBHVUkgYXBwcyBpbiBnZW5lcmFs
IGFuZCBJIHRoaW5rIHRoZSBsYXN0IHRpbWUgSSB1c2VkIFdpbmUKPj4+Pj4gbWlnaHQgaGF2ZSBi
ZWVuIHllYXJzIGJlZm9yZSBJIHdlbnQgYmxpbmQsIGJ1dCB0aGlzIHN0aWxsIHNvdW5kcyBsaWtl
Cj4+Pj4+IGEgc2lnbmlmaWNhbnQgc3RlcCBmb3J3YXJkIGZvciB0aGUgYWNjZXNzaWJpbGl0eSBv
ZiBub24tbmF0aXZlCj4+Pj4+IHNvZnR3YXJlLCBhbmQgc3VycHJpc2luZ2x5IGVsZWdhbnQgdG8g
Ym9vdC4KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

