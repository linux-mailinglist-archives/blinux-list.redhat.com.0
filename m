Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E758D789466
	for <lists+blinux-list@lfdr.de>; Sat, 26 Aug 2023 09:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693035889;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XVmS+TRUXtreTPymjxKb6PnBaHdVQtqOB3ZqCgPPYlo=;
	b=B6ET0M/NIJTi1whFTalhNLxguU5RuCMUHKzh8qVEm5vG+bPNjLcnBwcR387NMnXJwZUX2w
	rF8mKP6jvQmpXT3+NacZe5zgizTE7BdLOQjx5llXCckyDYC0fSMnbiT8rltu7SY0eqzevX
	VORYUbwfCtRzgTUlvhBK6ik8eQpXXqQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-BGNoaHnXOo-GPqdwdeLheg-1; Sat, 26 Aug 2023 03:44:45 -0400
X-MC-Unique: BGNoaHnXOo-GPqdwdeLheg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A2C48D40A1;
	Sat, 26 Aug 2023 07:44:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 64FC5492C14;
	Sat, 26 Aug 2023 07:44:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CEECB19465B8;
	Sat, 26 Aug 2023 07:44:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Aug 2023 03:44:34 -0400
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
Message-ID: <mailman.18.1693035882.1829984.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW5vdGhlciBlcnJvciA0MDQuCgoKLS0gCkp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+
CiJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluIGRlZmVuc2Ugb2YgbGliZXJ0eToK
c29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4KUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIK
RWQgSG93ZGVyc2hlbHQgMTk0MC4KCk9uIEZyaSwgMjUgQXVnIDIwMjMsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IERvbid0IGtub3cgd2hhdHMgZ29pbmcgd3Jv
bmcuCj4gVHJ5IGl0IGluIHR3byBzdGVwcyAoYm90aCBjb21tYW5kcyBhcyBvbmUgbGluZSkuCj4g
RG93bmxvYWQgdGhlIHRyYWNrZXIgZmlsZToKPgo+IHdnZXQKPiAiaHR0cDovL3RvcnJlbnQudW5p
eC1hZy51bmkta2wuZGUvdG9ycmVudHMvS05PUFBJWF9WOS4xQ0QtMjAyMS0wMS0yNS1FTi50b3Jy
ZW50Igo+Cj4gRG93bmxvYWQgdGhlIGRhdGEgdG8gZGVzaXJlZCBkaXJlY3RvcnkgKC13IFBBVEgp
Ogo+Cj4gdHJhbnNtaXNzaW9uLWNsaSAtdyB+L3RtcCBLTk9QUElYX1Y5LjFDRC0yMDIxLTAxLTI1
LUVOLnRvcnJlbnQKPgo+IFRoaXMgd29ya2VkIGZvciBtZSB0ZXN0aW5nIGl0IG9ubHkgYSBtaW51
dGUgYWdvLgo+IEhUSAo+IGd1ZW50ZXIKPgo+IEFtIDI1LjA4LjIzIHVtIDE1OjE4IHNjaHJpZWIg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+IEludGVyZXN0aW5nLCBJIG9u
bHkgZ290IDEgZm9yIGFuIGVycm9yIHZhbHVlIGFuZCB0aGF0J3MgZ29vZCB0byBrbm93IGZvcgo+
ID4gd3JpdGluZyBzY3JpcHRzLgo+ID4KPiA+Cj4gPiAtLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5p
eCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+ID4gZGVmZW5z
ZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGlu
IHRoYXQKPiA+IG9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPiA+Cj4gPiBPbiBGcmksIDI1
IEF1ZyAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4K
PiA+PiBJIGdvdCBlcnJvciA0MDQgd2hlbiB1c2luZyB0aGF0IHVybCBpbiBsZnRwIGFuZCB0cmFu
c21pc3Npb24tY2xpIHNpbXBseQo+ID4+IGZhaWxlZCB0byBkb3dubG9hZC4gIFdoYXQgSSdtIGdv
aW5nIHRvIGRvIG5leHQgdG8gaGVscCBteSBsZWFybmluZyBpcyB0bwo+ID4+IHJ1biBpdCBpbiBs
ZnRwIG9uIGEgc2luZ2xlIGxpbmUgYW5kIHRoZW4gY2FwdHVyZSB0aGUgZXJyb3IgdmFsdWUgdGhh
dAo+ID4+IHJldHVybnMgd2l0aCAkPy4gIFRoaXMgd2F5IEkgY2FuIGltcHJvdmUgbXkgb3duIHNj
cmlwdCB3cml0aW5nLgo+ID4+Cj4gPj4KPiA+PiAtLQo+ID4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBh
bml4IGRvdCBjb20+Cj4gPj4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4gZGVm
ZW5zZSBvZiBsaWJlcnR5Ogo+ID4+IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uCj4gPj4g
UGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiA+PiBFZCBIb3dkZXJzaGVsdCAxOTQwLgo+ID4+
Cj4gPj4gT24gRnJpLCAyNSBBdWcgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiA+Pgo+ID4+PiBBbmQgdGhlIHRvcnJlbnQgZm9yIHRoZSBDRCBpbWFnZSAo
NjY4IG1lZ2FieXRlcyBvbmx5IHZlcnN1cyBhYm92ZSBEVkQKPiA+Pj4gaW1hZ2Ugb2YKPiA+Pj4g
NC4zNyBHQikgaXMgaGVyZToKPiA+Pj4gaHR0cDovL3RvcnJlbnQudW5peC1hZy51bmkta2wuZGUv
dG9ycmVudHMvS05PUFBJWF9WOS4xQ0QtMjAyMS0wMS0yNS1FTi50b3JyZW50Cj4gPj4+Cj4gPj4+
Pj4gQW0gMjUuMDguMjMgdW0gMTA6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uOgo+ID4+Pj4+PiBIYXMgYW55b25lIGdvdCBhIGRvd25sb2FkIHRoYXQgY2FuIGRv
d25sb2FkIHRoZSBsYXRlc3QgZW5nbGlzaCB2ZXJzaW9uCj4gPj4+Pj4+IG9mCj4gPj4+Pj4+IG1p
Y3Jva25vcHBpeD/CoCBFdmVyeW9uZSBvZiB0aGUgbWlycm9ycyBvbmx5IGhhcyBnZXJtYW4gdGV4
dCBvbiBpdCBhbmQgSQo+ID4+Pj4+PiBkaWRuJ3Qgc3R1ZHkgdGhhdCBsYW5ndWFnZSBlbm91Z2gg
dG8gdW5kZXJzdGFuZCB0aGUgd2Vic2l0ZSdzIGNvbnRlbnQuCj4gPj4+Pj4+IEknbSBoYXZpbmcg
YmV0dGVyIGx1Y2sgZG93bmxvYWRpbmcgdGhyb3VnaCBiaXR0b3JyZW50IHRoZXNlIGRheXMgdGhh
bgo+ID4+Pj4+PiB3aXRoCj4gPj4+Pj4+IG90aGVyIGRvd25sb2FkZXJzIGdpdmVuIHRoZSBsb3cg
Z3JhZGUgb2YgdmVyaXpvbiBmaW9zIGNvbm5lY3Rpdml0eS4KPiA+Pj4+Pj4gd2dldCBmb3IgaW5z
dGFuY2UgaXMgZG93bmxvYWRpbmcgaXNvJ3MgdGhhdCBmYWlsIHNoYTI1NnN1bSAtYyB0ZXN0cwo+
ID4+Pj4+PiBvbmNlCj4gPj4+Pj4+IGRvd25sb2FkZWQgYW5kIGl0IGRvZXMgdGhhdCBwZXJzaXN0
ZW50bHkuCj4gPj4+Cj4gLS0KPiAuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

