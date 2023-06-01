Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FCA71F139
	for <lists+blinux-list@lfdr.de>; Thu,  1 Jun 2023 19:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685642337;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LHapEXFE/4UABd4N4ebh5gMNOXyGK//pPyhqODJC+zQ=;
	b=bMcIO5fR1p1Cl+cPF7CoNce/0Qrmvm7Qw7NFGT2gadcBu/vRowEhCajrGQ+rQNvHE7bYij
	1IFlRogrj11SJBrjM+tFeofLxBKP47DDFt5D3chz303QA1l/MsAY7Embl6dLy2xM9QGF3/
	7YFLb0d/SeYhZlqxR5P7c/2BtzWjbCc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-594-fV8OMI5dNBakBfymW25B-A-1; Thu, 01 Jun 2023 13:58:52 -0400
X-MC-Unique: fV8OMI5dNBakBfymW25B-A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69F0F802A55;
	Thu,  1 Jun 2023 17:58:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 715ED40CFD45;
	Thu,  1 Jun 2023 17:58:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C72B919465A4;
	Thu,  1 Jun 2023 17:58:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1365.1685641087.2653574.blinux-list@redhat.com>
References: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
 <mailman.1533.1685638716.2653567.blinux-list@redhat.com>
 <mailman.1548.1685640124.2653567.blinux-list@redhat.com>
 <mailman.1365.1685641087.2653574.blinux-list@redhat.com>
Date: Thu, 1 Jun 2023 13:58:40 -0400
Subject: Re: Good minimal distro today?
To: blinux-list@redhat.com
Message-ID: <mailman.1376.1685642325.2653571.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgaGVyZSdzIGFuIGFydGljbGUgZnJvbSBEZWJpYW4gYWJvdXQgc3lzdGVtIHJlcXVpcmVt
ZW50czoKCmh0dHBzOi8vd3d3LmRlYmlhbi5vcmcvcmVsZWFzZXMvamVzc2llL2FtZDY0L2NoMDNz
MDQuaHRtbC5lbgoKR3JhbnRlZCwgdGhlIFVSTCBsaXN0cyBhIHZlcnNpb24gY29kZW5hbWUgZnJv
bSBzZXZlcmFsIHJlbGVhc2VzIGFnbywKYW5kIGlmIHlvdSB3YW50IHRvIHJ1biBPcmNhLCB5b3Ug
cHJvYmFibHkgd2FudCBhdCBsZWFzdCBhcyBtdWNoIGV4dHJhCm1lbW9yeSBmb3IgaXQgYXMgeW91
J2Qgd2FudCBmb3IgdGhlIERFIGl0c2VsZi4KCkJleW9uZCB0aGF0LCBJIGNhbid0IHJlYWxseSBw
cm92aWRlIG11Y2ggYWR2aWNlIG9uIHJ1bm5pbmcgTGludXggb24KSGFyZHdhcmUgb2xkZXIgdGhh
biAyMDExLgoKT24gNi8xLzIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiBXZWxsLCBJIGd1ZXNzIEknbGwganVzdCBt
YWtlIGEgRE9TIG1hY2hpbmUuwqAgSSBkbyBoYXZlIGEgY291cGxlIFhQCj4gbWFjaGluZXMgdGhh
dCBhcmUgcHJvYmFibHkgYXQgbGVhc3QgcGVudGl1bXMuwqAgV2lsbCBvbmUgb2YgdGhlbSB3b3Jr
Pwo+Cj4gSG93YXJkCj4KPgo+IE9uIDYvMS8yMDIzIDEyOjIxIFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBXZWxsLCBydW5uaW5nIG9uIGEgMzg2IGlzIHBy
ZXR0eSBoYXJkY29yZSwgYnV0IG1vc3QgTGludXggcGFja2FnZXMKPj4gYnVpbHQgZm9yIDMyLWJp
dCBzeXN0ZW1zIGhhdmUgdGhlaXIgYXJjaGl0ZWN0dXJlIGxpc3RlZCBhcyBpMzg2Cj4+IGltcGx5
aW5nIGF0IGxlYXN0IGJpbmFyeSBjb21wYXRpYmlsaXR5IHdpdGggdGhlIGVhcmxpZXN0IDMyLWJp
dCB4ODYKPj4gcHJvY2Vzc29ycy4uLiBhbmQgdGhlIExpbnV4IGtlcm5lbCBpdHNlbGYgaGFzIDY4
NiBidWlsZHMgZGlzdGluY3QgZnJvbQo+PiB0aGUgaTM4NiBidWlsZHMsIGZ1cnRoZXIgaW1wbHlp
bmcgdGhlIGkzODYga2VybmVscyBoYXZlIHN1cHBvcnQgZm9yCj4+IHRoZSBvbGRlc3QgMzItYml0
IHByb2Nlc3NvcnMuCj4+Cj4+IFByb2JhYmx5IG5vdCBldmVuIHdvcnRoIHRyeWluZyB0byBydW4g
YSBMaW51eCBERSBvbiBzdWNoIGFuIG9sZAo+PiBtYWNoaW5lLCBidXQgYSBwdXJlbHkgQ0xJIHNl
dHVwIG1pZ2h0IHdvcmsuLi4gVGhvdWdoLCBkb2VzIHRoZSBvbGQKPj4gbWFjaGluZSBldmVuIGhh
dmUgYSBDRC1ST00gZHJpdmUgb3IgVVNCIHBvcnRzIHRvIHN1cHBvcnQgbW9kZXJuCj4+IGluc3Rh
bGwgbWVkaWE/IEV2ZW4gaWYgeW91IGNvdWxkIGdldCBpdCBvbiB0byBmbG9wcGllcywgYSBEZWJp
YW4KPj4gbmV0aW5zdCB3b3VsZCByZXF1aXJlIHNldmVyYWwgc3RhY2tzIHRhbGwgYXMgYSBwZXJz
b24gYW5kIGlmIHRoZSBvbGQKPj4gbWFjaGluZSBhbHNvIGxhY2tlZCBldGhlcm5ldC4uLiB3ZWxs
LCBpdCdzIGhhcmQgdG8gaW1hZ2luZSB0aGFuIG1hbnkKPj4gZmxvcHB5IGRpc2tzIGluIG9uZSBw
bGFjZS4KPj4KPj4gT24gNi8xLzIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+PiB3cm90ZToKPj4+IEhvdyBtdWNoIG1hY2hpbmUg
ZG8gSSBuZWVkIHRvIHJ1biBzb21lIHZlcnNpb24gb2YgbGludXg/wqAgQ2FuIEkgZ2V0Cj4+PiBz
b21ldGhpbmcgdG8gcnVuIG9uIGEgMzg2IG9yIDQ4Nj/CoCBPciBtYXliZSBJIHNob3VsZCBqdXN0
IG1ha2UgYSBET1MKPj4+IG1hY2hpbmU/wqAgVGhhbmtzLgo+Pj4KPj4+IEhvd2FyZAo+Pj4KPj4+
Cj4+PiBPbiA2LzEvMjAyMyAxMDoxOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4+PiBIaSBhbGwsIEkgd2FudCBhIGRpc3RybyB3aGljaCBpcyByZWxhdGl2
ZWx5IHN0YWJsZSwgYnV0IG5vdCBoYXJkIHRvCj4+Pj4ga2VlcCBzb21lIGNvbXBvbmVudHMgdXAg
dG8gZGF0ZSwgZXNwZWNpYWxseSBhY2Nlc3NpYmlsaXR5IGNvbXBvbmVudHMKPj4+PiBsaWtlIE9y
Y2EsIGFzIHdlbGwgYXMgRmlyZWZveC4gSW4gcHJpbmNpcGxlLCBJIGRvbid0IHdhbnQgYSBmdWxs
Cj4+Pj4gZGVza3RvcCBlbnZpcm9ubWVudCwganVzdCBlbm91Z2ggdG8gcnVuIEZpcmVmb3ggcGx1
cyBPcmNhLCBhbmQKPj4+PiBwb3NzaWJseSBvdGhlciBkZXNrdG9wIGFwcHMgbGF0ZXIuIEkgaGF2
ZSBzdWNjZXNzZnVsbHkgc2V0IHVwCj4+Pj4gcmF0cG9pc29uIGEgZmV3IHllYXJzIGFnbyB3aXRo
IHRoZSBoZWxwIG9mIHRoZSBTdHJ5Y2huaW5lIHNjcmlwdAo+Pj4+IGRldmVsb3BlZCBieSBTdG9y
bSwgc28gbWF5YmUgdGhlIGVhc2llc3QgcGF0aCBpcyB0byBnZXQgaXQgYWdhaW4uCj4+Pj4KPj4+
PiBJJ2QgbGlrZSBvcGluaW9ucyBvbiB0aGUgZGlzdHJvIHRvIHVzZS4gQXJjaExpbnV4IGhhcyB0
aGUgYWR2YW50YWdlIG9mCj4+Pj4gcmVxdWlyaW5nIGZldyBkaXNrIHNwYWNlIGFuZCBhbHdheXMg
aGF2aW5nIHRoZSBsYXRlc3Qgc29mdHdhcmUsIGJ1dAo+Pj4+IEkndmUgdHJpZWQgaXQgc29tZSB5
ZWFycyBhZ28sIGFuZCBpdCBhcHBlYXJzIHRvbyBwcm9uZSB0byBicmVhawo+Pj4+IHRoaW5ncywg
ZXNwZWNpYWxseSB0aGUgYXVkaW8gc3R1ZmYgZHVlIHRvIGNvbnN0YW50IHVwZ3JhZGluZy4gSXMg
aXQKPj4+PiBzdGlsbCB0cnVlIHRvZGF5PyBBbm90aGVyIG9wdGlvbiBpcyBEZWJpYW4gdW5zdGFi
bGUsIHdoaWNoIEkndmUgbmV2ZXIKPj4+PiB0cmllZC4gRG9lcyBpdCB1c2UgdG8gYnJlYWsgdG9v
PyBJJ3ZlIGFsc28gcmVhZCBhYm91dCBWb2lkTGludXguIEhhcwo+Pj4+IGFueW9uZSB0cmllZCBp
dCB5ZXQ/IEkga25vdyBhYm91dCBTbGludCBhcyB3ZWxsLCBidXQgdGhlIG1hbnVhbCBzdGF0ZXMK
Pj4+PiB0aGF0IGl0IHJlcXVpcmVzIDUwIGdiIGRpc2sgc3BhY2UgYXQgbGVhc3QsIGFuZCBJJ20g
Y3VycmVudGx5IG91dCBvZgo+Pj4+IGRpc2sgc3BhY2UsIGFyb3VuZCAxNSBnYiBhdCBtb3N0Lgo+
Pj4+Cj4+Pj4gVGhhbmtzIGZvciBjb21tZW50cywKPj4+PiBDbGV2ZXJzb24KPj4+Pgo+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+
Pj4gLS0KPj4+IElmIHRoaXMgd2VyZSBhbiBhY3R1YWwgdGFnbGluZSwgaXQgX21pZ2h0XyBiZSBm
dW5ueS4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4KPiAtLQo+IElmIHRoaXMgd2VyZSBhbiBhY3R1YWwgdGFnbGluZSwgaXQgX21pZ2h0XyBi
ZSBmdW5ueS4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

