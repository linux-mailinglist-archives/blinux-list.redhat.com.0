Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F597BC09E
	for <lists+blinux-list@lfdr.de>; Fri,  6 Oct 2023 22:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696625123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MV6ZWCX9OQjt/Z44FuI+fN/1nUtWErJFfftAMWR5b10=;
	b=gnlQwlvX5p/zpWy34FQ+lNqiX2Lkhi+HScEod1uqsyr4J6+382M4HQXL5zSuKqX2MYGkFt
	AqJdp2akbFCa1wXlKS+UAWbinH8LhpocIbQE6n9vZfg6oD7dCQz50dMwkJtJBgpBAuHhl1
	5EO05wHYKuMSXKjZXAk+PWY5fKfzKik=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-CP2K_-U2NSODzKWHJhwdSw-1; Fri, 06 Oct 2023 16:45:15 -0400
X-MC-Unique: CP2K_-U2NSODzKWHJhwdSw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 050541C06503;
	Fri,  6 Oct 2023 20:45:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BDD2640C6EC0;
	Fri,  6 Oct 2023 20:45:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0F6F619465B6;
	Fri,  6 Oct 2023 20:45:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 6 Oct 2023 16:44:58 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Intro.
In-Reply-To: <mailman.1769.1696607976.2981449.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.1756.1696585477.2981447.blinux-list@redhat.com>
 <mailman.1681.1696589047.2981441.blinux-list@redhat.com>
 <mailman.1769.1696607976.2981449.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1839.1696625107.2981441.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBJIHJldGlyZWQgdG8gUGVubnN5bHZhbmlhLCBJIGNvdWxkIGhhdmUgaGFkIFdpbmRvd3Mg
Zm9yIGFuIG9wZXJhdGluZwpzeXN0ZW0gYW5kIGNob3NlIG5vdCB0byBnbyB0aGF0IHJvdXRlLiAg
V2hlcmUgSSBsaXZlIGlzIHJ1cmFsIGFuZCBhcyBzdWNoCmhlbHAgZGVzayBjYWxscyBhbmQgc2Vy
dmljZSB3b3VsZCBoYXZlIGJlZW4gZXhwZW5zaXZlLiAgV2l0aCBMaW51eCBpZiB0aGUKc3lzdGVt
IHJ1bnMgaW50byBhIHByb2JsZW0gSSBjYW4gZWl0aGVyIGZpeCB0aGUgcHJvYmxlbSBvciByZWlu
c3RhbGwgdGhlCnN5c3RlbSBieSBteXNlbGYuICBUaGlzIGlzIGltcG9ydGFudCBzaW5jZSBzaWdo
dGVkIGhlbHAgd2hlcmUgSSBsaXZlIGlzCnVuYXZhaWxhYmxlLiAgSSBhZG1pdCBJIHRyaWVkIHRv
IHVwZGF0ZSB3aW5kb3dzIG9uIGEgRGVsbCBMYXB0b3AgYW5kIGl0CndlbnQgYWxvbmcgZmluZSB1
bnRpbCBpdCBnb3QgdG8gU0VSVklDRVBBQ0szLiAgVGhlbiB0aGUgbGFwdG9wIGNyYXNoZWQgYW5k
CkkgZm91bmQgb3V0IGEgbGl0dGxlIGxhdGVyIHRoYXQgdGhhdCBEZWxsIERpbWVuc2lvbiBMYXB0
b3Agd291bGRuJ3QKaW5zdGFsbCBMaW51eCBlaXRoZXIuICBTbyB0aGUgbGFwdG9wIHdlbnQgaW50
byB0aGUgdHJhc2ggc2luY2UgaXQgd2FzIG5vCmxvbmdlciBhbnkgdXNlIHRvIGFueW9uZS4KCgot
LSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMg
dG8gYmUgdXNlZCBpbgpkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5k
IGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdApvcmRlci4iIEVkIEhvd2RlcnNoZWx0IDE5NDAuCgpP
biBGcmksIDYgT2N0IDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cgo+ID4gQnV0IHRoZW4gd2h5IHRyeSBhIExpbnV4IGRpc3RyaWJ1dGlvbiwgYnV0IGJlY2F1
c2UgdGhlIGZhY3QgdGhhdCBpdCBpcyBmcmVlIGFzIGluIGZyZWUgYmVlcj8KPgo+IFBlcmhhcHMg
YmVjYXVzZSBzb21lIHBlb3BsZSBwcmVmZXIgb3BlcmF0aW5nIHN5c3RlbXMgdGhhdDoKPgo+IC0g
RG9u4oCZdCBzcHkgb24gdGhlbQo+IC0gRG9u4oCZdCBzdGFydCByYW5kb20gZGlhZ25vc3RpYyBz
ZXJ2aWNlcyB0YWtpbmcgdXAgbW9zdCBvZiB0aGUgQ1BVCj4gLSBXb27igJl0IGJsb2F0IHRoZW0g
d2l0aCBhIHBpbGUgb2YgcHJvZ3JhbXMgcmVxdWlyaW5nIGEgTWljcm9zb2Z0IGFjY291bnQKPiAt
IENhbiBhdXRvdXBkYXRlIHRoZW1zZWx2ZXMKPiAtIERvbuKAmXQgcmVxdWlyZSBhIHN1cGVyY29t
cHV0ZXIgdG8gcnVuCj4gLSBXb27igJl0IHN0YXJ0IHVwZ3JhZGluZyB0aGVtc2VsdmVzIGluIHRo
ZSBtaWRkbGUgb2YgYSBidXNpbmVzcyBtZWV0aW5nCj4gLSBBcmUgZ2VuZXJhbGx5IHRydXN0d29y
dGh5Cj4KPiBYRAo+Cj4gVGhlc2UgYXJlIGp1c3QgdGhlIHBvaW50cyBmb3Igd2ViLWJyb3dzaW5n
IG9ubHkgdXNlcnMsIGJlc2lkZSB0aGUgZnJlZSBzeXN0ZW0gYW5kIGVjb3N5c3RlbSBvbmUuCj4K
PiBGb3IgZXZlbiBzbGlnaHRseSBtb3JlIGFkdmFuY2VkLW9uZXMsIHRoZXJlIGFyZSBpbmRlZWQg
bWFueSBtb3JlLgo+Cj4gQmVzdCByZWdhcmRzCj4KPiBSYXN0aXNsYXYKPgo+IETFiGEgNi4gMTAu
IDIwMjMgbyAxMjo0MyBMaW51eCBmb3IKPgo+IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDD
rXNhbChhKToKPgo+ID4gSGksCj4gPgo+ID4gYW5zd2VyIGluIGxpbmUuCj4gPgo+ID4gRm9yZXdv
cmQ6IEkgaGVzaXRhdGVkIHRvIGFuc3dlcjogYXMgSSBhbHJlYWR5IHdyb3RlIFNsaW50IGlzIG5v
dCBhbiBvcHRpb24gZm9yCj4gPiBBUk0gQ1BVcy4gQW55d2F5LCBoZXJlIGdvZXMgZm9yIHg4Nl82
NCBha2EgQU1ENjQgdXNlcnMuLi4KPiA+Cj4gPiBMZSAwNi8xMC8yMDIzIMOgIDExOjQ0LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPiA+Cj4gPj4gV2hlbiB5
b3UgYm9vdCBpdCwgaXQgd2lsbCBwdXQgeW91IGluIGEgZGVza3RvcCBtdWNoIGxpa2UgV2luZG93
cyBvciBNYWMgc28gaWYKPiA+PiB5b3UgYXJlIGNvbWluZyBmcm9tIHRob3NlIGRldmljZXMgaXQg
d29uJ3QgZmVlbCB0b28gb3V0IG9mIHBsYWNlLiBTbGludCBpcyBub3QKPiA+PiBiZWdpbm5lciBm
cmllbmRseSBkdWUgdG8gdGhlIHdheSB5b3UgaW5zdGFsbCBpdCwgd2hpY2ggaXMgYnkgaWYgeW91
IHJlbWVtdmVyIHRoZQo+ID4+IGRheXMgb2YgRE9TLCB0eXBpbmcgaW4gY29tbWFuZHMgYW5kIGhh
dmluZyB0byByZW1lbWJlciBvciBoYXZlIGEgc2Vjb25kIGRldmljZQo+ID4+IGhhbmR5IHRvIGdv
IHRocm91Z2ggdGhlIGluc3RhbGwgc3RlcHMuCj4gPgo+ID4gVG8gYmUgcGlja3ksIHRoZSBTbGlu
dCBpbnN0YWxsZXIgZG9lc24ndCByZXF1ZXN0IHlvdSB0byB0eXBlIGNvbW1hbmRzLCBvbmx5IHRv
Cj4gPiBhbnN3ZXIgcXVlc3Rpb25zLCB0eXBpbmcgdGhpbmdzIGxpa2UgIlkiIGZvciB5ZXMgYW5k
ICJOIiBmb3Igbm8gb3IgYSBudW1iZXIgdG8KPiA+IHNlbGVjdCBhbiBvcHRpb24uIEFuZCBvZnRl
bnRpbWVzIGlmIHlvdSBkbyBub3Qga25vdyB3aGF0IHRvIGFuc3dlciB0eXBpbmcgImgiCj4gPiB3
aWxsIGRpc3BsYXkgYSBzbWFsbCBjb250ZXh0dWFsaXplZCBoZWxwIHRleHQuIEZ1cnRoZXIsIGR1
cmluZyBpbnN0YWxsYXRpb24geW91Cj4gPiBjYW4geW91IGNhbiBhbHNvIHR5cGUgJ2RvYycgYXQg
dGhlIHByb21wdCBpbiBhIGNvbnNvbGUgYW5kIHJlYWQgYSBkb2N1bWVudGF0aW9uLAo+ID4gdGhl
biBnbyBiYWNrIHRvIGluc3RhbGxhdGlvbgo+ID4KPiA+PiBMaW51eCBNaW50IGF2b2lkcyB0aGlz
IGJ5IGhhdmluZyB0aGUgaW5zdGFsbGVyIGJlIHNpbWlsYXIgdG8gV2luZG93cywgd2hlcmUgaXQK
PiA+PiBhc2tzIHlvdSB0byBmaWxsIGluIHdoYXQgaXQgd2FudHMgdGhlbiBjbGljayBuZXh0LCBh
bmQgaXQgd2lsbCB3YWxrIHlvdSB0aHJvdWdoCj4gPj4gdGhlIHByb2Nlc3MsIHdpdGhvdXQgb3Zl
cndoZWxtaW5nIHlvdSB3aXRoIHRleHQuIFRvIG1lIHRoaXMgaXMgYSBuaWNlLCBnZW50bGUKPiA+
PiBzdGFydCB0byBMaW51eC4KPiA+Pgo+ID4+IFRoZSBiZWF1dGlmdWwgdGhpbmcgYWJvdXQgTGlu
dXggTWludCBpcyB5b3UgY2FuIGVhc2lseSBmaXJlIHVwIGEgd2ViIGJyb3dzZXIgYW5kCj4gPj4g
R29vZ2xlIHlvdXIgcXVlcmllcyBhbmQgdXN1YWxseSBnZXQgYSBwYWdlIG9yIHR3byBvZiBoZWxw
ZnVsIHJlc3VsdHMsIHZlcnN1cwo+ID4+IHdpdGggU2xpbnQsIHJlbHlpbmcgb24gaGF2aW5nIHRv
IG1hbnVhbGx5IGNoZWNrIGEgc3BlY2lmaWMgZW1haWwgbGlzdC4gSW4gYQo+ID4+IG51dHNoZWxs
LCBNaW50IE1hdGUgaXMgYnVpbHQgdG8gYmUgZWFzeSB0byB1c2UgYW5kIHNpbXBsZSB0byBrZWVw
IHVwIHRvIGRhdGUuCj4gPgo+ID4gV2l0aCBTbGludCB5b3UgY2FuIGFsc28gZ2V0IGluZm9ybWF0
aW9uIGJlZm9yZSBpbnN0YWxsaW5nIGp1c3QgZmlyaW5nIHVwIHRoaXMKPiA+IHBhZ2UgaW4gYSB3
ZWIgYnJvd3NlcjoKPiA+IGh0dHBzOi8vc2xpbnQuZnIvZW4vSGFuZEJvb2suaHRtbAo+ID4KPiA+
PiBJJ20gaG9waW5nIHRoaXMgaGVscHMsIEkgYWJzb2x1dGVseSBnZXQgaG93IGRhdW50aW5nIG1v
dmluZyB0byBMaW51eCBjYW4gYmUsCj4gPj4gZXNwZWNpYWxseSBpZiB5b3UgYXJlIG9sZGVyIGxp
a2UgeW91IHNhaWQgeW91IGFyZS4KPiA+Cj4gPiBJIGFtIHByb2JhYmx5IG9sZGVyIHRoYW4gQmls
bHkgKDc0IGF0IHRpbWUgb2Ygd3JpdGluZykgYW5kIHVzZSBTbGludCBldmVyeSBkYXkgOykKPiA+
Cj4gPiBBbGwgdGhpcyBiZWluZyBzYWlkIGlmIHRoZSBpbnRlbmRlZCB1c2FnZSBpcyBqdXN0IGJy
b3dzaW5nIHRoZSBJbnRlcm5ldCwKPiA+IGNvbW11bmljYXRlIHdpdGggZmFtaWx5IGFuZCBmcmll
bmRzIGFuZCBzbyBvbiwgYW55IGFjY2Vzc2libGUgZGlzdHJpYnV0aW9uIGlzCj4gPiBnb29kIGVu
b3VnaC4gQnV0IHRoZW4gd2h5IHRyeSBhIExpbnV4IGRpc3RyaWJ1dGlvbiwgYnV0IGJlY2F1c2Ug
dGhlIGZhY3QgdGhhdCBpdAo+ID4gaXMgZnJlZSBhcyBpbiBmcmVlIGJlZXI/Cj4gPgo+ID4gRGlk
aWVyCj4gPgo+ID4+IEphY2UKPiA+Pgo+ID4+IE9uIDEwLzQvMjMgMTI6MTgsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4KPiA+Pj4gSGkgZ3V5cywgc28gZ2xh
ZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkga25vdyBub3RoaW5nIGFib3V0IExpbnV4IHBs
YXRmb3JtCj4gPj4+IGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBMaW51eCBmb3IgbXlzZWxmLiBUaGUg
cHJvYmxlbSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaAo+ID4+PiB2ZXJzaW9uIHRvIHRyeSBv
dXQgZmlyc3QgYW5kIHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmluZyB0aGlzIGdyb3VwLiBJ
IGFtIGEKPiA+Pj4gYmxpbmQgcGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBVSy4gSUYgeW91
IGNvdWxkIHByb3ZpZGUgbWUgd2l0aAo+ID4+PiBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJzaW9u
IG9mIExpbnV4IHdvdWxkIGJlIGJlc3QgZm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZQo+ID4+PiBp
dCBpbmRlZWQsIEJpbGx5Cj4gPj4+Cj4gPj4+IFNlbnQgZnJvbSBNYWlsIGZvciBXaW5kb3dzCj4g
Pj4+Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gPj4+Cj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+ID4+Cj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Cj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiDigIsKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

