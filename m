Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ACA788845
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 15:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692969511;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+jkT0LFzhDgQYjZryMdhx07nNycOK5UORwXQlNfuWWY=;
	b=jWlPL0dRKq+Uw0y1bcdFZmXLJbGJGpUhMNiwfKeQJzvuoxnyjxpf94Ymb94lrc6tzHpDkS
	00Km4gT2LZ0w8gv/CpqqQ83OvJrkQqalwBPQ+nrZLGATNrvJK1134zdo+wlPb5hwsat5iK
	STi2I+K+IRysoLPmI/Dd8C1XhffBsSs=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-jwYoQvqVNSSqq_HZxSgusQ-1; Fri, 25 Aug 2023 09:18:28 -0400
X-MC-Unique: jwYoQvqVNSSqq_HZxSgusQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24FE51C04B56;
	Fri, 25 Aug 2023 13:18:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E9C192166B26;
	Fri, 25 Aug 2023 13:18:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7FE1119465B7;
	Fri, 25 Aug 2023 13:18:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 09:18:22 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: microknoppix download
In-Reply-To: <mailman.1788.1692969348.18730.blinux-list@redhat.com>
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
 <mailman.1703.1692957281.18731.blinux-list@redhat.com>
 <mailman.1788.1692969348.18730.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1765.1692969505.18727.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW50ZXJlc3RpbmcsIEkgb25seSBnb3QgMSBmb3IgYW4gZXJyb3IgdmFsdWUgYW5kIHRoYXQncyBn
b29kIHRvIGtub3cgZm9yCndyaXRpbmcgc2NyaXB0cy4KCgotLSBKdWRlIDxqZGFzaGllbCBhdCBw
YW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgpkZWZlbnNl
IG9mIGxpYmVydHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4g
dGhhdApvcmRlci4iIEVkIEhvd2RlcnNoZWx0IDE5NDAuCgpPbiBGcmksIDI1IEF1ZyAyMDIzLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBJIGdvdCBlcnJvciA0
MDQgd2hlbiB1c2luZyB0aGF0IHVybCBpbiBsZnRwIGFuZCB0cmFuc21pc3Npb24tY2xpIHNpbXBs
eQo+IGZhaWxlZCB0byBkb3dubG9hZC4gIFdoYXQgSSdtIGdvaW5nIHRvIGRvIG5leHQgdG8gaGVs
cCBteSBsZWFybmluZyBpcyB0bwo+IHJ1biBpdCBpbiBsZnRwIG9uIGEgc2luZ2xlIGxpbmUgYW5k
IHRoZW4gY2FwdHVyZSB0aGUgZXJyb3IgdmFsdWUgdGhhdAo+IHJldHVybnMgd2l0aCAkPy4gIFRo
aXMgd2F5IEkgY2FuIGltcHJvdmUgbXkgb3duIHNjcmlwdCB3cml0aW5nLgo+Cj4KPiAtLQo+IEp1
ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+Cj4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRv
IGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+IHNvYXAsIGJhbGxvdCwganVyeSwgYW5k
IGFtbW8uCj4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiBFZCBIb3dkZXJzaGVsdCAxOTQw
Lgo+Cj4gT24gRnJpLCAyNSBBdWcgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPgo+ID4gQW5kIHRoZSB0b3JyZW50IGZvciB0aGUgQ0QgaW1hZ2UgKDY2OCBt
ZWdhYnl0ZXMgb25seSB2ZXJzdXMgYWJvdmUgRFZEIGltYWdlIG9mCj4gPiA0LjM3IEdCKSBpcyBo
ZXJlOgo+ID4gaHR0cDovL3RvcnJlbnQudW5peC1hZy51bmkta2wuZGUvdG9ycmVudHMvS05PUFBJ
WF9WOS4xQ0QtMjAyMS0wMS0yNS1FTi50b3JyZW50Cj4gPgo+ID4gPj4gQW0gMjUuMDguMjMgdW0g
MTA6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+ID4gPj4+
IEhhcyBhbnlvbmUgZ290IGEgZG93bmxvYWQgdGhhdCBjYW4gZG93bmxvYWQgdGhlIGxhdGVzdCBl
bmdsaXNoIHZlcnNpb24gb2YKPiA+ID4+PiBtaWNyb2tub3BwaXg/wqAgRXZlcnlvbmUgb2YgdGhl
IG1pcnJvcnMgb25seSBoYXMgZ2VybWFuIHRleHQgb24gaXQgYW5kIEkKPiA+ID4+PiBkaWRuJ3Qg
c3R1ZHkgdGhhdCBsYW5ndWFnZSBlbm91Z2ggdG8gdW5kZXJzdGFuZCB0aGUgd2Vic2l0ZSdzIGNv
bnRlbnQuCj4gPiA+Pj4gSSdtIGhhdmluZyBiZXR0ZXIgbHVjayBkb3dubG9hZGluZyB0aHJvdWdo
IGJpdHRvcnJlbnQgdGhlc2UgZGF5cyB0aGFuIHdpdGgKPiA+ID4+PiBvdGhlciBkb3dubG9hZGVy
cyBnaXZlbiB0aGUgbG93IGdyYWRlIG9mIHZlcml6b24gZmlvcyBjb25uZWN0aXZpdHkuCj4gPiA+
Pj4gd2dldCBmb3IgaW5zdGFuY2UgaXMgZG93bmxvYWRpbmcgaXNvJ3MgdGhhdCBmYWlsIHNoYTI1
NnN1bSAtYyB0ZXN0cyBvbmNlCj4gPiA+Pj4gZG93bmxvYWRlZCBhbmQgaXQgZG9lcyB0aGF0IHBl
cnNpc3RlbnRseS4KPiA+Cj4gPiAtLQo+ID4gLgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QK

