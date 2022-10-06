Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9F5F6B00
	for <lists+blinux-list@lfdr.de>; Thu,  6 Oct 2022 17:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665071338;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fK2eHUarzlHuR+tBOpVnN3SPDLQ+YGBAT/54KUoDDwc=;
	b=Y3gY9b5AsTi86IYn31HBAZByZ7QeF2cpq3E9+U0e2STmYqnF9KW7GGG/Z53N8E8mqF4htV
	Bkgglt5B2JLE+OXFxSM17gPngjPbp5slUJXMG2TYNEub9vljJpH/fNsubZIsFXD2pA8KsQ
	FhRZTJTri2FyhTGQRf2YsVAFktzwXDA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-UmFIr1xsMI6b6SNcac4zow-1; Thu, 06 Oct 2022 11:48:55 -0400
X-MC-Unique: UmFIr1xsMI6b6SNcac4zow-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85ADA3C025BA;
	Thu,  6 Oct 2022 15:48:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C7D0A4EA5F;
	Thu,  6 Oct 2022 15:48:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 575821946A42;
	Thu,  6 Oct 2022 15:48:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 6 Oct 2022 11:48:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: tdsr
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.5306.1664889720.6075.blinux-list@redhat.com>
 <mailman.5193.1664891202.6080.blinux-list@redhat.com>
 <mailman.5272.1664915489.6083.blinux-list@redhat.com>
 <mailman.5680.1664947080.6075.blinux-list@redhat.com>
 <mailman.5502.1664977583.6083.blinux-list@redhat.com>
 <mailman.5759.1665005512.6083.blinux-list@redhat.com>
 <mailman.6024.1665064244.6079.blinux-list@redhat.com>
 <mailman.5978.1665064443.6078.blinux-list@redhat.com>
In-Reply-To: <mailman.5978.1665064443.6078.blinux-list@redhat.com>
Message-ID: <mailman.6012.1665071325.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WW91IGNhbiB0cnkgaXQgdGhlIHdheSB5b3Ugc2hvdywgb3IganVzdCBzcGVjaWZ5IHRoZSBwYXRo
IHRvIHRoZSAndGRzcicgCmV4ZWN1dGFibGUgbGlrZSAnfi90ZHNyL3Rkc3InIG9yICcvaG9tZS94
eHh4eC90ZHNyL3Rkc3InIGluc3RlYWQgb2YgJ2NkJyAKdG8gdGhlIGRpcmVjdG9yeS7CoCBPbmNl
IHlvdSBjcmVhdGUgdGhlIGZpbGUsIGxvZyBvdXQgYW5kIGJhY2sgaW4gdG8gdGVzdCAKaWYgdGhl
IFREU1Igc3RhcnRzIGF1dG9tYXRpY2FsbHkuCgoKT24gMTAvNi8yMDIyIDk6NTMgQU0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gQW5kIGRvIHRoYXQgdXNpbmcK
PiBuYW5vIC5iYXNoX2xvZ2luCj4gYW5kIHdyaXRlCj4gY2QgdGRzcgo+IC4vdGRzcgo+IGNkIC4u
Cj4gSXMgdGhhdCBpdD8KPgo+PiBPbiBPY3QgNiwgMjAyMiwgYXQgMDg6NDgsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+
Pgo+PiBKdXN0IGNyZWF0ZSB0aGUgZmlsZS4KPj4KPj4gT24gMTAvNS8yMDIyIDU6MzEgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBVc2luZyBscyAuYmFz
aF9sb2dpbgo+Pj4gYW5kIHN1ZG8gbHMgLmJhc2hfbG9naW4KPj4+IEkgYW0gbm90IGZpbmRpbmcg
dGhhdCBmaWxlLgo+Pj4gSSBhbSBpbiB0aGUgaG9tZSBkaXJlY3RvcnkuCj4+PiBBbSBJIGRvaW5n
IHNvbWV0aGluZyB3cm9uZz8KPj4+Cj4+Pj4gT24gT2N0IDUsIDIwMjIsIGF0IDA4OjM3LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPj4+Pgo+Pj4+IElmICdiYXNoJyBpcyB5b3VyIGxvZ2luIHNoZWxsLCB0cnkgYWRkaW5n
IHRoZSBURFNSIHN0YXJ0dXAgY29tbWFuZCB0byAuYmFzaF9sb2dpbiBpbiB5b3VyIGhvbWUgZGly
ZWN0b3J5LiAgVGhhdCBzaG91bGQgYXZvaWQgdGhlIHByb2JsZW1zIFRpbSBpbmRpY2F0ZWQgd2hl
biBhIHN1YnNoZWxsIGlzIGludm9rZWQuCj4+Pj4KPj4+PiBZb3UgbWF5IGhhdmUgdG8gY3JlYXRl
IHRoYXQgZmlsZSBpZiBpdCBkb2Vzbid0IGV4aXN0LiAgSXQgaXMgZG9jdW1lbnRlZCBpbiB0aGUg
J2Jhc2gnIG1hbnVhbCBwYWdlLgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMC81LzIwMjIgMToxNyBBTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gT3IgbWlnaHQg
aXQgYmUgZWFzaWVyIHRvIGluc3RhbGwgZXNwZWFrdXAsIG9yIGluc3RhbGwgRmVucmlyPwo+Pj4+
PiBJIHdlbGNvbWUgYW55b25lJ3MgaWRlYXMuCj4+Pj4+Cj4+Pj4+PiBPbiBPY3QgNCwgMjAyMiwg
YXQgMTU6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0
QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IE1heWJlIGJldHRlciB0byBrZWVwIGxv
Z2dpbmcgaW4sIGdvIHRvIGNkIHRkc3IsCj4+Pj4+PiB0aGVuIHR5cGUKPj4+Pj4+IC4vdGRzcgo+
Pj4+Pj4gY2QgLi4KPj4+Pj4+IGFzIEkgYWxyZWFkeSBkby4KPj4+Pj4+IFdoYXQgeW91IGhhZCB3
cml0dGVuIGlzIGZhciB0b28gYWR2YW5jZWQgZm9yIG1lLCBidXQgdGhhbmsgeW91Lgo+Pj4+Pj4K
Pj4+Pj4+PiBPbiBPY3QgNCwgMjAyMiwgYXQgMDg6NDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pj4+Cj4+Pj4+
Pj4gVGltIGhlcmUuICBJdCdzIGEgbGl0dGxlIHRyaWNreSBiZWNhdXNlLCB3aXRob3V0IGFkZGl0
aW9uYWwKPj4+Pj4+PiBwcmVjYXV0aW9ucywgeW91IG9wZW4gYSBzaGVsbCB3aGljaCBsYXVuY2hl
cyB0ZHNyLCB3aGljaCBvcGVucyBhCj4+Pj4+Pj4gc2hlbGwgaW5zaWRlIG9mIGl0LCB3aGljaCBs
YXVuY2hlcyB0ZHNyLCB3aGljaCBvcGVucyBhIHNoZWxsCj4+Pj4+Pj4gd2hpY2guLi55b3UgZ2V0
IHRoZSBpZGVhLgo+Pj4+Pj4+Cj4+Pj4+Pj4gU28gdGhlcmUgbmVlZHMgdG8gYmUgYSB3YXkgZm9y
IGEgc2hlbGwgdG8gZGV0ZXJtaW5lIGlmIGl0J3MgYWxyZWFkeQo+Pj4+Pj4+IGluc2lkZSBhIHJ1
bm5pbmcgc2Vzc2lvbiBvZiB0ZHNyLiAgVGhpcyBzb3J0IG9mIHRoaW5nIGlzIHVzdWFsbHkKPj4+
Pj4+PiBkb25lIHRocm91Z2ggc2V0dGluZyBhbiBlbnZpcm9ubWVudCB2YXJpYWJsZS4gIEZvciBl
eGFtcGxlLCBJJ3ZlCj4+Pj4+Pj4gZG9uZSBzaW1pbGFybHkgd2l0aCAidG11eCIsIHNvIEkgaGF2
ZSBhIGNoZWNrIGluIG15IHN0YXJ0dXAgZmlsZQo+Pj4+Pj4+IChlLmcuIG15IH4vLmJhc2hyYykg
dGhhdCB0ZXN0cwo+Pj4+Pj4+Cj4+Pj4+Pj4gWyAteiAiJFRNVVgiIF0gJiYgdG11eAo+Pj4+Pj4+
Cj4+Pj4+Pj4gU28gZmlyc3QgeW91J2Qgd2FudCB0byBzZWUgaWYgdGRzciBzZXRzIGFuIGVudmly
b25tZW50IHZhcmlhYmxlLgo+Pj4+Pj4+IFRoZSBkb2N1bWVudGF0aW9uIG1pZ2h0IGRldGFpbCB0
aGlzLCBidXQgaWYgbm90LCB5b3UgY2FuIGR1bXAgdGhlCj4+Pj4+Pj4gZW52aXJvbm1lbnQgdG8g
YSBmaWxlIGJlZm9yZSBydW5uaW5nIHRkc3IsIHRoZW4gcnVuIHRkc3IsIHRoZW4gZHVtcAo+Pj4+
Pj4+IHRoZSBlbnZpcm9ubWVudCB0byBhbm90aGVyIGZpbGUgYW5kIGNvbXBhcmUgdGhlbSwgbGlr
ZQo+Pj4+Pj4+Cj4+Pj4+Pj4gJCBlbnYgfCBzb3J0ID4gYQo+Pj4+Pj4+ICQgdGRzcgo+Pj4+Pj4+
ICh0ZHNyKSQgZW52IHwgc29ydCA+IGIKPj4+Pj4+PiAodGRzcikkIGNvbW0gLTEzIGEgYgo+Pj4+
Pj4+Cj4+Pj4+Pj4gSG9wZWZ1bGx5IHRoaXMgd2lsbCBzaG93IGEgc2V0dGluZyBzb21ldGhpbmcg
bGlrZSBhICIkVERTUiIgdmFyaWFibGUKPj4+Pj4+PiB0aGF0IHlvdSBjYW4gY2hlY2suICBUaGVu
IHlvdXIgfi8uYmFzaHJjIChvciB3aGF0ZXZlciB5b3VyIHN0YXJ0dXAKPj4+Pj4+PiBmaWxlIGlz
KSBjYW4gZW5kIHdpdGggc29tZXRoaW5nIGxpa2UKPj4+Pj4+Pgo+Pj4+Pj4+IFsgLXogIiRURFNS
IiBdICYmIHRkc3IKPj4+Pj4+Pgo+Pj4+Pj4+IEJlY2F1c2UgdGhpcyBjYW4gZ28gdW5mb3J0dW5h
dGVseSBzaWRld2F5cywgSSByZWNvbW1lbmQgaGF2aW5nIG9uZQo+Pj4+Pj4+IHdpbmRvdy9jb25z
b2xlIG9wZW4sIGVkaXRpbmcgeW91ciB+Ly5iYXNocmMgYW5kIHRoZW4gb3BlbiBhICpuZXcqCj4+
Pj4+Pj4gd2luZG93IChvciBsb2cgaW4gYXQgYW5vdGhlciBjb25zb2xlKSB0byB0ZXN0IGl0LiAg
SWYgYWxsIGdvZXMKPj4+Pj4+PiByaWdodCwgeWF5LiAgSWYgdGhpbmdzIGdvIHNpZGV3YXlzLCB5
b3UgY2FuIHF1aWNrbHkgZmxpcCBiYWNrIHRvCj4+Pj4+Pj4gdGhlIGZpcnN0IHdpbmRvdy9jb25z
b2xlLCByZW1vdmUgdGhhdCBsaW5lIGZyb20geW91ciB+Ly5iYXNocmMsIGFuZAo+Pj4+Pj4+IChy
ZSlzYXZlIGl0LiAgVGhpcyBzYXZlcyB5b3UgYSBMT1Qgb2YgaGFzc2xlIGlmIHlvdSBhY2NpZGVu
dGFsbHkKPj4+Pj4+PiBjcmVhdGUgYSBsb29wIGxpa2UgZGVzY3JpYmVkIGF0IHRoZSB0b3Agb2Yg
dGhpcyBlbWFpbC4KPj4+Pj4+Pgo+Pj4+Pj4+IC1UaW0KPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDIwMjIt
MTAtMDQgMDg6MjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+
Pj4+Pj4+IEkgaGF2ZSBmZWRvcmEgMzUsIGFuZCB3aGlsZSBpbiB0aGUgc2hlbGwgSSB1c2UgdGRz
ciBmb3Igc2NyZWVuLXJlYWRlci4KPj4+Pj4+Pj4gVG8gc3RhcnQgaXQsIG9uZSBtdXN0IHVzZSBk
b3Qgc2xhc2ggdGRzci4KPj4+Pj4+Pj4gSXMgdGhlcmUgYSB3YXkgdG8gaGF2ZSB0aGlzIHByb2dy
YW0gc3RhcnQgd2hlbmV2ZXIgbG9nZ2luZyBpbiBhdCBzaGVsbD8KPj4+Pj4+Pj4KPj4+Pj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4+Pj4+Pgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4KPj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

