Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 984E5677222
	for <lists+blinux-list@lfdr.de>; Sun, 22 Jan 2023 20:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674417185;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5XabIKBLZ4Tl9MqRPkBtpuR3ZX8iR4ctmhCvja1tKLg=;
	b=OfmPvabuknSXUfMLuV0lX9ksheDabfu7VAmSWAAeEaxSl+GSqBGJnEURls0D5j6ugxY4bi
	bzc98iQqqKTG7zYSfVAHTappzdSE/WFwSJOuxHw9kQLeNsB9gL6ViS7tYTbbVD9FpcGH70
	mD60vl231xvQK7Z5KMGQJqgW+VsLIuI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-452-uyxRLI9iO5KE7eAMJnqDnA-1; Sun, 22 Jan 2023 14:53:00 -0500
X-MC-Unique: uyxRLI9iO5KE7eAMJnqDnA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90F2685CCE1;
	Sun, 22 Jan 2023 19:52:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2F155C15BA0;
	Sun, 22 Jan 2023 19:52:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B58E1194658D;
	Sun, 22 Jan 2023 19:52:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 Jan 2023 14:52:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
 <mailman.358.1674274777.8176.blinux-list@redhat.com>
 <mailman.397.1674314804.8168.blinux-list@redhat.com>
 <mailman.400.1674322782.8168.blinux-list@redhat.com>
 <mailman.410.1674327069.8170.blinux-list@redhat.com>
 <mailman.504.1674407856.8170.blinux-list@redhat.com>
 <mailman.498.1674408109.8168.blinux-list@redhat.com>
In-Reply-To: <mailman.498.1674408109.8168.blinux-list@redhat.com>
Message-ID: <mailman.515.1674417171.8170.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSW4gdGhlIG1lbnUgdGhhdCBjb21lcyB1cCBhdCBib290IHRoZXJlIGlzIGFuIG9wc2lv
biB0byBmbGFzaCB0byBzZCBjYXJkIApmb3IgcmFzcGJ1cnJ5IGRldmljZXMuwqAgSSBoYXZlIG5v
dCB0cmllZCB0aGlzIGFzIEkgZG8gbm90IGhhdmUgYSBjYXJkIHRvIAp0ZXN0IHRoaXMgc28gZG9u
J3Qga25vdyBob3cgdGhpcyB3b2lya3MuCgoKTWF0dGhldwoKCgpPbiAxLzIyLzIwMjMgMTI6MjEg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBoYXZlIG5l
dmVyIGhhZCBvbmUgb2YgdGhvc2UgcGkgc3lzdGVtcy4gIElmIG9uZSB3ZXJlIHRvIHB1dCBKZW51
eCBvbiBhCj4gdXNiIHN0aWNrIHRoZW4gYm9vdCB0aGUgcGkgZnJvbSB0aGUgc3RpY2sgeW91IGNv
dWxkIGZpbmQgb3V0IGlmIGl0IHdvdWxkCj4gd29yay4gIElmIEkgZ2V0IGEgZ29vZCBwaSBzeXN0
ZW0gSSdtIGdvaW5nIHRvIG5lZWQgYnV5aW5nIGFkdmljZSBhbmQKPiBXYWxNYXJ0IGlzbid0IGEg
Z29vZCBwbGFjZSBmb3IgdGhhdC4gIElmIHRoZXkgaGF2ZSB0aG9zZSBhdCBCZXN0IEJ1eSBvcgo+
IFN0YXBsZXMgdGhhdCBtaWdodCB3b3JrIGJldHRlci4KPgo+Cj4KPiBKdWRlIDxqZGFzaGllbCBh
dCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+IGRl
ZmVuc2Ugb2YgbGliZXJ0eToKPiAgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFz
ZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4K
PiAuCj4KPiBPbiBTdW4sIDIyIEphbiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Cj4+IEhlbGxvLAo+Pgo+PiBpcyBzb21lIHdheSB0byBydW4gSmVudXgg
b24gUmFzcGJlcnJ5IFBpIDRCIG9yIDQwMD8KPj4KPj4gVGhhbmtzLgo+Pgo+PiBCZXN0IHJlZ2Fy
ZHMKPj4KPj4gVm9qdGEuCj4+Cj4+IERuZSAyMS4gMDEuIDIzIHYgMTk6NTEgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4+PiBEYW5pZWwgbmFzaCBoYXMgYmVl
biBhd2FyZSBvZiB0aGlzIHByb2JsZW0gZm9yIGFsbCBmb3VyIGZhaWxpbmcgaXNvcy4gIEhlCj4+
PiBzdWdnZXN0ZWQgSSB0YWtlIGFjdGlvbnMgSSB0aG91Z2h0IHF1aXRlIHJpc2t5IHdpdGggcmVn
YXJkIHRvIHVlZmkgb24gdGhlCj4+PiBzaW5nbGUgY29tcHV0ZXIgSSBoYXZlLiAgSSB0b29rIHNv
bWUgb2YgdGhvc2UgYWN0aW9ucyBhbmQgdGhvc2UgYWN0aW9ucwo+Pj4gZmFpbGVkIHRvIHNvbHZl
IHRoaXMgcHJvYmxlbS4gIE1pY3Jvc29mdCBpcyBidXJyaWVkIGRlZXAgaW4gdGhlIG1pZGRsZSBv
Zgo+Pj4gdGhpcyBtZXNzIGFzIG9yaWdpbmF0b3Igb2YgdWVmaSBhbmQgRGFuaWVsIE5hc2ggZ290
IHRoZSB1ZWZpIGNvZGUgZnJvbQo+Pj4gZmVkb3JhLiAgSGUgbWF5IGhhdmUgZG9uZSB0aGluZ3Mg
dG8gdGhlIGNvZGUgYXMgaXQgd2VudCBpbnRvIGplbnV4IHRoYXQKPj4+IGJyb2tlIHRoaW5ncyBi
dXQgSSBjYW4ndCBzYXkgZm9yIHN1cmUgc2luY2UgSSB3YXNuJ3QgbG9va2luZyBvdmVyIGhpcwo+
Pj4gc2hvdWxkZXIuICBJZiBJIGNhbiBnZXQgYSBiZSBteSBleWVzIHZvbHVudGVlciB0byB0ZWxs
IG1lIGFueSBlcnJvcgo+Pj4gbWVzc2FnZXMgdGhhdCBjb21lIHVwIGFzIHRoaXMgZmFpbGVkIGlz
byBib290cyBJJ2xsIGdldCB0aG9zZSB0byBEYW5pZWwKPj4+IE5hc2ggYW5kIHRoZW4gd2UgbWF5
IGhhdmUgbG9jYXRlZCBvbmUgb2YgaGlzIHByb2JsZW1zLgo+Pj4KPj4+Cj4+Pgo+Pj4gSnVkZSA8
amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVz
ZWQgaW4KPj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4+ICAgIHNvYXAsIGJhbGxvdCwganVyeSwg
YW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+PiAtRWQgSG93ZGVyc2hlbHQg
KEF1dGhvciwgMTk0MCkKPj4+Cj4+PiAuCj4+Pgo+Pj4gT24gU2F0LCAyMSBKYW4gMjAyMywgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Cj4+Pj4gSGkgSnVkZC4g
IEhhdmUgeW91IHJlcG9ydGVkIHRoaXMgdG8gRGFuaWVsIE5hc2g/ICBJIHRoaW5rIGhlIGlzIHRo
ZSBqZXV4Cj4+Pj4gZGV2ZWxvcGVyLiAgWW91IG1pZ2h0IHdhbnQgdG8gbGV0IGhpbSBrbm93IHdo
YXQgaXMgZ29pbmcgb24gc28gaGUgY2FuIHRyYWNrCj4+Pj4gaXQgZG93bi4gIFRoYW5rcy4KPj4+
Pgo+Pj4+IE1hdHRoZXcKPj4+Pgo+Pj4+Cj4+Pj4KPj4+Pj4gT24gSmFuIDIxLCAyMDIzLCBhdCAx
MDoyNiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+Pj4+PiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IFlvdSBoYXZlIHRvIGluc3RhbGwg
dGhlIHZlcnNpb24gdG8gZmluZCBvdXQuICBPbiB0aGUgY3VycmVudCBlcXVpcG1lbnQKPj4+Pj4g
dGhhdCdzIG5vdCBwb3NzaWJsZS4gIFNvbWV0aW1lIHRoaXMgd2Vla2VuZCBJJ2xsIHNlZSBpZiBi
ZSBteSBleWVzIGNhbgo+Pj4+PiBnaXZlIG1lIGluZm9ybWF0aW9uIGFib3V0IHdoYXQgY29tZXMg
dXAgb24gdGhlIHNjcmVlbiBiZWZvcmUgamVudXggZmFpbHMKPj4+Pj4gdG8gc3BlYWsgYW5kIHJl
Ym9vdHMuICBJJ20gY3VyaW91cyBpZiBhbnkgY29tcHV0ZXIgb3RoZXIgdGhhbiB0aGUgYXV0aG9y
J3MKPj4+Pj4gY2FuIGluc3RhbGwgdGhpcyBvciB0aGUgbGFzdCB0aHJlZSB2ZXJzaW9ucyBvZiBq
ZW51eCB3aGljaCBpcyBteSByZWFzb24KPj4+Pj4gZm9yIHBvc3RpbmcgaGVyZS4KPj4+Pj4KPj4+
Pj4KPj4+Pj4KPj4+Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFy
ZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPj4+Pj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+Pj4+
PiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIu
Igo+Pj4+PiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4+Pj4KPj4+Pj4gLgo+Pj4+
Pgo+Pj4+PiBPbiBGcmksIDIwIEphbiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+Pgo+Pj4+Pj4gd2hhdCBpcyBuZXcgaW4gdGhlIGxhdGVzdCB2ZXJz
aW9uPwo+Pj4+Pj4KPj4+Pj4+IE9uIDEvMjAvMjAyMyA5OjIzIEFNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+IE5vdCByZWFkeSBmb3IgZG93bmxvYWQu
ICBUaGUgc2hhNTEyc3VtIGZpbGUgdXAgb24gdGhlIHdlYnNpdGUgdG8gY2hlY2sKPj4+Pj4+PiB0
aGUKPj4+Pj4+PiBpc28ncyBpbnRlZ3JpdHkgZG9lc24ndCBtYXRjaC4gIFRoaXMgb25lIHByb2Jh
Ymx5IHdvbid0IGhhdmUgYW55IGFiaWxpdHkKPj4+Pj4+PiB0byBpbnN0YWxsIG9uIHRoaW5rcGVu
Z3VpbiBjb21wdXRlcnMgZWl0aGVyIHNpbmNlIHRoZSBsYXN0IHRocmVlIGlzb3MKPj4+Pj4+PiBh
bHNvCj4+Pj4+Pj4gZmFpbGVkIGJ1dCBJJ2xsIGNoZWNrIGl0IG91dCBqdXN0IHRvIG1ha2Ugc3Vy
ZSB0aGUgbG9vc2luZyBzdHJlYWsKPj4+Pj4+PiByZW1haW5zCj4+Pj4+Pj4gdW5icm9rZW4uCj4+
Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+Cj4+
Pj4+Pj4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJl
cnR5Ogo+Pj4+Pj4+ICAgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2Ug
aW4gdGhhdCBvcmRlci4iCj4+Pj4+Pj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+
Pj4+Pj4KPj4+Pj4+PiAuCj4+Pj4+Pj4KPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+Cj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

