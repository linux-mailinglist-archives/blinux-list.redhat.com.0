Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A83554F9DD0
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 21:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649447618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9d3kyTlyMb2RLerqwSTPUkTqVB3JM8Qc8k8Drd3f64g=;
	b=Qt2z2g0uATLdre44d7gj5aNdB5EvNtmnFuailkI0xVOGepgXjw3wCRsAUUs1hPorFhhl3t
	ZZJZ8y1ULphQbrmZJDYGe+NTxmrDjFLmaoa/ox5rpwCaQfM6od2abC502y5XT+30iuEUOm
	X/AemzFh6ZTY912iUfUtc84sOB/08xU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-jWo3gLnQMzecvWacvUJjag-1; Fri, 08 Apr 2022 15:53:35 -0400
X-MC-Unique: jWo3gLnQMzecvWacvUJjag-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D06C185A79C;
	Fri,  8 Apr 2022 19:53:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5E95F403175;
	Fri,  8 Apr 2022 19:53:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9910E194034C;
	Fri,  8 Apr 2022 19:53:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 20:53:22 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm questions/NNN query
References: <mailman.7318.1649436088.111207.blinux-list@redhat.com>
 <mailman.7463.1649446594.111204.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7463.1649446594.111204.blinux-list@redhat.com>
Message-ID: <mailman.7446.1649447610.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VW5mb3J0dW5hdGVseSwgRHJhZ29uRk0gZG9lc24ndCB3b3JrIHdlbGwgb3V0IG9mIHRoZSBib3gg
d2l0aCBhIHRlcm1pbmFsIGVtdWxhdG9yLCBtb3N0bHkgZG93biB0byBjb25mbGljdHMgd2l0aCBr
ZXlzIGxpa2UgRjEwLiBZZXMgSSBjYW4gcmVkZWZpbmUgdGhlbSwgYnV0IHRoYXQncyBraW5kIG9m
IHNvbWV0aGluZyBJbSBzbHdseSBzbG93bHkgcG9raW5nIGF0LiBJJ20gdW5hYmxlIHRvIGdldCBN
YXRlLXRlcm1pbmFsIHRvIHJlY29nbml6ZSBhIGN0cmwrYWx0IHBhdGVybiBob3VnaCB3aGVyZWFz
IGEgVFRZIHdvcmtzIGZpbmUgc28sIHVuc3VyZSBpZiB5b3UgbmVlZCB0byB0ZXN0IERyYWdvbmZt
IG9uIHRlcm1pbmFsIGVtdWxhdG9ycyB3aXRoIGEgZGVza3RvcD8KCktpbmQgb2YgYSBzaGFtZSBz
aW5jZSBJIGxpa2UgaG93IGVhc3kgRHJhZ29uIGlzIHRvIHVzZSB2cyBzb21ldGhpbmcgbGlrZQpN
QyBvciBSYW5nZXIgb3IgTk5OIChteSBjdXJyZW50IGZhdm9yaXRlIG9uZSB0aGF0IGRvZXNuJ3Qg
aGF2ZSBrZXlib2FyZApjb25mbGljdHMpIHRob3VnaAoKT24gRnJpLCBBcHIgMDgsIDIwMjIgYXQg
MDk6MzY6MjhQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiBIb3dkeSwKPiAKPiBXZWxsIHRoZXJlIGlzIGEgY29udGV4dCBtZW51ICAoIGRyYWdvbkZN
IGNhbGxzIGl0IERldGFpbHMsIGJlY2F1c2UgaXQgYWxzbyBzaG93cyBmaWxlIHByb3BlcnRpZXMg
bGlrZSBzaXplLCBtaW1lIGFuZCBhIGxpc3Qgb2YgYXZhaWxhYmxlIGFjdGlvbnMpIHdpdGggYWxs
IGF2YWlsYWJsZSBvcHRpb25zIGJ5IHByZXNzaW5nIEYxMCAKPiBTb21lIGFjdGlvbnMgYXJlIG9u
bHkgYXZhaWxhYmxlIGZvciBnaXZlbiBtaW1lIHR5cGVzIGxpa2UgY29tcHJlc3MgY3VycmVudCBv
bmx5IGZvciB6aXAgYW5kIHRhciwgb3RoZXJzIGNvdWxkIGJlIGFkZGFkIHZlcnkgZWFzeS4gQnkg
ZGVmYXVsdCBkcmFnb25mbSBkb2VzIG5vdCB1c2UgYXRvb2wgYnV0IHVuemlwIGNvbW1hbmQgZm9y
IHppcCBmaWxlcyBhbmQgdGFyIG9mIGNvdXJzZSBmb3IgdGFyIHRob3NlIG5lZWQgdG8gYmUgaW5z
dGFsbGVkIG9yIGNvbmZ1cmVkIHRvIHVzZSBzb21ldGhpbmcgZWxzZS4gIChJIGNhbiBnaXZlIHlv
dSBhIG1vcmUgZGV0YWlsZWQgaW5mb3JtYXRpb24gaG93IHRvIGNvbmZpZ3VyZSB0aG9zZSBzdHVm
ZiBpZiB5b3UgYXJlIGludGVyZXN0ZWQgaW4pCj4gCj4gRHJhZ29uRk0gcmVhZHMgdGhlIEVzY2Fw
ZSBzZXF1ZW5jZXMgZnJvbSBzdGRpbiB0byBkZXRlY3Qgc2hvcnRjdXRzIChsaWtlIGFsbW9zdCBh
bnkgb3RoZXIgQ0xJIGFwcGxpY2F0aW9uKQo+IFNvbWUgaW1wb3J0YW50IGJhc2ljIHRyYW5zbGF0
aW9uIGhlbHAgKHdlIHNob3VsZCBhZGQgdGhlIHNob3J0Y3V0cyBhcyBjb21tZW50cyB0byB0aGUg
c2V0dGluZ3MgZmlsZSBsb2wgKQo+IF4gPSBDVFJMCj4gWyA9IEFsdAo+IFVwcGVyY2FzZSBsZXR0
ZXIgPSBzaGlmdCArIGxldHRlcgo+IGxvd2VyY2FzZSBsZXR0ZXIgPSBqdXN0IHRoZSBsZXR0ZXIK
PiBBbiBvdGhlciBleGFtcGxlOgo+IF5bdSB0cmFuc2xhdGVzIGFzIGN0cmwgKyBhbHQgKyB1Cj4g
Cj4gVGhlcmUgYXJlIHNvbWUgc3BlY2lhbHMgbGlrZSBhcnJvdyBrZXlzIG9yIGVzY2FwZS4KPiBF
c2NhcGUgaXMgdHJhbnNsYXRlZCBieSBeWwo+IAo+IChieSB0aGUgd2F5IG1hbnkgc2hvcnRjdXRz
IGFyZSBzaW1pbGFyIHRvIG90aGVyIGdyYXBoaWNhbCBmaWxlIG1hbmFnZXJzIEJVVCBzaGlmdCAr
IGFycm93IGZvciBtYXJrIGZpbGVzIGlzIGRpZmZlcmVudCBhcyBpIGNvdWxkIG5vdCBmaWd1cmUg
aG93IHRvIHJlYWQgdGhpcyBmcm9tIGFuIGVzY2FwZSBzZXF1ZW5jZSwgYmVjYXVzZSB0aGVyZSBp
cyBubyB1cHBlcmNhc2UgYXJyb3cgKnNtaWxlKikKPiAKPiBEZXZlbG9wbWVudCB3YXMgc3BvbnNv
cmVkIGJ5IEYxMjMgcHJvamVjdC4gVG9kYXkga25vd24gYXMgc3Rvcm11eC4gU2FkbHkgaSBkaWQg
bm90IHdpcmUgYSBsb3Qgb2YgZG9jdW1lbnRhdGlvbiBidXQgeW91IGNhbiBhc2sgbWUgZXZlcnl0
aGluZyB5b3Ugd2FudCB0byBrbm93IDopLgo+IAo+IENoZWVycyBjaHJ5cwo+IAo+ID4gQW0gMDgu
MDQuMjAyMiB1bSAxODo0MSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4gCj4gPiDvu79TbyBJIGdhdmUgaXQgYSBz
aG90IGFuZCBpdCBmZWVscyBsb2dpY2FsIGFuZCB3ZWxsIGxhaWQgb3V0LCBmb3IgdGhlIG1vc3QK
PiA+IHBhcnQKPiA+IAo+ID4gQlV0IEknbSBzdHJ1Z2dsaW5nIG9uIGEgZmV3IHRoaW5ncy4gSSBo
YXZlIGl0IGdvaW5nIGFuZCB3YW50IHRvIHVuemlwIGFuCj4gPiBhcmNoaXZlIGZyb20gd2l0aGlu
IGl0LiBJbiBOTk4gSSBjYW4ganVzdCBkbyB0aGF0IGFuZCB3b3JrIHdpdGggYXRvb2wuIEkKPiA+
IGNhbid0IHNlZW0gdG8gZmluZCB0aGUga2V5cyB0byBzdGFydCBleHRyYWN0aW5nIGFuIGFyY2hp
dmUgb3IgaG93Cj4gPiBEcmFnb25mbSBoYW5kbGVzIHRoYXQgYXQgYWxsLCBJdmUgb25seSBmb3Vu
ZCB1bmV4dHJhY3Qgd2l0aCBeKFUgaW4gdGhlCj4gPiBjb25maWcsIHdoaWNoIEkndmUgbm8gY2x1
ZSB3aGF0IGl0IHRyYW5zbGF0ZXMgdG8gaW4gdGVybXMgb2YgYWN0dWFsIGtleXMKPiA+IGFzaWRl
IGZyb20gY3RybCBhbmQgVS4gSXQncyB0aGUgKCBJJ20gc3R1bXBlZCBvbgo+ID4gCj4gPiBTZWUg
bXkgbWFpbiBncmlwZSB3aXRoIE5OTiBpcyBpZiBJIHVzZSBpdCBpbiBhIHRlcm1pbmFsIEkgaGF2
ZSB0byBoaXQgTywKPiA+IHczbSBhbmQgYyB0byBvcGVuIGFuIGh0bWwgZG9jIGluIHczbSBlbHNl
IGl0IGxvYWRzIHVwIGluIEZpcmVmb3guIE5vdwo+ID4gZ3JhbnRlZCBJJ3ZlIG5vdCB0cmllZCBp
dCBvbiBhIHB1cmUgVFRZIGJ1dC4uLm9uIGEgdGVybWluYWwsIHhkZy1vcGVuCj4gPiBvdmVycmlk
ZXMgYnJvd3NlciBiZWluZyBzZXQgYXMgYW4gZW52aXJvbm1lbnQgdmFyaWFibGUKPiA+IAo+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

