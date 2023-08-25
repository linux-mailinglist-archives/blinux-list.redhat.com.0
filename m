Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69115788C93
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 17:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692977934;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=htlyyFMW97XTsgtTH2dewA+U9tZNOOB4RilUfup0iME=;
	b=Q/1lsbq06QCk45Vn6bW1tcF9vNUKS8EDlbv5S6okHJId5Wi8s97K1v6ZnnZ2yrSY1dNo2I
	+WmMHSqh+hVA6G8/CpFFmOdYilTqzkxOrzqdwgmrJD8poTLCGiRteR9kHMp3mcxMY2Bz7S
	XiPeXpc/knxLlp3zgiyZhUJ/Lmqo4xc=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-164-5kwU4LMyOgyD36ui6t3IvA-1; Fri, 25 Aug 2023 11:38:50 -0400
X-MC-Unique: 5kwU4LMyOgyD36ui6t3IvA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2EE61C05AA7;
	Fri, 25 Aug 2023 15:38:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9F1596B59E;
	Fri, 25 Aug 2023 15:38:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 00DEF19465B7;
	Fri, 25 Aug 2023 15:38:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 11:38:41 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: microknoppix download
In-Reply-To: <mailman.1969.1692973663.18729.blinux-list@redhat.com>
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
 <mailman.1703.1692957281.18731.blinux-list@redhat.com>
 <mailman.1788.1692969348.18730.blinux-list@redhat.com>
 <mailman.1765.1692969505.18727.blinux-list@redhat.com>
 <mailman.1969.1692973663.18729.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2024.1692977924.18722.blinux-list@redhat.com>
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

SSBkb3dubG9hZGVkIHRoZSB0cmFja2VyIHdpdGggd2dldCwgYnV0IHRyYW5zbWlzc2lvbi1jbGkg
Y291bGRuJ3QgZ2V0IGEKcG9ydCBpdCB3YW50ZWQgdG8gdXNlIHNvIGNvdWxkbid0IGRvIHRoZSB0
cmFuc2ZlciBmb3Igc29tZSByZWFzb24uICBJCnRyaWVkIHJ1bm5pbmcgdHJhbnNtaXNzaW9uLXJl
bW90ZSAtLWV4aXQgZWFybGllciBib3RoIGFzIHVzZXIgYW5kIGFzIHJvb3QKYW5kIHdhc24ndCBh
bGxvd2VkIHRvIGRvIHRoYXQgc2luY2UgSSBoYWRuJ3QgbG9nZ2VkIGluLgoKCi0tIEp1ZGUgPGpk
YXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2Vk
IGluCmRlZmVuc2Ugb2YgbGliZXJ0eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxl
YXNlIHVzZSBpbiB0aGF0Cm9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KCk9uIEZyaSwgMjUg
QXVnIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IERv
bid0IGtub3cgd2hhdHMgZ29pbmcgd3JvbmcuCj4gVHJ5IGl0IGluIHR3byBzdGVwcyAoYm90aCBj
b21tYW5kcyBhcyBvbmUgbGluZSkuCj4gRG93bmxvYWQgdGhlIHRyYWNrZXIgZmlsZToKPgo+IHdn
ZXQKPiAiaHR0cDovL3RvcnJlbnQudW5peC1hZy51bmkta2wuZGUvdG9ycmVudHMvS05PUFBJWF9W
OS4xQ0QtMjAyMS0wMS0yNS1FTi50b3JyZW50Igo+Cj4gRG93bmxvYWQgdGhlIGRhdGEgdG8gZGVz
aXJlZCBkaXJlY3RvcnkgKC13IFBBVEgpOgo+Cj4gdHJhbnNtaXNzaW9uLWNsaSAtdyB+L3RtcCBL
Tk9QUElYX1Y5LjFDRC0yMDIxLTAxLTI1LUVOLnRvcnJlbnQKPgo+IFRoaXMgd29ya2VkIGZvciBt
ZSB0ZXN0aW5nIGl0IG9ubHkgYSBtaW51dGUgYWdvLgo+IEhUSAo+IGd1ZW50ZXIKPgo+IEFtIDI1
LjA4LjIzIHVtIDE1OjE4IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
bjoKPiA+IEludGVyZXN0aW5nLCBJIG9ubHkgZ290IDEgZm9yIGFuIGVycm9yIHZhbHVlIGFuZCB0
aGF0J3MgZ29vZCB0byBrbm93IGZvcgo+ID4gd3JpdGluZyBzY3JpcHRzLgo+ID4KPiA+Cj4gPiAt
LSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMg
dG8gYmUgdXNlZCBpbgo+ID4gZGVmZW5zZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnks
IGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQKPiA+IG9yZGVyLiIgRWQgSG93ZGVyc2hlbHQg
MTk0MC4KPiA+Cj4gPiBPbiBGcmksIDI1IEF1ZyAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4KPiA+PiBJIGdvdCBlcnJvciA0MDQgd2hlbiB1c2luZyB0
aGF0IHVybCBpbiBsZnRwIGFuZCB0cmFuc21pc3Npb24tY2xpIHNpbXBseQo+ID4+IGZhaWxlZCB0
byBkb3dubG9hZC4gIFdoYXQgSSdtIGdvaW5nIHRvIGRvIG5leHQgdG8gaGVscCBteSBsZWFybmlu
ZyBpcyB0bwo+ID4+IHJ1biBpdCBpbiBsZnRwIG9uIGEgc2luZ2xlIGxpbmUgYW5kIHRoZW4gY2Fw
dHVyZSB0aGUgZXJyb3IgdmFsdWUgdGhhdAo+ID4+IHJldHVybnMgd2l0aCAkPy4gIFRoaXMgd2F5
IEkgY2FuIGltcHJvdmUgbXkgb3duIHNjcmlwdCB3cml0aW5nLgo+ID4+Cj4gPj4KPiA+PiAtLQo+
ID4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+Cj4gPj4gIlRoZXJlIGFyZSBmb3Vy
IGJveGVzIHRvIGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ID4+IHNvYXAsIGJhbGxv
dCwganVyeSwgYW5kIGFtbW8uCj4gPj4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiA+PiBF
ZCBIb3dkZXJzaGVsdCAxOTQwLgo+ID4+Cj4gPj4gT24gRnJpLCAyNSBBdWcgMjAyMywgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pgo+ID4+PiBBbmQgdGhlIHRv
cnJlbnQgZm9yIHRoZSBDRCBpbWFnZSAoNjY4IG1lZ2FieXRlcyBvbmx5IHZlcnN1cyBhYm92ZSBE
VkQKPiA+Pj4gaW1hZ2Ugb2YKPiA+Pj4gNC4zNyBHQikgaXMgaGVyZToKPiA+Pj4gaHR0cDovL3Rv
cnJlbnQudW5peC1hZy51bmkta2wuZGUvdG9ycmVudHMvS05PUFBJWF9WOS4xQ0QtMjAyMS0wMS0y
NS1FTi50b3JyZW50Cj4gPj4+Cj4gPj4+Pj4gQW0gMjUuMDguMjMgdW0gMTA6NTcgc2NocmllYiBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+ID4+Pj4+PiBIYXMgYW55b25lIGdv
dCBhIGRvd25sb2FkIHRoYXQgY2FuIGRvd25sb2FkIHRoZSBsYXRlc3QgZW5nbGlzaCB2ZXJzaW9u
Cj4gPj4+Pj4+IG9mCj4gPj4+Pj4+IG1pY3Jva25vcHBpeD/CoCBFdmVyeW9uZSBvZiB0aGUgbWly
cm9ycyBvbmx5IGhhcyBnZXJtYW4gdGV4dCBvbiBpdCBhbmQgSQo+ID4+Pj4+PiBkaWRuJ3Qgc3R1
ZHkgdGhhdCBsYW5ndWFnZSBlbm91Z2ggdG8gdW5kZXJzdGFuZCB0aGUgd2Vic2l0ZSdzIGNvbnRl
bnQuCj4gPj4+Pj4+IEknbSBoYXZpbmcgYmV0dGVyIGx1Y2sgZG93bmxvYWRpbmcgdGhyb3VnaCBi
aXR0b3JyZW50IHRoZXNlIGRheXMgdGhhbgo+ID4+Pj4+PiB3aXRoCj4gPj4+Pj4+IG90aGVyIGRv
d25sb2FkZXJzIGdpdmVuIHRoZSBsb3cgZ3JhZGUgb2YgdmVyaXpvbiBmaW9zIGNvbm5lY3Rpdml0
eS4KPiA+Pj4+Pj4gd2dldCBmb3IgaW5zdGFuY2UgaXMgZG93bmxvYWRpbmcgaXNvJ3MgdGhhdCBm
YWlsIHNoYTI1NnN1bSAtYyB0ZXN0cwo+ID4+Pj4+PiBvbmNlCj4gPj4+Pj4+IGRvd25sb2FkZWQg
YW5kIGl0IGRvZXMgdGhhdCBwZXJzaXN0ZW50bHkuCj4gPj4+Cj4gLS0KPiAuCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

