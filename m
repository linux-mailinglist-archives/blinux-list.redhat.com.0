Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FF567F00B
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jan 2023 22:00:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674853208;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JOiQJU2FDOaXVdA0f1HFPBGHLppaP4O+Ebp91iOTUys=;
	b=eBmYM1dndEQf6WfbWsfolUg+Ykb8dC4N5deUziaoIeJU7KwRvvTZdFG8NOFX2Gidr+4jYC
	xOH/v8ZrtvR66izJnu5M55YGqXXSUZ4AqwfUtWu27v14Ys3aIOnLZBVI9dcI5pEgjLZRgh
	yQIG9bYZ6XKFruLuXpnelPSp4RJzm6g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-241-Iz9DcIgUPcuaG9_nBIt88A-1; Fri, 27 Jan 2023 16:00:04 -0500
X-MC-Unique: Iz9DcIgUPcuaG9_nBIt88A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A6BB3C0F231;
	Fri, 27 Jan 2023 21:00:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 49A3D7AD4;
	Fri, 27 Jan 2023 21:00:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E1CA19465A2;
	Fri, 27 Jan 2023 21:00:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 27 Jan 2023 15:59:56 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Twitter alternatives for the blind community?
In-Reply-To: <mailman.2135.1674851769.8169.blinux-list@redhat.com>
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2103.1674847121.8168.blinux-list@redhat.com>
 <mailman.2135.1674851769.8169.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2140.1674853200.8169.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpbmsgbWFzdG9kb24gYW5kIG1heWJlIHRvb3QgdG9vClRob3NlIHVzaW5nIHdpbmRvd3MgdGhh
dCBoYXZlIHR3aXR0ZXIgYWNjb3VudHMgbWF5IHdhbnQgdG8gZm9sbG93IHRoaXMKbGVhZC4KCgoK
SnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRv
IGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5Ogogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQg
YW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKLUVkIEhvd2RlcnNoZWx0IChBdXRob3Is
IDE5NDApCgouCgpPbiBGcmksIDI3IEphbiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgoKPiBVbmZvcnRpb25ldGx5LCB0aGF0IGlzIHdoYXQgYSB0d2l0dGVy
IGNsaWVudCBkb2VzIG9yIHVzZWQgdG8gZG8uIHRoZXkgaGF2ZQo+IGRpc2Fib2xlZCB0aGlyZHBh
cnR5IGFjY2VzcyB0byB0d2l0dGVyIGFzIGEgcmVzYXVvbHQsIHlvdSBjb3VsZCBub3QgZXZlbiBn
ZXQgYQo+IHdlZWIgYnJvd3NlciB0byBkOW8gaXQgdW5sZXNzIGl0IHdhcyB0aGUgdHdpdGVyIHdl
YiBpbnRlcmZhY2UuwqAgTXkgd2luZG93c8KgCj4gY2xpZW50IHN0aWxsIHdvcmtzIGZvciBub3cg
YnV0IHRoZSBkYXkgaXQgbmlvIGxvbmdlciB3b3JrcywgaXMgdGhlIGRheSBJIHdpbGwKPiBkZWxl
dGUgbXkgYWNjb3VudC4gSSBhbSBvbiBtYXN0b2RvbiB3aGljaCBhIGxvdCBvZiBibGluZCB1c2Vy
cyBhcmUgZ3Jhdml0YXRpbmcKPiB0byBzaW5jZSB0aGUgQ0VPIGhhcyByZW1vdmVkIHRoZSBhY2Nl
c3NpYmlsaXR5IHRlYW0gb3ZlciB0aGVyZS4KPgo+Cj4gTWF0dGhldwo+Cj4KPiBPbiAxLzI3LzIw
MjMgMTo1OCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+
ID4gVGhlIHBpdHkgb2YgaXQgaXMgdGhhdCB0d2l0dGVyIHVzZWQgdG8gYmUgYmxpbmQgYWNjZXNz
aWJsZS4gT25jZSB1cG9uIGEgdGltZQo+ID4gSSBjb3VsZCB1c2UgaXQKPiA+IHdpdGggY29tbWFu
ZCBsaW5lIHNjcmlwdHMgIGFuZCBhY2Nlc3MgaXQgd2l0aCB0aGUgbHlueCAgKHRoZSBjYXQpIGJy
b3dzZXIuCj4gPiBCdXQgYWxsIHRoYXQgY2hhbmdlZCBhcyB0aGUgd2ViIGV2b2x2ZWQgbW9yZSBh
bmQgbW9yZSB0b3dhcmRzIGhpZGluZyBsaW5rcwo+ID4gYmVoaW5kIGphdmFzY3JpcHQgbWFjaGlu
YXRpb25zLgo+ID4KPiA+IFRoZSBwcm9ibGVtIHdpdGggZmluZGluZyBhbnkga2luZCBvZiBhbHRl
cm5hdGl2ZSB0byB0d2l0dGVyIGlzIG9uZSBvZiBwdWJsaWMKPiA+IGVtYnJhY2VtZW50LiBXaG8g
d2lsbAo+ID4gdXNlIGl0IGV4Y2VwdCB0aGUgYmxpbmQ/Cj4gPgo+ID4gQSBiZXR0ZXIgc29sdXRp
b24gbWlnaHQgYmUgYSBibGluZCBmcmllbmRseSBseW54IGFjY2Vzc2libGUgaW50ZXJmYWNlIHRv
IHRoZQo+ID4gZ2VuZXJhbCB0d2l0dGVyIHN5c3RlbS4KPiA+IENhbGwgaXQgYmxpdHRlci4gIFBl
b3BsZSBjYW4gYWNjZXNzIHR3aXR0ZXIgYnkgZmlyc3QgY29ubmVjdGluZyB0bwo+ID4gYmxpdHRl
ci5jb20gYW5kIGZyb20KPiA+IHRoZXJlLCBzZW5kIHR3ZWV0cywgcmVhZCBoYXNodGFncyBvciBk
byB3aGF0ZXZlciBlbHNlIG5lZWRzIGRvaW5nIGluIHRoZQo+ID4gdHdpdHRlciB1bml2ZXJzZS4g
QWxsIHRocm91Z2gKPiA+IHRoZWlyIGx5bngsIHczbSwgb3IgYW55IGFsdGVybmF0ZSBicm93c2Vy
IHRoZXkgd2FudC4KPiA+IFRoZXkgY291bGQgZXZlbiBzZXQgdXAgY29tbWFuZCBsaW5lIHNjcmlw
dHMgdXNpbmcgbHlueCAtZHVtcCBvciB3Z2V0Lgo+ID4KPiA+IERvaW5nIHNvbWV0aGluZyBsaWtl
IHRoaXMgd291bGQgY29zdCB0aW1lIGFuZCBtb25leS4KPiA+IEJ1dCBpZiBzb21lb25lICAgd2l0
aCBlbm91Z2ggaW50ZXJlc3QgaW4gZG9pbmcgc28gaXMgc3VmZmljaWVudGx5IG1vdGl2YXRlZCwK
PiA+IHBlcmhhcHMgdGhleSBjb3VsZAo+ID4gZ2V0IGEgZ3JhbnQgdG8gZnVuZCBpdC4KPiA+Cj4g
PiBKdXN0IGEgdGhvdWdodC4KPiA+Cj4gPiBSdWR5Cj4gPgo+ID4gT24gRnJpLCBKYW4gMjcsIDIw
MjMgYXQgMDg6MTE6NDNBTSAtMDgwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
bgo+ID4gd3JvdGU6Cj4gPj4gd2FzOiBbVGVjaFRhbGtdIFR3aXR0ZXIgQmFucyBUaGlyZC1QYXJ0
eSBBcHBzIChmd2QpCj4gPj4KPiA+PiBJJ20gbmVpdGhlciBibGluZCBub3IgbXVjaCBvZiBhIFR3
aXR0ZXIgdXNlciwgc28gWU1NVi4gIFRoYXQgc2FpZC4uLgo+ID4+Cj4gPj4gSSB3b25kZXIgd2hh
dCBUd2l0dGVyIGFsdGVybmF0aXZlcyAoY291bGQpIGV4aXN0IGZvciBibGluZCB1c2Vycy4KPiA+
PiBPYnZpb3VzbHksIHRoZXJlIGFyZSBtYWlsaW5nIGxpc3RzIChzdWNoIGFzIHRoaXMgb25lIDot
KSwgYnV0IHRoZXNlIG1vc3RseQo+ID4+IGFwcGVhciB0byBiZSBxdWl0ZSBzcGVjaWFsaXplZCwg
ZWc6Cj4gPj4KPiA+PiBiYWJhbW1AZ3JvdXBzLmlvCj4gPj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+ID4+IHJhc3BiZXJyeS12aUBmcmVlbGlzdHMub3JnCj4gPj4gc2VlaW5nd2l0aHNvdW5kQGZy
ZWVsaXN0cy5vcmcKPiA+Pgo+ID4+IEhvd2V2ZXIsIEknbSB3b25kZXJpbmcgaWYgdGhlcmUgbWln
aHQgYmUgYW55IEZlZGl2ZXJzZSBzaXRlcyBvciBmb3J1bXMgdGhhdAo+ID4+IG1pZ2h0IHNlcnZl
IGEgbW9yZSBnZW5lcmFsIGF1ZGllbmNlLiAgQ29tbWVudHMsIGNsdWVzLCBzdWdnZXN0aW9ucz8K
PiA+Pgo+ID4+IC0gUmljaCBNb3Jpbgo+ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

