Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3C74FA5FC
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 10:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649493032;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=51Fp2Y61ol6B+Xubl3SIAhxAdI2FFwxL6meae/+K2HI=;
	b=cotXR0UyTaRx1hu2RB2iwiyJFUQCF9OyCkx0Gm3EGY8TPyVKicWNjKSzE+tplRwFpBuJWw
	8LhI+nc0YNYhFRLTq3f6k6nbptgIELZMyTs4xWjawOKq6F5DvxNswVvIRZ+0VK4oNG+Cqe
	2hgkUPSviIGjOtRzXIjdy+fO1+stEV8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-A3d-oDLiMiKw6T-u452rQg-1; Sat, 09 Apr 2022 04:30:29 -0400
X-MC-Unique: A3d-oDLiMiKw6T-u452rQg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFED73802AE7;
	Sat,  9 Apr 2022 08:30:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D72C2024CB9;
	Sat,  9 Apr 2022 08:30:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A97EE194034E;
	Sat,  9 Apr 2022 08:30:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 09:30:09 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm questions/NNN query
References: <mailman.7614.1649483669.111206.blinux-list@redhat.com>
 <mailman.7510.1649490124.111203.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7510.1649490124.111203.blinux-list@redhat.com>
Message-ID: <mailman.7495.1649493025.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzIHRvIHB1dHRpbmcgaXQgaW4gdGhlIEFVUiBhbmQgeWVzIGZvciB0aGUgZW52IHN0dWZmLgoK
SSdtIHBva2luZyBhdCB0aGUgY29uZmlnIHRyeWluZyB0byByZXBsaWNhdGUgTk5OJ3Mgb3BlbiB3
aXRoIGFuZCBub3QKaGF2aW5nIG11Y2ggbHVjay4gSXMgdGhhdCBqdXN0IGEgY2FzZSBvZiByZW1l
bWJlcmluZyB0byBkcm9wIHRvIGEgc2hlbGwKYW5kIGRvaW5nIHdoYXQgSSBuZWVkPwoKT24gdGhh
dCBub3RlLi4uaXMgdGhlcmUgYSB3YXkgb25jZSBJIGhpdCBGNCwgdG8gZ2V0IGJhY2sgdG8gZHJh
Z29uZm0KZWFzaWx5IHdpdGhvdXQgcmVsYXVuY2hpbmcgaXQgZnJvbSB0aGUgc2hlbGw/CgpPbiBT
YXQsIEFwciAwOSwgMjAyMiBhdCAwOTo0MTo0OUFNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhvd2R5LAo+IAo+ID4g77u/SXMgRHJhZ29uRk0gaW4g
dGhlIEFyY2ggcmVwbz8gCj4gQ3VycmVudGx5IGl0cyBub3QuIElmIHlvdSBsaWtlIGl0LCBpIGNh
biBwdXQgaXQgaW50byBBVVIuCj4gCj4gQ2hlZXJzIGNocnlzCj4gCj4gPiBBbSAwOS4wNC4yMDIy
IHVtIDA3OjU0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gPiAKPiA+IO+7v0lzIERyYWdvbkZNIGluIHRoZSBBcmNo
IHJlcG8/IEFtIHRyeWluZyB0byBnZXQgaXQgd2l0aCB5YXkgZnJvbSB0aGlzIHNpZGUuCj4gPiAK
PiA+IAo+ID4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDAyOjI2OjE1QU0gKzAyMDAsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4gSG93ZHksCj4gPj4gCj4g
Pj4gT2sgdGhlbiBpIGtlZXAgdGhhdCBhbHQgKyB1Lgo+ID4+IAo+ID4+PiBUaGF0IHNlZW1zIHRv
IHdvcmsgYmV0dGVyLCBidXQgZG9lcyB0aGUgUGF5dHJpb24gbGluayB5b3Ugc2VudCBpbiBhbm90
aGVyIG1lc3NhZ2UgaGF2ZSB0aGUgaW5mbyBvbiBjaGFuZ2luZyB0aGUgc2hvcnRjdXRzIGFzIHdl
bGw/Cj4gPj4gCj4gPj4gCj4gPj4gV2VsbCBpIGNoYW5nZWQgdGhlIHNob3J0Y3V0cyBpbiBtYXN0
ZXIuIFNvIHRoZXJlIGlzIG5vIG5lZWQgdG8gY2hhbmdlIHRoZW0gYnkgb3RoZXJzIGFueW1vcmUu
Cj4gPj4gT3Igd2hhdCBpbmZvIHlvdSBtZWFuIGV4YWN0bHk/Cj4gPj4gCj4gPj4gVGhlcmUgaXMg
bm93IGF0IGxlYXN0IGEgYmFzaWMgZG9jdW1lbnRhdGlvbiA6KS4KPiA+PiAKPiA+PiBDaGVlcnMg
Y2hyeXMKPiA+PiAKPiA+Pj4+IEFtIDA5LjA0LjIwMjIgdW0gMDI6MTUgc2NocmllYiBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiA+
Pj4gCj4gPj4+IO+7v09rYXkgaWYgaXQncyBqdXN0IGFsdCt1IHRoZW4geWVzIGtlZXAgaXQgdGhh
dCB3YXkuIFRoYXQgc2VlbXMgdG8gd29yayBiZXR0ZXIsIGJ1dCBkb2VzIHRoZSBQYXl0cmlvbiBs
aW5rIHlvdSBzZW50IGluIGFub3RoZXIgbWVzc2FnZSBoYXZlIHRoZSBpbmZvIG9uIGNoYW5naW5n
IHRoZSBzaG9ydGN1dHMgYXMgd2VsbD8KPiA+Pj4gCj4gPj4+PiBPbiBGcmksIEFwciAwOCwgMjAy
MiBhdCAxMToyODozMFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+ID4+Pj4gSG93ZHksCj4gPj4+PiAKPiA+Pj4+IGkgaW5zdGFsbGVkIE1hdGUgdGVy
bWluYWwgZm9yIHRlc3RpbmcKPiA+Pj4+IAo+ID4+Pj4gLy8gQ3RybCtEIGZvciBkZXRhaWxzIGlu
c3RlZWFkIG9mIEYxMAo+ID4+Pj4gb2sgdGhpcyBpcyBjaGFuZ2VkLgo+ID4+Pj4gCj4gPj4+PiBh
Ym91dCBeW3UgaSB3YXMgd3JvbmcuIGl0cyBqdXN0IGFsdCArIHUKPiA+Pj4+IHNvIGEgc2luZ2xl
IF4gaXMgQ3RybAo+ID4+Pj4gdGhlIHNlcXVlbmNlIF5bIGlzIGFsdCBpZiBpdCBpcyBmb2xsb3dl
ZCBieSBhbiBsZXR0ZXIuIGlmIG5vdCwgaXRzIGVzY2FwZQo+ID4+Pj4gY3RybCArIGFsdCArIHgg
d291bGQgYmUgXlteQwo+ID4+Pj4gCj4gPj4+PiBiYWNrIHRvIEFsdCArIHUsIHRoaXMgd29ya2Vk
IGZvciBtZSwgc2hvdWxkIGkgY2hhbmdlIHRoZSBzaG9ydGN1dCBpbiBhbnkKPiA+Pj4+IHdheT8K
PiA+Pj4+IAo+ID4+Pj4gLy8gSSdtIHRyeWluZyB0byByZXBsYWNlIHVuemlwIGFuZCB0YXIgd2l0
aCBhdG9vbAo+ID4+Pj4gaW4gc2VjdGlvbiBbbWltZV0geW91IHNlZSBob3cgdG8gb3BlbiBhbiBm
aWxlLgo+ID4+Pj4gaW4gc2VjdGlvbiBbY29tcHJlc3NdIGFuZCBbZGVjb21wcmVzc10geW91IGNh
biBjb25maWd1cmUgdGhlIGRlLS9jb21wcmVzc2luZwo+ID4+Pj4gcHJvY2Vzcy4KPiA+Pj4+IGkg
Y2hhbmdlZCB0aGlzIGZvciB5b3UKPiA+Pj4+IAo+ID4+Pj4gY29tcHJlc3MgKHRoZSB3b3JkIGNv
bXByZXNzIGJldm9yZSB0aGUgZXF1YWwgaXMganVzdCB0aGUgbGFibGUgc2hvd24gaW4KPiA+Pj4+
IGNvbnRleHQgbWVudSk6Cj4gPj4+PiAjIHswfSA9IFNvdXJjZTogbGlzdCBvZiBmaWxlcyBzZXBh
cmF0ZWQgYnkgc3BhY2Ugd2l0aCBhYnNvbHV0IGZpbGVwYXRoCj4gPj4+PiAjIHsxfSA9IERlc3Rp
bmF0aW9uOiAgYXJjaGl2ZSBuYW1lCj4gPj4+PiBjb21wcmVzcz1hcGFjayAtcSB7MX0gezB9Cj4g
Pj4+PiAKPiA+Pj4+IAo+ID4+Pj4gZGVjb21wcmVzcyAoZm9yIHppcGZpbGVzLCB5b3UgY2FuIGp1
c3QgY29weSB0aGF0IGZvciBhbnkgb3RoZXIgZm9ybWF0Cj4gPj4+PiBzdXBwb3J0ZWQgYnkgYXRv
b2wgYW5kIGNoYW5nZSB0aGUgYXBwbGljYXRpb24vemlwIHRvIHdoYXRldmVyIG1pbWV0eXBlIHlv
dQo+ID4+Pj4gd2FudCB0byB1bnppcCk6Cj4gPj4+PiAjIHswfSA9IFNvdXJjZTogZmlsZSB0byBk
ZWNvbXByZXNzCj4gPj4+PiAjIHsxfSA9IERlc3RpbmF0aW9uOiBmb2xkZXIgd2l0aCBhcmNoaXZl
IGNvbnRlbnQKPiA+Pj4+IGFwcGxpY2F0aW9uL3ppcD1hdG9vbCAtZiAtcSAtLWV4dHJhY3QtdG89
ezF9IHswfQo+ID4+Pj4gCj4gPj4+PiBpIGp1c3QgcHVzaGVkLgo+ID4+Pj4gCj4gPj4+PiBjaGVl
cnMgY2hyeXMKPiA+Pj4+IAo+ID4+Pj4gCj4gPj4+Pj4gQW0gMDguMDQuMjIgdW0gMjI6MTEgc2No
cmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+ID4+Pj4+IFN1cmUgdGhp
bmcuIEhlcmUnJ3Mgd2hhdCBJIHdoaXBwZWQgdXBwIHJlYWwgcXVpY2sKPiA+Pj4+PiAKPiA+Pj4+
PiBDdHJsK0QgZm9yIGRldGFpbHMgaW5zdGVlYWQgb2YgRjEwCj4gPj4+Pj4gCj4gPj4+Pj4gQ3Ry
bCthbHQreCBmb3IgZXh0cmFjdCBpbnN0ZWFkIG9mIHRybCthbHQrdSAod2hpY2ggZG9lc250IHNl
ZW0gdG8gd29yawo+ID4+Pj4+IG9uIE1hdGU/KQo+ID4+Pj4+IAo+ID4+Pj4+IEknbSB0cnlpbmcg
dG8gcmVwbGFjZSB1bnppcCBhbmQgdGFyIHdpdGggYXRvb2wsIGhvdyBOTk4gaGFuZGxlcyBpdCBz
aW5jZQo+ID4+Pj4+IGl0J3MgYSBsb3QgbmljZXIgdG8gaGF2ZSBvbmUgdG9vbCB0aGF0IGhhbmRs
ZXMgYSB0b24gb2YgZm9ybWF0cyB3aXRob3V0Cj4gPj4+Pj4gaGF2aW5nIHRvIGh1bnQgZG93biAx
MCBkaWZmZXJyZW50IHByb2dyYW1zCj4gPj4+Pj4gCj4gPj4+Pj4gQXNpZGUgZnJvbSB0aGF0LCBu
b3QgbWFkZSBhbnkgb3RoZXIgY2hhbmdlcyB0byB0aGUgLmNvbmYgZmlsZSB0aG91Z2guCj4gPj4+
Pj4gSXQncyBhIG5lYXQgbGl0dGxlIHByb2dyYW0sIHRob3VnaCBqdXN0IGluIGNhc2UgSSBtaXNz
ZWQgYW55LCBnbyB0aHJvdWdoCj4gPj4+Pj4gYW5kIHVzZSBEcmFnb25GTSB3aXRoIGEgdGVybWlu
YWwgZW11bGF0b3IgYW5kIHNlZSB3aGF0IHlvdSBjYW4gY29tZSB1cAo+ID4+Pj4+IHdpdGggZm9y
IHNob3J0Y3V0cz8gSSdtIG9uIGEgbGFwdG9wIGN1cnJlbnRseSBzbyB0aGF0IGtpbmQgb2YgaGlu
ZGVycwo+ID4+Pj4+IHdoYXQgSSBjYW4gZG8gc2hvcnRjdXRzIHdpc2UgaG93ZXZlcgo+ID4+Pj4+
IAo+ID4+Pj4+IE9uIEZyaSwgQXByIDA4LCAyMDIyIGF0IDEwOjAzOjI3UE0gKzAyMDAsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Pj4+IEhvd2R5LAo+ID4+
Pj4+PiAKPiA+Pj4+Pj4gV2VsbCwgRjEyMyB3YXMgbW9zdGx5IFRUWSBvbmx5LiBTbyB0aGUgYmlu
ZGluZ3MgYXJlIHNldCB3aXRoIHRoYXQgaW4gbWluZCA6KS4gVGhlIHByb2plY3Qgd2FudGVkIHRv
IG1vbWljIEdVSSBzaG9ydGN1dHMgZm9yIG1vc3QgcGFydHMuCj4gPj4+Pj4+IFRoZSBjb2xsaWRp
bmcgc2hvcnRjdXRzIGNhbiBiZSBjaGFuZ2VkIHZlcnkgZWFzeSBpbiBzZXR0aW5ncyBmaWxlLgo+
ID4+Pj4+PiAKPiA+Pj4+Pj4gSWYgeW91IGhhbmQgbWUgYSBsaXN0IHdpdGggc2hvcnRjdXRzIHlv
dSB3YW50IHRvIGhhdmUgY2hhbmdlZCwgaSBjaGFuZ2UgdGhlbSBmb3IgeW91IHJpZ2h0IGluIG1h
c3Rlci4KPiA+Pj4+Pj4gCj4gPj4+Pj4+IEFzIEYxMjMgaXMgbm8gbW9yZSwgVFRZIGNvbXBhdC4g
ZG9lcyBub3QgbWF0dGVyIHRoYXQgbXVjaCBhbnltb3JlIHRvIG1lIGFuZCB3ZSBjYW4gaW1wcm92
ZSBpdCBpbiB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3Qgb2YgdGhlbSBoYXZlIG1vcmUgY2FwYWJp
bGl0aWVzIHRoYW4gVFRZIGluIGFueSB3YXksIGZvciBleGFtcGxlIGtvbnNvbGUgKCB0aGUgS0RF
IHRlcm1pbmFsIGVtdWxhdG9yIGhhcyBzcGVjaWFsIGVzY2FwZSBzZXF1ZW5jZXMgZm9yIHNoaWZ0
IGFycm93KQo+ID4+Pj4+PiAKPiA+Pj4+Pj4gQ2hlZXJzIGNocnlzCj4gPj4+Pj4+IAo+ID4+Pj4+
Pj4gQW0gMDguMDQuMjAyMiB1bSAyMTo1MyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4+Pj4+Pj4gCj4gPj4+Pj4+
PiDvu79VbmZvcnR1bmF0ZWx5LCBEcmFnb25GTSBkb2Vzbid0IHdvcmsgd2VsbCBvdXQgb2YgdGhl
IGJveCB3aXRoIGEgdGVybWluYWwgZW11bGF0b3IsIG1vc3RseSBkb3duIHRvIGNvbmZsaWN0cyB3
aXRoIGtleXMgbGlrZSBGMTAuIFllcyBJIGNhbiByZWRlZmluZSB0aGVtLCBidXQgdGhhdCdzIGtp
bmQgb2Ygc29tZXRoaW5nIEltIHNsd2x5IHNsb3dseSBwb2tpbmcgYXQuIEknbSB1bmFibGUgdG8g
Z2V0IE1hdGUtdGVybWluYWwgdG8gcmVjb2duaXplIGEgY3RybCthbHQgcGF0ZXJuIGhvdWdoIHdo
ZXJlYXMgYSBUVFkgd29ya3MgZmluZSBzbywgdW5zdXJlIGlmIHlvdSBuZWVkIHRvIHRlc3QgRHJh
Z29uZm0gb24gdGVybWluYWwgZW11bGF0b3JzIHdpdGggYSBkZXNrdG9wPwo+ID4+Pj4+Pj4gCj4g
Pj4+Pj4+PiBLaW5kIG9mIGEgc2hhbWUgc2luY2UgSSBsaWtlIGhvdyBlYXN5IERyYWdvbiBpcyB0
byB1c2UgdnMgc29tZXRoaW5nIGxpa2UKPiA+Pj4+Pj4+IE1DIG9yIFJhbmdlciBvciBOTk4gKG15
IGN1cnJlbnQgZmF2b3JpdGUgb25lIHRoYXQgZG9lc24ndCBoYXZlIGtleWJvYXJkCj4gPj4+Pj4+
PiBjb25mbGljdHMpIHRob3VnaAo+ID4+Pj4+Pj4gCj4gPj4+Pj4+Pj4gT24gRnJpLCBBcHIgMDgs
IDIwMjIgYXQgMDk6MzY6MjhQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiA+Pj4+Pj4+PiBIb3dkeSwKPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBXZWxs
IHRoZXJlIGlzIGEgY29udGV4dCBtZW51ICAoIGRyYWdvbkZNIGNhbGxzIGl0IERldGFpbHMsIGJl
Y2F1c2UgaXQgYWxzbyBzaG93cyBmaWxlIHByb3BlcnRpZXMgbGlrZSBzaXplLCBtaW1lIGFuZCBh
IGxpc3Qgb2YgYXZhaWxhYmxlIGFjdGlvbnMpIHdpdGggYWxsIGF2YWlsYWJsZSBvcHRpb25zIGJ5
IHByZXNzaW5nIEYxMAo+ID4+Pj4+Pj4+IFNvbWUgYWN0aW9ucyBhcmUgb25seSBhdmFpbGFibGUg
Zm9yIGdpdmVuIG1pbWUgdHlwZXMgbGlrZSBjb21wcmVzcyBjdXJyZW50IG9ubHkgZm9yIHppcCBh
bmQgdGFyLCBvdGhlcnMgY291bGQgYmUgYWRkYWQgdmVyeSBlYXN5LiBCeSBkZWZhdWx0IGRyYWdv
bmZtIGRvZXMgbm90IHVzZSBhdG9vbCBidXQgdW56aXAgY29tbWFuZCBmb3IgemlwIGZpbGVzIGFu
ZCB0YXIgb2YgY291cnNlIGZvciB0YXIgdGhvc2UgbmVlZCB0byBiZSBpbnN0YWxsZWQgb3IgY29u
ZnVyZWQgdG8gdXNlIHNvbWV0aGluZyBlbHNlLiAgKEkgY2FuIGdpdmUgeW91IGEgbW9yZSBkZXRh
aWxlZCBpbmZvcm1hdGlvbiBob3cgdG8gY29uZmlndXJlIHRob3NlIHN0dWZmIGlmIHlvdSBhcmUg
aW50ZXJlc3RlZCBpbikKPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBEcmFnb25GTSByZWFkcyB0aGUg
RXNjYXBlIHNlcXVlbmNlcyBmcm9tIHN0ZGluIHRvIGRldGVjdCBzaG9ydGN1dHMgKGxpa2UgYWxt
b3N0IGFueSBvdGhlciBDTEkgYXBwbGljYXRpb24pCj4gPj4+Pj4+Pj4gU29tZSBpbXBvcnRhbnQg
YmFzaWMgdHJhbnNsYXRpb24gaGVscCAod2Ugc2hvdWxkIGFkZCB0aGUgc2hvcnRjdXRzIGFzIGNv
bW1lbnRzIHRvIHRoZSBzZXR0aW5ncyBmaWxlIGxvbCApCj4gPj4+Pj4+Pj4gXiA9IENUUkwKPiA+
Pj4+Pj4+PiBbID0gQWx0Cj4gPj4+Pj4+Pj4gVXBwZXJjYXNlIGxldHRlciA9IHNoaWZ0ICsgbGV0
dGVyCj4gPj4+Pj4+Pj4gbG93ZXJjYXNlIGxldHRlciA9IGp1c3QgdGhlIGxldHRlcgo+ID4+Pj4+
Pj4+IEFuIG90aGVyIGV4YW1wbGU6Cj4gPj4+Pj4+Pj4gXlt1IHRyYW5zbGF0ZXMgYXMgY3RybCAr
IGFsdCArIHUKPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBUaGVyZSBhcmUgc29tZSBzcGVjaWFscyBs
aWtlIGFycm93IGtleXMgb3IgZXNjYXBlLgo+ID4+Pj4+Pj4+IEVzY2FwZSBpcyB0cmFuc2xhdGVk
IGJ5IF5bCj4gPj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4gKGJ5IHRoZSB3YXkgbWFueSBzaG9ydGN1dHMg
YXJlIHNpbWlsYXIgdG8gb3RoZXIgZ3JhcGhpY2FsIGZpbGUgbWFuYWdlcnMgQlVUIHNoaWZ0ICsg
YXJyb3cgZm9yIG1hcmsgZmlsZXMgaXMgZGlmZmVyZW50IGFzIGkgY291bGQgbm90IGZpZ3VyZSBo
b3cgdG8gcmVhZCB0aGlzIGZyb20gYW4gZXNjYXBlIHNlcXVlbmNlLCBiZWNhdXNlIHRoZXJlIGlz
IG5vIHVwcGVyY2FzZSBhcnJvdyAqc21pbGUqKQo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+IERldmVs
b3BtZW50IHdhcyBzcG9uc29yZWQgYnkgRjEyMyBwcm9qZWN0LiBUb2RheSBrbm93biBhcyBzdG9y
bXV4LiBTYWRseSBpIGRpZCBub3Qgd2lyZSBhIGxvdCBvZiBkb2N1bWVudGF0aW9uIGJ1dCB5b3Ug
Y2FuIGFzayBtZSBldmVyeXRoaW5nIHlvdSB3YW50IHRvIGtub3cgOikuCj4gPj4+Pj4+Pj4gCj4g
Pj4+Pj4+Pj4gQ2hlZXJzIGNocnlzCj4gPj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+PiBBbSAwOC4wNC4y
MDIyIHVtIDE4OjQxIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gPj4+Pj4+Pj4+IO+7v1NvIEkgZ2F2ZSBpdCBhIHNo
b3QgYW5kIGl0IGZlZWxzIGxvZ2ljYWwgYW5kIHdlbGwgbGFpZCBvdXQsIGZvciB0aGUgbW9zdAo+
ID4+Pj4+Pj4+PiBwYXJ0Cj4gPj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+PiBCVXQgSSdtIHN0cnVnZ2xp
bmcgb24gYSBmZXcgdGhpbmdzLiBJIGhhdmUgaXQgZ29pbmcgYW5kIHdhbnQgdG8gdW56aXAgYW4K
PiA+Pj4+Pj4+Pj4gYXJjaGl2ZSBmcm9tIHdpdGhpbiBpdC4gSW4gTk5OIEkgY2FuIGp1c3QgZG8g
dGhhdCBhbmQgd29yayB3aXRoIGF0b29sLiBJCj4gPj4+Pj4+Pj4+IGNhbid0IHNlZW0gdG8gZmlu
ZCB0aGUga2V5cyB0byBzdGFydCBleHRyYWN0aW5nIGFuIGFyY2hpdmUgb3IgaG93Cj4gPj4+Pj4+
Pj4+IERyYWdvbmZtIGhhbmRsZXMgdGhhdCBhdCBhbGwsIEl2ZSBvbmx5IGZvdW5kIHVuZXh0cmFj
dCB3aXRoIF4oVSBpbiB0aGUKPiA+Pj4+Pj4+Pj4gY29uZmlnLCB3aGljaCBJJ3ZlIG5vIGNsdWUg
d2hhdCBpdCB0cmFuc2xhdGVzIHRvIGluIHRlcm1zIG9mIGFjdHVhbCBrZXlzCj4gPj4+Pj4+Pj4+
IGFzaWRlIGZyb20gY3RybCBhbmQgVS4gSXQncyB0aGUgKCBJJ20gc3R1bXBlZCBvbgo+ID4+Pj4+
Pj4+PiAKPiA+Pj4+Pj4+Pj4gU2VlIG15IG1haW4gZ3JpcGUgd2l0aCBOTk4gaXMgaWYgSSB1c2Ug
aXQgaW4gYSB0ZXJtaW5hbCBJIGhhdmUgdG8gaGl0IE8sCj4gPj4+Pj4+Pj4+IHczbSBhbmQgYyB0
byBvcGVuIGFuIGh0bWwgZG9jIGluIHczbSBlbHNlIGl0IGxvYWRzIHVwIGluIEZpcmVmb3guIE5v
dwo+ID4+Pj4+Pj4+PiBncmFudGVkIEkndmUgbm90IHRyaWVkIGl0IG9uIGEgcHVyZSBUVFkgYnV0
Li4ub24gYSB0ZXJtaW5hbCwgeGRnLW9wZW4KPiA+Pj4+Pj4+Pj4gb3ZlcnJpZGVzIGJyb3dzZXIg
YmVpbmcgc2V0IGFzIGFuIGVudmlyb25tZW50IHZhcmlhYmxlCj4gPj4+Pj4+Pj4+IAo+ID4+Pj4+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+
Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+ID4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiA+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+
Pj4+IAo+ID4+Pj4gCj4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+IAo+ID4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiA+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4gCj4gPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gCj4gPiAtLSAKPiA+
IEdvb2QgcGVvcGxlIGRvIG5vdCBuZWVkIGxhd3MgdG8gdGVsbCB0aGVtIHRvIGFjdCByZXNwb25z
aWJseSwgd2hpbGUgYmFkIHBlb3BsZSB3aWxsIGZpbmQgYSB3YXkgYXJvdW5kIHRoZSBsYXdzLgo+
ID4gLSBQbGF0byAoNDI3LTM0NyBCLkMuKQo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo=

