Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F51C7662B3
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jul 2023 06:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690516894;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rZv94ANM13ZmCDgd2pOUbANadBouo7JtI8XS+/QN9Oo=;
	b=MXoq+HhOsgInqcFhF9XpA81DPqNJT7mkt5tNJd4qK/uWmbTparoH0GUe0v3c/AAhQzfPkK
	WNqGW+U95fze3UpNFK3UBGve5kihyKi+3qMJRvzUP8poGL6F344dxGbZjhPIh8+Bx9OX0z
	3BhtB4YwnmRFIUjasMvWKww68cNkZRY=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-687-DT5IFAuBOm66UNqvzZItog-1; Fri, 28 Jul 2023 00:01:30 -0400
X-MC-Unique: DT5IFAuBOm66UNqvzZItog-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AC731C0518D;
	Fri, 28 Jul 2023 04:01:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7B20E40C2063;
	Fri, 28 Jul 2023 04:01:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 82F691946A72;
	Fri, 28 Jul 2023 04:01:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Jul 2023 05:59:49 +0200
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
In-Reply-To: <mailman.1531.1689959447.687813.blinux-list@redhat.com>
Message-ID: <mailman.1717.1690516879.3172873.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pl
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWF5YmUgYSBsaXR0bGUgb2ZmIHRvcGljLCBidXQgSSBhbSBoYXZpbmcgc29tZSBwcm9ibGVtIHdp
dGggdGhlIApub3RpZmljYXRpb24gYXJlYSBpbiBsaW51eCBtaW50LiBXaGVuIEkgdHJ5IHRvIG1v
dmUgYXJvdW5kIHRoZSBib3R0b20gCnBhbmVsLCBpdCBzZWVtcyB0byBiZSBjb21wbGV0ZWx5IGlu
YWNjZXNzaWJsZS4gVGhlIG9ubHkgdGhpbmcgSSBoZWFyIAp3aGlsZSBtb3ZpbmcgaXMgcGFuZWws
IHBhbmVsLCBwYW5lbC4uLi4gQ2FuIHRoaXMgYmUgZml4ZWQgc29tZWhvdz8KCkkgY3VycmVudGx5
IHVzaW5nIGxhdGVzdCB2ZXJzaW9uIG9mIGxpbnV4IG1pbnQgbWF0ZSBlZGl0aW9uLgoKClBzLiBT
b3JyeSBmb3IgdGhlIGxhbmd1YWdlIGVycm9ycywgYnV0IEkgc3BlYWsgRW5nbGlzaCBxdWl0ZSBw
b29ybHksIGFuZCAKdXNlIGEgdHJhbnNsYXRvci4KR3JlZXRpbmdzLgpNaWNoYcWCLgoKClcgZG5p
dSAyMS4wNy4yMDIzIG/CoDE5OjEwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHBpc3plOgo+IEkgc2FpZCBMaWdodGRtIGJ5IG1pc3Rha2UuwqAgVW5kZXIgTWF0ZSB0aGUgZGVm
YXVsdCB3aW5kb3cgbWFuYWdlciAKPiBzZWVtcyB0byBiZSBNYXJjby7CoCBZb3UgY2FuIGNoYW5n
ZSB0byB0aGUgb2xkZXIgb25lIGNhbGxlZCBNZXRhY2l0eS4KPgo+IE9uIERlYmlhbiB0aGlzIHBy
b2NlZHVyZSB3b3JrcywgYW5kIHByb2JiYWJseSB3b3VsZCB3b3JrIG9uIE1pbnQuCj4KPiBhcHQg
aW5zdGFsbCBtZXRhY2l0eQo+Cj4gRnJvbSB5b3VyIElEIGF0IHRoZSBjb21tYW5kIHByb21wdC4K
Pgo+IGdzZXR0aW5ncyBzZXQgb3JnLm1hdGUuc2Vzc2lvbi5yZXF1aXJlZC1jb21wb25lbnRzIHdp
bmRvd21hbmFnZXIgbWV0YWNpdHkKPgo+IFRoZW4gcmVib290Lgo+IFRvIGdvIGJhY2sgdG8gTWFy
Y28KPiBnc2V0dGluZ3Mgc2V0IG9yZy5tYXRlLnNlc3Npb24ucmVxdWlyZWQtY29tcG9uZW50cyB3
aW5kb3dtYW5hZ2VyIG1hcmNvCj4KPiBUaGVuIHJlYm9vdC4KPgo+IFlvdSBjb3VsZCB0cnkgaXQg
aWYgeW91IGtlZXAgZ2V0dGluZyBodW5nIGFuZCBzZWUgaWYgaXQgbWFrZXMgYSAKPiBkaWZmZXJl
bmNlLsKgIE1heWJlIHlvdSBoYXZlIGEgZGlmZmVyZW50IHByb2JsZW0uCj4KPgo+IE9uIDcvMjEv
MjMgMTE6MjcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEdv
b2QgbW9ybmluZywKPj4gSWYgSSBkbyBjaGFuZ2UgbXkgV2luZG93IG1hbmFnZXIsIHRoYXQgZG8g
eW91IHJlY29tbWVuZCBJIHN3aXRjaCB0bz8KPj4gUmlnaHQgbm93LCBJ4oCZbSBhY3R1YWxseSBp
biBhIHNpdHVhdGlvbiB3aGVyZSBhIHRleHQtYmFzZWQgbG9naW4gCj4+IHByb21wdCBjb21lcyB1
cCwgcmF0aGVyIHRoYW4gdGhlIG9uZSB3aGljaCBpcyBhY2Nlc3NpYmxlIHdpdGggT3JjYS4KPj4g
VGhpcyBpcyBiZWNhdXNlIHdlIGhhZCBhIGh1Z2Ugc3Rvcm0gY29tZSB0aHJvdWdoIGxhc3Qgbmln
aHQuCj4+IFRoYW5rZnVsbHkgdGhvdWdoLCB3ZSBkaWRu4oCZdCBoYXZlIGFueSBzaWduaWZpY2Fu
dCBkYW1hZ2UgdG8gb3VyIAo+PiBwcm9wZXJ0eSwgb3RoZXIgdGhhbiBhIGZldyB0cmVlcyB0aWx0
ZWQuCj4+IEkgbGVmdCBteSBMaW51eCBtYWNoaW5lIG9uIGR1cmluZyB0aGUgc3Rvcm0gJiBwcm9i
YWJseSBzaG91bGRuJ3QgaGF2ZS4KPj4gSSBhbHNvIGRpZG7igJl0IGhhdmUgaXQgcGx1Z2dlZCBp
bnRvIGEgVVBTLgo+PiBUaGFua3MsCj4+IEplc3NpY2EgRGFpbAo+Pgo+PiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBCbGludXgtbGlzdCA8YmxpbnV4LWxpc3QtYm91bmNlc0By
ZWRoYXQuY29tPiBPbiBCZWhhbGYgT2YgTGludXggCj4+IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24KPj4gU2VudDogRnJpZGF5LCBKdWx5IDIxLCAyMDIzIDEwOjA2Cj4+IFRvOiBibGludXgt
bGlzdEByZWRoYXQuY29tCj4+IFN1YmplY3Q6IFJlOiBNaW50IEluc3RhbGxhdGlvbj8KPj4KPj4g
wqAgwqDCoMKgIElmIHlvdSBhcmUgcnVubmluZyBNYXRlLCBzb21ldGltZXMgdGhlIE1hcmNvIHBy
b2Nlc3MgYmVjb21lcyAKPj4gaHVuZywgd2hpY2ggY2F1c2VzIE9SQ0EgdG8gc2VlbSBodW5nLsKg
IElmIHlvdSBwcmVzcyBPUkNBK3NwYWNlIG9yIHRyeSAKPj4gbW92aW5nIHRoZSBtb3VzZSwgaXQg
bWF5IGdldCB5b3Ugb3V0IG9mIHRoZSBzaXR1YXRpb24uwqAgSSdtIG5vdCAKPj4gcnVubmluZyBN
aW50LCBidXQgaXQgaGFwcGVucyBvbiBEZWJpYW4gYW5kIFVidW50dSwgYW5kIE1pbnQgaXMgCj4+
IGRlcml2ZWQgZnJvbSBVYnVudHUuwqAgQSBtb3JlIHBlcm1hbmVudCBmaXggaXMgdG8gY2hhbmdl
IHRvIHRoZSAKPj4gTGlnaHRkbSB3aW5kb3cgbWFuYWdlciwgYnV0IGl0IGlzbid0IGEgZ29vZCBs
b25nLXRlcm0gc29sdXRpb24uLgo+Pgo+Pgo+Pgo+Pgo+Pgo+PiBPbiA3LzIwLzIzIDE2OjE0LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGksCj4+PiBPY2Nh
c2lvbmFsbHksIEnigJlsbCBleHBlcmllbmNlIE9yY2EgbG9ja2luZyB1cC4KPj4+IFdoZW4gdGhp
cyBoYXBwZW5zLCBzb21ldGltZXMsIGl0J3Mgb25seSBmb3IgYSBmZXcgc2Vjb25kcyAmIG90aGVy
IAo+Pj4gdGltZXMsIEkgaGF2ZSB0byB3YWl0IGFzIGxvbmcgYXMgNSBvciAxMCBtaW51dGVzLgo+
Pj4gVGhpcyBjYW4gaGFwcGVuIHdpdGggYW55IGFwcC4KPj4+IEhvdyBjYW4gSSBwcmV2ZW50IHRo
aXM/Cj4+PiBJ4oCZbSB3b3JraW5nIHdpdGggYSBEZWxsIHByZWNpc2lvbiA0ODAwIHdoaWNoIGhh
cyAxNkdCIG9mIHJhbSAmIGEgMVRCIAo+Pj4gU1NELgo+Pj4gU28sIGJhc2VkIG9uIHRoYXQsIHdo
YXQgZG8geW91IHRoaW5rIHdvdWxkIGNhdXNlIHRoZXNlIGlzc3Vlcz8KPj4+Cj4+Pgo+Pj4+IE9u
IEp1bCAyMCwgMjAyMywgYXQgMTM6NTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gCj4+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSmVzc2lj
YSwKPj4+Pgo+Pj4+IEkganVzdCByZWNlbnRseSBpbnN0YWxsIG1pbnQgMjEuMiBvbiBhIGxhcHRv
cCBhbmQgc28gZmFyIGkgbG92ZSBpdCAKPj4+PiBhcyB3ZWxsLgo+Pj4+Cj4+Pj4gUm9kbmV5Cj4+
Pj4KPj4+Pgo+Pj4+IE9uIDcvMTkvMjAyMyAwOTo0OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gSGVsbG8sCj4+Pj4+IEkgYW0gYSBodWdlIGZhbiBvZiBw
b2RjYXN0cyEKPj4+Pj4gSSdkIGxvdmUgdG8gY2hlY2sgb3V0IHRoaXMgcHJvZ3JhbSBidXQgYmVm
b3JlIEkgcHJvY2VlZCwgSSdkIGxpa2UgCj4+Pj4+IHRvIGtub3cgaWYgaXQnbGwgd29yayBvbiBM
aW51eCBNaW4/Cj4+Pj4+IEkganVzdCB1cGdyYWRlZCB0byBNaW50IDIxLjIgbGFzdCBuaWdodCAm
IGFtIGxvdmluZyBpdCBzbyBmYXIuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4gSmVz
c2ljYSBEYWlsCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gClRhIHdp
YWRvbW/Fm8SHIGUtbWFpbCB6b3N0YcWCYSBzcHJhd2R6b25hIHBvZCBrxIV0ZW0gd2lydXPDs3cg
cHJ6ZXogb3Byb2dyYW1vd2FuaWUgYW50eXdpcnVzb3dlIEF2YXN0Lgp3d3cuYXZhc3QuY29tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

