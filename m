Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 744C35969FB
	for <lists+blinux-list@lfdr.de>; Wed, 17 Aug 2022 09:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660719841;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QoNZC9zP7XgosAK0q7rdSWVBURoNB3IxcDadfQWRny4=;
	b=KcVuVshiEYfQRAxxW3UkGHOcw4nCulZdDN4qvVSAZp+qIzbeFswcTR6ALq1Y/EdnuEmtAq
	9SwsnopUZKQc+om9i0F527d8ftTLtU6o9Pz7x0/0dSl5kFg9RB53PQras0vXzmPwJeYuaZ
	WbzvWJaxgOV/u0EO5xfRd3qfN6D//mc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-gWYpPLcVObe5Rayx18f6oA-1; Wed, 17 Aug 2022 03:03:58 -0400
X-MC-Unique: gWYpPLcVObe5Rayx18f6oA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE616380452C;
	Wed, 17 Aug 2022 07:03:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C39E514583C0;
	Wed, 17 Aug 2022 07:03:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 65057194705A;
	Wed, 17 Aug 2022 07:03:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Date: Wed, 17 Aug 2022 00:03:49 -0700
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131437260.1254020@server2.shellworld.net>
 <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131554070.1255408@server2.shellworld.net>
 <031101d8af50$8f3d3fb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131909070.1258388@server2.shellworld.net>
 <033301d8af87$4227f3f0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208140031380.1264046@server2.shellworld.net>
 <Pine.LNX.4.64.2208160617250.1327201@server2.shellworld.net>
 <049901d8b17d$8869e7e0$80ffa8c0@Win7VM>
 <e3c7521b-cd73-38d7-0e9a-0e7a956e0f47@wisc.edu>
 <04a701d8b196$0d63e190$80ffa8c0@Win7VM>
 <mailman.1194.1660674421.10498.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.1194.1660674421.10498.blinux-list@redhat.com>
Message-ID: <mailman.1333.1660719834.10499.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGV0IG1lIGNoaW1lIGluIGhlcmUgZnJvbSB0aGUgb3Bwb3NpdGlvbiBwb2ludCBvZiB2aWV3LgoK
SGF2aW5nIHVzZWQgYm90aCB0aGUgcGFpZCBzY3JlZW4gcmVhZGVycyAoSkFXUyBhbmQgYWxzbyBH
d01pY3JvKSBhbmQgbWFueSBvZiB0aGUgZnJlZSBzY3JlZW4gcmVhZGVycywgVGhlIHBhaWQgb25l
cyBtYXkgaGF2ZSBtb3JlIGZlYXR1cmVzIGFuZCBhcmUgcHJvYmFibHkgdHVuZWQgYSBiaXQgbW9y
ZSBjbG9zZWx5IHRvIHdvcmsgaW4gYSBzcGVjaWZpZWQgT1MsIGJ1dCB0aGUgZnJlZSBvbmVzIG9m
dGVuIHRpbWVzIG9mZmVyIG1vcmUgbGF0aXR1ZGUgd2hlbiBkZWFsaW5nIHdpdGggbm9uLXN0YW5k
YXJkIGNvbnRlbnQuCgpOb3csIHNvbWUgb3RoZXIgY29uc2lkZXJhdGlvbnMsIG5vdCBhbGwgY29t
cHV0ZXIgc3lzdGVtcyBjYW4gaGFuZGxlIGEgZnVsbCBHVUkgKGNhc2UgaW4gcG9pbnQ6IHRoZSBS
YXNwYmVycnlQaSAzIHNlcmllcyBvZiB3aGljaCBJIGhhdmUgMSkuIFNvLCB0aGUgdXNlIG9mIGEg
Y29uc29sZSB0aGVyZSBpcyBhIG11c3QgYW5kIEkgdXNlIHNldmVyYWwgb2YgdGhlIGNvbnNvbGUg
YXZhaWxhYmxlIHNjcmVlbiByZWFkZXJzLCBMaWtlIEJybHRUWSwgRW1hY3NzcGVhaywgU3BlYWt1
cCBhbmQgb3RoZXJzKS4gVGhlcmUgYXJlIHRpbWVzIHdoZW4gdGhpcyBpcyB2ZXJ5IHVzZWZ1bCB3
aGVuIHRoZSBmdWxsIEdVSSBtaWdodCBwcmVzZW50IHNvbWUgaXNzdWVzLgoKTm93LCB0aGlzIGRv
ZXNu4oCZdCBtZWFuIEkgaGF2ZW7igJl0IHN0b3BwZWQgdXNpbmcgZnVsbCBHVUkgaW50ZXJmYWNl
cy4gSSBoYXZlLCBmb3IgdGhlIG1vc3QgcGFydCwgc3R1Y2sgd2l0aCBlaXRoZXIgSkFXUyBvciBO
VkRBIG9uIHdpbmRvd3MgKHdoYXQgb25lIGNhbuKAmXQgcmVhZCwgdGhlIG90aGVyIG1pZ2h0KSwg
Vm9pY2VvdmVyIG9uIE9TIFggYW5kIGFueSBvZiB0aGUgaGFsZiBkb3plbiBvciBzbyBzY3JlZW4g
cmVhZGVycyBhdmFpbGFibGUgaW4gTGludXggKE9SQ0EgYmVpbmcgdGhlIHByaW1hcnkgZm9yIEdV
SSBhbmQgYW55dGhpbmcgZWxzZSBmb3IgY29uc29sZSBhcyBuZWVkZWQpLiBFYWNoIGhhcyB0aGVp
ciBmbGF3cyBhbmQgZWFjaCBoYXMgdGhlaXIgc3RyZW5ndGhzIGFuZCBpdCBkb2VzbuKAmXQgaHVy
dCB0byBrbm93IHRoZW0gYWxsLiBCZWxpZXZlIG1lLCB0cnkgdXNpbmcgVkkgb3IgTkFOTyBpbiBh
IHRlcm1pbmFsIHdpdGggT1JDQS4gSXQgZG9lc27igJl0IHdvcmsgdmVyeSB3ZWxsLiBIb3dldmVy
LCB0aGUgb3RoZXJzIHdvcmsgdmVyeSB3ZWxsIHRoZXJlLCBidXQgbm90IHNvIHdlbGwgaW5zaWRl
IHRoZSBHVUkuIEl0IGFsbCBkZXBlbmRzIG9uIHdoYXQgeW91IG5lZWQgdG8gZG8uIEl04oCZcyBj
YWxsZWQgdXNpbmcgdGhlIHJpZ2h0IHRvb2wgZm9yIHRoZSByaWdodCBqb2IuCgotRXJpYwpGcm9t
IHRoZSBDZW50cmFsIE9mZmljZXMgb2YgdGhlIFRlY2hub21hZ2UgR3VpbGQsIFRvb2wgTWFpbnRl
bmFuY2UgRGVwdC4KCgo+IE9uIEF1ZyAxNiwgMjAyMiwgYXQgMTE6MjYgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+
IAo+IEFjdHVhbGx5LCBJJ2QgbGlrZSB0byBrbm93IHdoZXJlIHlvdSBnb3QgdGhlIGlkZWEgdGhh
dCBpdCdzIGp1c3QgYSBydW1vci4gSXQgaXMgbm90LiBJIHdhcyBwZXJzb25hbGx5IGludm9sdmVk
IGF0IHRoZSB0aW1lLCBhcmd1aW5nIHN0cmVudW91c2x5IGFnYWluc3QgdGhlIHBvbGljeS4gSSBj
YW4gZ2l2ZSB5b3UgbmFtZXMgb2YgcGVvcGxlIGF0IHRoZSBORkIgd2hvIGJhY2tlZCB0aGUgcG9s
aWN5IGlmIHlvdSdkIGxpa2UuCj4gCj4gVGhlIE5GQidzIHJlYXNvbmluZyB3YXMgdGhhdCBhIGZy
ZWUgc2NyZWVuIHJlYWRlciB3b3VsZCBub3QgYmUgYXMgZ29vZCBhcyBvbmUgeW91IGhhZCB0byBw
YXkgZm9yLiBUaGV5IHJlYXNvbmVkIHRoYXQgTWljcm9zb2Z0IGhhZCBsaXR0bGUgbW90aXZhdGlv
biB0byBrZWVwIG9uIGltcHJvdmluZyB0aGVpciBzY3JlZW4gcmVhZGVyIGJ1dCBpdCBtaWdodCBi
ZSBlbm91Z2ggdG8gZHJpdmUgRnJlZWRvbSBTY2llbnRpZmljIG91dCBvZiBidXNpbmVzcy4gQXMg
YSBMaW51eCB1c2VyLCBJIGZlbHQgdGhhdCByZWFzb25pbmcgd2FzIGZsYXdlZCBtYWlubHkgYmVj
YXVzZSBJIGZlbHQgZnJlZSwgb3BlbiBzb3VyY2UgIHNjcmVlbiByZWFkZXJzIHdlcmUgcmlnaHQg
YXJvdW5kIHRoZSBjb3JuZXIgYW55d2F5LiBJIGJlbGlldmUgSSB3YXMgdXNpbmcgU3BlYWt1cCBh
bmQgc29tZXRoaW5nIGNhbGxlZCBOdXBlcm5pY3VzIG9uIExpbnV4IGF0IHRoZSB0aW1lLgo+IAo+
IFRoaXMgaXMgYWJzb2x1dGVseSBub3QgYSBydW1vci4KPiAKPiAKPiBPbiA4LzE2LzIyIDEyOjMx
LCBLMExOWV9HbGVubiB3cm90ZToKPj4gVGhhdCBpcyBoZWFyLXNheSwgYW4gb2xkIHJ1bW9yIHRo
YXQgaGFzIGJlZW4gcmVjeWNsZWQgY291bnRsZXNzIHRpbWVzLgo+PiBHbGVubgo+PiAtLS0tLSBP
cmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4+IEZyb206ICJKb2huIEcuIEhlaW0iIDxqaGVpbUB3aXNj
LmVkdT4KPj4gVG86ICJLMExOWV9HbGVubiIgPGdsZW5uQGVydmluLmVtYWlsPjsgIkJ1dGNoIEJ1
c3NlbiIKPj4gPGJ1dGNoYkBzaGVsbHdvcmxkLm5ldD47ICJLYXJlbiBMZXdlbGxlbiIgPGtsZXdl
bGxlbkBzaGVsbHdvcmxkLm5ldD4KPj4gQ2M6IDxzcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnPjsg
Ik1pbGFuIFphbWF6YWwiIDxwZG1AemFtYXphbC5vcmc+Owo+PiA8QmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4KPj4gU2VudDogVHVlc2RheSwgQXVndXN0IDE2LCAyMDIyIDExOjQ5IEFNCj4+IFN1Ympl
Y3Q6IFJlOiAiQWNjZXNzaWJpbGl0eSBpbiBGZWRvcmEgV29ya3N0YXRpb24iIChmd2QpCj4+IAo+
PiAKPj4gSG9seSBjb3chIEFyZSB5b3UgYXdhcmUgdGhhdCB0aGUgTkZCIG9uY2UgYXNrZWQgTWlj
cm9zb2Z0IHRvICpOT1QqCj4+IGltcHJvdmUgTmFycmF0b3IgdG8gdGhlIHBvaW50IHdoZXJlIGl0
IHdvdWxkIGNvbXBldGUgd2l0aCBKYXdzPyBJZiB5b3UKPj4gdGhpbmsgdGhlIE5GQiBpcyBpbmNh
cGFibGUgb2YgZm9yY2luZyBjaG9pY2VzIG9uIHBlb3BsZSwgeW91IGFyZSB2ZXJ5Cj4+IHNhZGx5
IG1pc3Rha2VuLgo+PiAKPj4gCj4+IAo+PiBPbiA4LzE2LzIyIDA5OjM2LCBLMExOWV9HbGVubiB3
cm90ZToKPj4+IFRoaXMgc29ydCBvZiB0aGluZyB3b3VsZCBuZXZlciBoYXBwZW4gaW4gTmVicmFz
a2EsIG9yIGFueSBzdGF0ZSB3aGVyZSB0aGUKPj4+IGFnZW5jeSBzdGFmZiBpcyBvZiB0aGUgTkZC
IHBoaWxvc29waHkuCj4+PiBTYXkgd2hhdCB5b3Ugd2FudCBhYm91dCB0aGUgTkZCLCBubyBvcmdh
bml6YXRpb24gaXMgd2l0aG91dCBpdHMgcHJvYmxlbXMsCj4+PiBidXQgaXQgaXMgdGhlIGNvcmUg
cGhpbG9zb3BoeSB0aGF0IGZvcm1lZCB0aGUgTkZCIHRoYXQga25vd3MgdGhhdCBzb2NpZXR5Cj4+
PiBoYXMgbG93IGV4cGVjdGF0aW9ucyBvZiB0aGUgQmxpbmQsIGFuZCB0aGlzIGlzIHdoeSB0aGUg
TkZCIGJlbGlldmVzIGluCj4+PiBza2lsbHMgYW5kIGhpZ2ggZXhwZWN0YXRpb25zLgo+Pj4gQW5k
IHdpdGggdGhhdCwgY29tZXMgZ2l2aW5nIHJlc3BlY3QgdG8gdGhlIEJsaW5kLCBsaWtlIHRoZSBy
ZXNwZWN0IG9mCj4+PiBjaG9pY2UuCj4+PiBZZWFoIEkga25vdyBhYm91dCB0aGUgaW5mb3JtYXRp
b24gb2YgcmVjZW50IGFib3V0IE5GQiBhYnVzZSwgYnV0IHRoaXMgaXMKPj4+IG9yZ2FuaXphdGlv
bmFsIGlzc3VlcywgdW5yZWxhdGVkIHRvIHRoZSBwaGlsb3NvcGh5LiAgSW4gZmFjdCwgdGhlIGZh
Y3QKPj4+IHRoYXQKPj4+IGl0IGhhcyBjb21lIHVwIGRlbW9uc3RyYXRlcyB0aGF0IHRoZSBORkIg
aXMgbm8gZGlmZmVyZW50IHRoYW4gYW55IG90aGVyCj4+PiBvcmdhbml6YXRpb24gaW4gaW50ZXJw
ZXJzb25hbCBzdGFmZiBpc3N1ZXMuCj4+PiBBbmQgY2hvaWNlIGRvZXMgbm90IG1lYW4gdHJhaW5p
bmcgY2VudGVyIGNob2ljZXMuCj4+PiBDaG9pY2UgaXNuJ3QgYWx3YXlzIGFuIG9wdGlvbiwganVz
dCBsaWtlIGlmIHlvdSB0b29rIGEgdm9jYXRpb25hbCBjb3Vyc2UKPj4+IGluCj4+PiBjb2xsZWdl
LCB0aGVyZSBhcmUgdGhpbmdzIHlvdSBoYXZlIHRvIHRha2UsIHNvIHRvIG1lLCB0aGUgbGFjayBv
ZiBjaG9pY2UKPj4+IGluCj4+PiB0aGlzIHJlZ2FyZCBpcyBkaWZmZXJlbnQgdGhhbiBjb21wdXRl
ciBzb2Z0d2FyZSwgd2hlcmUgYWxsIHRoZSBjaG9pY2VzCj4+PiB3aWxsCj4+PiByZWFjaCB0aGUg
c2FtZSBlbmQgcmVzdWx0Lgo+Pj4gSW4gc3RhdGVzIHdoZXJlIHRoZSBORkIgcGhpbG9zb3BoeSBp
cyBlbWJyYWNlZCwgaWYgYSBjbGllbnQgc2FpZCBJIHdhbnQgdG8KPj4+IHVzZSBhIE1hYywgb3Ig
SSB3YW50IFdpbmRvdyBFeWVzLCB0aGVuIHRoYXQgaXMgd2hhdCB0aGV5IHdvdWxkIGdldCwgbm8K
Pj4+IHF1ZXN0aW9ucyBhc2tlZC4KPj4+IFRoZXkgd291bGQgbm90IGhhdmUgdG8gZmlnaHQgdG8g
Z2V0IGl0Lgo+Pj4gSSBzaW1wbHkgY2Fubm90IGltYWdpbmUgYSBjb3Vuc2Vsb3Igc2F5aW5nIHRo
YXQgc29tZW9uZSBoYXMgdG8gdXNlIHRoZQo+Pj4gc29mdHdhcmUgdGhhdCB0aGUgY291bnNlbG9y
IHdhbnRzIHRoZW0gdG8gaGF2ZS4KPj4+IFdoZW4gSSBoZWFyIHRoYXQgc3R1ZmYsIEkgYWxtb3N0
IGNhbm5vdCBiZWxpZXZlIGl0LCBidXQgSSBrbm93IEJ1dGNoIHdlbGwKPj4+IGVub3VnaCB0byBr
bm93IGhlIHdvdWxkbid0IG1ha2UgdGhhdCB1cC4KPj4+IAo+Pj4gR2xlbm4KPj4+IC0tLS0tIE9y
aWdpbmFsIE1lc3NhZ2UgLS0tLS0KPj4+IEZyb206ICJCdXRjaCBCdXNzZW4iIDxidXRjaGJAc2hl
bGx3b3JsZC5uZXQ+Cj4+PiBUbzogIkthcmVuIExld2VsbGVuIiA8a2xld2VsbGVuQHNoZWxsd29y
bGQubmV0Pgo+Pj4gQ2M6ICJLMExOWV9HbGVubiIgPGdsZW5uQGVydmluLmVtYWlsPjsgPHNwZWFr
dXBAbGludXgtc3BlYWt1cC5vcmc+OyAiTWlsYW4KPj4+IFphbWF6YWwiIDxwZG1AemFtYXphbC5v
cmc+OyA8QmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+IFNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAx
NiwgMjAyMiA4OjE4IEFNCj4+PiBTdWJqZWN0OiBSZTogIkFjY2Vzc2liaWxpdHkgaW4gRmVkb3Jh
IFdvcmtzdGF0aW9uIiAoZndkKQo+Pj4gCj4+PiAKPj4+IFlvdSBhcmUgcmlnaHQuICBJbiBOZXZh
ZGEsIGZyZWVkb20gcHVzaGVkIGphd3MgdG8gdGhlIHJlaGFiIHBlb3BsZSBhbmQKPj4+IHRvb2sg
dGhlbSBvdXQgZm9yIHN0ZWFrIGRpbmVycyBhbmQgc28gZm9ydGguICBJIGZvdWdodCBsaWtlIGhl
bGwgdG8gZ2V0Cj4+PiB0aGVtIHRvIGJ1eSB3aW5kb3ctZXllcy4KPj4+IDczCj4+PiBCdXRjaAo+
Pj4gV0EwVkpSCj4+PiBOb2RlIDMxNDgKPj4+IFdhbGxhY2UsIGtzLgo+Pj4gCj4+PiAKPj4+IE9u
IFN1biwgMTQgQXVnIDIwMjIsIEthcmVuIExld2VsbGVuIHdyb3RlOgo+Pj4gCj4+Pj4gQW5kIHdo
ZXJlIGRvIHRoZXNlIGVtcGxveWVycyBsZWFybiBhYm91dCBqYXdzPwo+Pj4+IEluIGZhY3QsIHBy
b3ZpZGUgaWYgeW91IGRvIG5vdCBtaW5kIGFuIGV4YW1wbGUgb2YgaG93ICB0aGlzIHdvcmtzCj4+
Pj4gZXhhY3RseS4KPj4+PiBhZnRlciBhbGwsIHVubGVzcyBJIGFtIGluY29ycmVjdCwgdGhlc2Ug
ZW1wbG95ZXJzIGFyZSBub3QgcGVyc29uYWwgSmF3cwo+Pj4+IHVzZXJzLCBtZWFuaW5nIHNvbWVv
bmUgdGhleSB0cnVzdCBjb250aW51ZXMgdG8gc2VsbCB0aGVtIG9uIGFuIGV4cGVuc2l2ZQo+Pj4+
IHByb2dyYW0gaW5zdGVhZCBvZiBhIGxhcmdlbHkgZnJlZSBvbmUuCj4+Pj4gCj4+Pj4gCj4+Pj4g
Cj4+Pj4gT24gU2F0LCAxMyBBdWcgMjAyMiwgSzBMTllfR2xlbm4gd3JvdGU6Cj4+Pj4gCj4+Pj4+
ICAgS2FyZW4sCj4+Pj4+ICAgTW9zdCBlbXBsb3llcnMgZG9uJ3Qgd2FudCBOVkRBLCBhbmQgd2ls
bCBvbmx5IGFsbG93IEphd3MuCj4+Pj4+ICAgSW4gTmVicmFza2EsIGlmIGFuIGVtcGxveWVyIHNh
aWQgcHV0IG9uIHdoYXRldmVyIHdvcmtzLCB0aGUgY291bnNlbG9ycwo+Pj4+PiAgIHdpbGwKPj4+
Pj4gICB1c2UgTlZEQSwgYmVjYXVzZSBvZiB0aGUgY29zdCBvZiBKYXdzLgo+Pj4+PiAgIElmIHNv
bWUgb2YgdGhlIGNsaWVudHMgaW4gYSBjYWxsIGNlbnRlciBhbHJlYWR5IHVzZSBKYXdzLCBidXQg
ZG9uJ3QKPj4+Pj4ga25vdwo+Pj4+PiAgIE5WREEsIHRoZSBjb3Vuc2Vsb3Igd2lsbCB1c2UgSmF3
cywgYmVjYXVzZSB0aGUgb3RoZXIgY2xpZW50cyB3aWxsIG5lZWQKPj4+Pj4gdG8KPj4+Pj4gICBs
ZWFybiBvbmUgb2YgdGhlIHR3by4KPj4+Pj4gICBTbyBpdCdzIGFsbCBjaG9pY2UsIGJ1dCBpbiB0
aGUgd29ya3BsYWNlLCBpdCBkZXBlbmRzIG9uIHdoYXQgdGhlCj4+Pj4+IGVtcGxveWVyCj4+Pj4+
ICAgd2lsbCBhbGxvdy4KPj4+Pj4gICBBbHNvLCBzb21ldGltZXMgc2NyaXB0cyBuZWVkIHRvIGJl
IG1hZGUsIGFuZCB0aGVyZSBhcmUgbW9yZSBKYXdzCj4+Pj4+IHNjcmlwdGVycwo+Pj4+PiAgIGF2
YWlsYWJsZSB0aGFuIHRoZXJlIGFyZSBOVkRBIGFkZC1vbiB3cml0ZXJzLgo+Pj4+PiAgIFNvIHRo
aXMgcGVyY2VwdGlvbiB0aGF0IEphd3MgaXMgZm9yY2VkIGJ5IHJlaGFiLCBmcm9tIG15IDMxIHll
YXJzIGluCj4+Pj4+IHRoZQo+Pj4+PiAgIGJ1c2luZXNzIEkgY2FuIHNheSBpcyBydWJiaXNoLgo+
Pj4+PiAgIE5vdywgaWYgYSBjb3Vuc2Vsb3IgZGlkIG5vdCBrbm93IGhvdyB0byB1c2UgTlZEQSwg
YW5kIGVpdGhlciBtYXkgYmUKPj4+Pj4gICBjaG9zZW4sCj4+Pj4+ICAgdGhlIHJlaGFiIGNvdW5z
ZWxvciBpcyBhYmxlIHRvIHNlbGVjdCB0aGUgb25lIHRoYXQgdGhlIGNvdW5zZWxvciBmZWVscwo+
Pj4+PiBpcwo+Pj4+PiAgIGJlc3QgZm9yIHRoZSBzdHVkZW50IGFuZCBmb3IgdGhlIGNvdW5zZWxv
cidzIHRlYWNoaW5nLgo+Pj4+PiAgIFdoZW4gaXQgY29tZXMgdG8gcGFydCBCIG1vbmV5cywgd2hp
Y2ggaXMgdXNlZCBmb3Igbm9uLXZvY2F0aW9uYWwKPj4+Pj4gICBwdXJjaGFzZXMsCj4+Pj4+ICAg
d2hlcmUgYSBsb3Qgb2YgSmF3cyBwdXJjaGFzZXMgY29tZSBmcm9tLCBpdCBpcyBpbiB0aGUgYWdl
bmN5J3MgYmVzdAo+Pj4+PiAgIGludGVyZXN0Cj4+Pj4+ICAgdG8gc3BlbmQgYXMgbGl0dGxlIGFz
IHBvc3NpYmxlLCBiZWNhdXNlIHRoYXQgZG9lc24ndCBjb21lIGJhY2sgbGlrZSBWUgo+Pj4+PiAg
IGV4cGVuZGl0dXJlcyBkby4KPj4+Pj4gICBHbGVubgo+Pj4+PiAKPj4+Pj4gICAtLS0tLSBPcmln
aW5hbCBNZXNzYWdlIC0tLS0tCj4+Pj4+ICAgRnJvbTogIkthcmVuIExld2VsbGVuIiA8a2xld2Vs
bGVuQHNoZWxsd29ybGQubmV0Pgo+Pj4+PiAgIFRvOiAiSzBMTllfR2xlbm4iIDxnbGVubkBlcnZp
bi5lbWFpbD4KPj4+Pj4gICBDYzogPHNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmc+OyAiTWlsYW4g
WmFtYXphbCIgPHBkbUB6YW1hemFsLm9yZz47Cj4+Pj4+ICAgPEJsaW51eC1saXN0QHJlZGhhdC5j
b20+Cj4+Pj4+ICAgU2VudDogU2F0dXJkYXksIEF1Z3VzdCAxMywgMjAyMiA2OjE1IFBNCj4+Pj4+
ICAgU3ViamVjdDogUmU6ICJBY2Nlc3NpYmlsaXR5IGluIEZlZG9yYSBXb3Jrc3RhdGlvbiIgKGZ3
ZCkKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiAgIFRoZSBjaGFsbGVuZ2Ugd2l0aCB0aGF0IGV4YW1wbGUg
aXMgdGhhdCwgYXMgb25lIG9mdGVuIGdldHMgcmVtaW5kZWQsCj4+Pj4+IHRoZQo+Pj4+PiAgIHJl
aGFiIHN5c3RlbXMgdHJhY2sgcmVjb3JkIGZvciBmYWNpbGl0YXRpbmcgIGVtcGxveW1lbnQgZm9y
IHRoZWlyCj4+Pj4+IGNsaWVudHMKPj4+Pj4gICBpcyBxdWl0ZSBwb29yLgo+Pj4+PiAgIFdpdGgg
YSBoaWdoIHBlcmNlbnRhZ2Ugb2YgdW5lbXBsb3ltZW50IGFtb25nIG91ciBjbGllbnRzLiAgTWFr
aW5nLAo+Pj4+PiAgIHNwZWFraW5nIHBlcnNvbmFsbHksIHlvdXIgYnV5aW5nIEphd3MgZm9yIHBl
cnNvbmFsIHVzZSBub3QgcmVhbGx5Cj4+Pj4+ICAgcmVmbGVjdGluZyBob3cgdGhlIHN5c3RlbSB3
b3VsZCByZXNwb25kIHRvIGFuIGFsdGVybmF0aXZlIHJlcXVlc3QuCj4+Pj4+ICAgTm93IGlmIHNv
bWVvbmUgZnJvbSBvcmdhbml6ZWQgcmVoYWIgc2FpZCwgb2theSBmcmVlZG9tIHNjaWVudGlmaWMs
IHdlCj4+Pj4+IGFyZQo+Pj4+PiAgIGNyZWF0aW5nIGFuIGVtcGxveW1lbnQgcHJvZ3JhbSB3aGVy
ZSBvdXIgY2xpZW50cyB3aWxsIHRyYWluIGluIExpbnV4LAo+Pj4+PiAgIG5lZWRpbmcgYSBzb2xp
ZCBzY3JlZW4gcmVhZGVyIHNvbHV0aW9uIGZvciB0aGUgc3lzdGVtLiAgV2Ugd2lsbCBnaXZlCj4+
Pj4+IHlvdQo+Pj4+PiAgIGFuCj4+Pj4+ICAgZXhjbHVzaXZlIGRldmVsb3BtZW50IGNvbnRyYWN0
IGZvciBzIG1pbGxpb25zIHRvIGNyZWF0ZSB0aGUgdG9vbC4KPj4+Pj4gICBGcyB3b3VsZCBsaWtl
bHkgc2F5IHdoZXJlIGRvIHdlIHNpZ24/Cj4+Pj4+IAo+Pj4+PiAKPj4+Pj4gCj4+Pj4+ICAgT24g
U2F0LCAxMyBBdWcgMjAyMiwgSzBMTllfR2xlbm4gd3JvdGU6Cj4+Pj4+IAo+Pj4+Pj4gICBUcnVl
IGVub3VnaCwgYnV0IGxhcmdlbHksIHJlaGFiIHBlb3BsZSB0eXBpY2FsbHkgdXNlIFdpbmRvd3Mg
YXQgd29yaywKPj4+Pj4+ICAgYW5kCj4+Pj4+PiAgIHByb2JhYmx5IGF0IGhvbWUsIGJ1dCB0aGV5
IG5lZWQgdG8gY2F0ZXIgdG8gdGhlIG5lZWRzIG9mIHRoZSBjbGllbnQuCj4+Pj4+PiAgIElmIGEg
Y2xpZW50IHVzZWQgTGludXgsIEkgZG91YnQgdGhhdCBhbnkgcmVoYWIgY291bnNlbG9yIHdvdWxk
Cj4+Pj4+PiBhZHZvY2F0ZQo+Pj4+Pj4gICB0aGF0Cj4+Pj4+PiAgIHRoZSBjbGllbnQgc3dpdGNo
IHRvIFdpbmRvd3MsIHVubGVzcyB0aGF0IHdhcyBuZWVkZWQgZm9yIGEgc3BlY2lmaWMKPj4+Pj4+
IGpvYi4KPj4+Pj4+ICAgSW4gTmVicmFza2EsIHdlIHB1cmNoYXNlZCBKYXdzIG11Y2ggbW9yZSBm
b3IgcGVyc29uYWwgdXNlIHRoYW4gd2UgZGlkCj4+Pj4+PiAgIGZvcgo+Pj4+Pj4gICB3b3JrIHJl
bGF0ZWQgc2l0dWF0aW9ucy4KPj4+Pj4+ICAgU28gaWYgRlMgbWFkZSBhIEpGTCwgYW5kIHBlb3Bs
ZSB3ZXJlIHVzaW5nIExpbnV4LCByZWhhYiB3b3VsZCBpbmRlZWQKPj4+Pj4+ICAgcHVyY2hhc2Ug
YSBKRkwgcHJvZHVjdC4KPj4+Pj4+ICAgR2xlbm4KPj4+Pj4+ICAgLS0tLS0gT3JpZ2luYWwgTWVz
c2FnZSAtLS0tLQo+Pj4+Pj4gICBGcm9tOiAiS2FyZW4gTGV3ZWxsZW4iIDxrbGV3ZWxsZW5Ac2hl
bGx3b3JsZC5uZXQ+Cj4+Pj4+PiAgIFRvOiAiSzBMTllfR2xlbm4iIDxnbGVubkBlcnZpbi5lbWFp
bD4KPj4+Pj4+ICAgQ2M6IDxzcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnPjsgIk1pbGFuIFphbWF6
YWwiIDxwZG1AemFtYXphbC5vcmc+Owo+Pj4+Pj4gICA8QmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4K
Pj4+Pj4+ICAgU2VudDogU2F0dXJkYXksIEF1Z3VzdCAxMywgMjAyMiAzOjAxIFBNCj4+Pj4+PiAg
IFN1YmplY3Q6IFJlOiAiQWNjZXNzaWJpbGl0eSBpbiBGZWRvcmEgV29ya3N0YXRpb24iIChmd2Qp
Cj4+Pj4+PiAKPj4+Pj4+IAo+Pj4+Pj4gICB0aGVyZSB3YXMgYW4gaW50ZXJlc3RpbmcgZGlzY3Vz
c2lvbiBhIG1vbnRoIG9yIHNvIGJhY2sgb24gdGhlIGJsaW51eAo+Pj4+Pj4gICBsaXN0Cj4+Pj4+
PiAgIGFib3V0IGhvdyBsb25nIGl0IHRvb2sgY29tcGxldGluZyB0YXNrcyBpbiB0aGUgZ3VpIGFz
IGFwcG9zZWQgdG8gc2F5Cj4+Pj4+PiAgIGNvbW1hbmQgbGluZSwgIHRoZSBjb21tZW50cyB3ZXJl
IHF1aXRlIGluZm9ybWF0aXZlLgo+Pj4+Pj4gICBTdGlsbCwgZnMgaGFzIG5ldmVyIG1hcmtldGVk
IGxhcmdlbHkgdG8gdGhlIGVuZCB1c2VyLiBJbnN0ZWFkIHRoZXkKPj4+Pj4+ICAgbWFya2V0Cj4+
Pj4+PiAgIHRvIHRoZSBBbWVyaWNhbiByZWhhYiBjb21tdW5pdHkuCj4+Pj4+PiAgIGhvdyBtdWNo
IG1hcmtldCByZXNlYXJjaCBoYXMgIHRoZSByZWhhYiBjb21tdW5pdHkgZG9uZSB0byBzdXBwb3J0
IHRoZQo+Pj4+Pj4gICBuZWVkCj4+Pj4+PiAgIGZvciBjaG9pY2VzPwo+Pj4+Pj4gICBIb3cgbWFu
eSByZWhhYiBjb3Vuc2Vsb3JzIHN1cHBvcnQgIHRyYWluaW5nIGluIExpbnV4Pwo+Pj4+Pj4gICBv
bmUgY29tbWVudCBtYWRlIGJ5IHRoZSBzdWJqZWN0IG9mIHRoaXMgdGhyZWFkIGFib3V0IHBvb3Ig
cXVhbGl0eQo+Pj4+Pj4gc3BlZWNoCj4+Pj4+PiAgIGlzIGEgZmluZSBvbmUuLi5vdXQgb2YgdGhl
IGJveCBMaW51eCBoYXMgZmV3IHNwZWVjaCBjaG9pY2VzLgo+Pj4+Pj4gZXZlcnlvbmUKPj4+Pj4+
ICAgYnJpbmdzIHRoZWlyIG5lZWRzIHRvIHRoZSB0YWJsZSB0aGVyZS4KPj4+Pj4+IAo+Pj4+Pj4g
ICBpZiB5b3Ugd2FudCB0byBnZXQgZnMgdG8gY2FyZSBhYm91dCBMaW51eCwgeW91ICBuZWVkIHRv
IHByb3ZlIHRoZXJlCj4+Pj4+PiBpcwo+Pj4+Pj4gICBtb25leSBmb3IgIHRoZW0gdGhlcmUsIGZy
b20gdGhlaXIgbWFpbiBzb3VyY2Ugb2YgaW5jb21lLgo+Pj4+Pj4gCj4+Pj4+PiAKPj4+Pj4+IAo+
Pj4+Pj4gICBPbiBTYXQsIDEzIEF1ZyAyMDIyLCBLMExOWV9HbGVubiB3cm90ZToKPj4+Pj4+IAo+
Pj4+Pj4+ICAgV2VsbCBzaW5jZSBPcmNhIHNlZW1zIHRvIHdvcmsgb24gc28gbWFueSBkaXN0cm9z
LCBJIGRvbid0IGtub3cgd2h5Cj4+Pj4+Pj4gRlMKPj4+Pj4+PiAgIHdvdWxkCj4+Pj4+Pj4gICBu
b3QgYmUgYWJsZSB0byBkbyB0aGUgc2FtZS4KPj4+Pj4+PiAgIElmIEphd3MgdXNlcnMgY291bGQg
c3dpdGNoIGludG8gTGludXgsIGl0IHdvdWxkIGJlIGEgcmVhbCBnYW1lCj4+Pj4+Pj4gICBjaGFu
Z2VyLAo+Pj4+Pj4+ICAgYW5kCj4+Pj4+Pj4gICBJIHRoaW5rIHdpdGggbG90cyBtb3JlIEJsaW5k
IExpbnV4IHVzZXJzLCB3ZSB3b3VsZCBzdGFydCBzZWVpbmcKPj4+Pj4+PiAgIGFjY2Vzc2liaWxp
dHkgaW4gTGludXggbm90IGJlaW5nIGEgc2Vjb25kIHRob3VnaHQuCj4+Pj4+Pj4gICBHbGVubgo+
Pj4+Pj4+ICAgLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+Pj4+Pj4+ICAgRnJvbTogIkth
cmVuIExld2VsbGVuIiA8a2xld2VsbGVuQHNoZWxsd29ybGQubmV0Pgo+Pj4+Pj4+ICAgVG86ICJL
MExOWV9HbGVubiIgPGdsZW5uQGVydmluLmVtYWlsPgo+Pj4+Pj4+ICAgQ2M6IDxzcGVha3VwQGxp
bnV4LXNwZWFrdXAub3JnPjsgIk1pbGFuIFphbWF6YWwiIDxwZG1AemFtYXphbC5vcmc+Owo+Pj4+
Pj4+ICAgPEJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+Pj4+Pj4gICBTZW50OiBTYXR1cmRheSwg
QXVndXN0IDEzLCAyMDIyIDE6NDcgUE0KPj4+Pj4+PiAgIFN1YmplY3Q6IFJlOiAiQWNjZXNzaWJp
bGl0eSBpbiBGZWRvcmEgV29ya3N0YXRpb24iIChmd2QpCj4+Pj4+Pj4gCj4+Pj4+Pj4gCj4+Pj4+
Pj4gICBXZWxsIHRlY2huaWNhbGx5IGZyZWVkb20gc2NpZW50aWZpYyBkb2VzIG5vdCBleGlzdCBh
bnkgbG9uZ2VyLCBiZWluZwo+Pj4+Pj4+ICAgYm91Z2h0Cj4+Pj4+Pj4gICBieSBhbm90aGVyIGNv
bXBhbnkuCj4+Pj4+Pj4gICBTdGlsbCwgSSBjYW4gcmVzcGVjdCB3aHkgdGhleSwgb3IgbnZkYSBo
YXZlIG5vdCBjcmVhdGVkIHRoZWlyIHRvb2xzCj4+Pj4+Pj4gICBmb3IKPj4+Pj4+PiAgIExpbnV4
Lgo+Pj4+Pj4+ICAgVGhhdCBpcyBiZWNhdXNlIGFzIEkgdW5kZXJzdGFuZCBpdCwgTGludXggaXMg
IHF1aXRlIGxpa2UgY2xheS4gWW91Cj4+Pj4+Pj4gY2FuCj4+Pj4+Pj4gICBtb2xkIGEgZGlzdHJp
YnV0aW9uIGludG8gYWxtb3N0IGFueXRoaW5nLiB0aGVyZSBhcmUgdmFyaW91cwo+Pj4+Pj4+ICAg
cGVyc29uaWZpY2F0aW9ucyBvZiB0aGUgc3lzdGVtLCBhbGwgc29ydHMgb2Ygd2F5cyBhbmQgY2hh
bmdlcyBhbmQKPj4+Pj4+PiAgIG9wdGlvbnMKPj4+Pj4+PiAgIGZvciBjcmVhdGl2aXR5Lgo+Pj4+
Pj4+ICAgaG93ZXZlciBhZGFwdGl2ZSB0b29scyBhcmUgb2Z0ZW4gZXh0ZW5zaW9ucyBvZiBwaHlz
aWNhbAo+Pj4+Pj4+ICAgY2hhcmFjdGVyaXN0aWNzLAo+Pj4+Pj4+ICAgaGFuZHMsIGV5ZXMsIGVh
cnMsIGJyYWlucywgY29tYmluYXRpb25zIG9mIHRoZXNlLgo+Pj4+Pj4+ICAgVG8gYnVpbGQgc29s
aWQgYXNzaXN0aXZlIHRvb2xzIG9uZSBtdXN0IGhhdmUgYSBzb2xpZCAgZm91bmRhdGlvbiBhcwo+
Pj4+Pj4+IGl0Cj4+Pj4+Pj4gICB3ZXJlLiAgdGhhdCBpcyBwYXJ0IG9mIHdoeSB0aGVyZSBoYXZl
IG5lZWRlZCB0byBiZSBzbyBmZXcgQXBwbGUKPj4+Pj4+PiAgIGVmZm9ydHMKPj4+Pj4+PiAgIGF0
Cj4+Pj4+Pj4gICBpbmNsdXNpb24sIHRoZXkgIGNyZWF0ZWQgIHdpdGgsIGFuZCB0aGVuIGNyZWF0
ZWQgaW4taG91c2UgYWRhcHRpdmUKPj4+Pj4+PiAgIHRvb2xzCj4+Pj4+Pj4gICBmb3IgdmFyaW91
cyAgcG9wdWxhdGlvbnMgdGhhdCB3ZXJlIGJ1aWx0IGludG8gdGhlIHN5c3RlbS4KPj4+Pj4+PiAg
IEFsdGhvdWdoIE1pY3Jvc29mdCBkaWQgbm90IGJvdGhlciB1bnRpbCBtdWNoIGxhdGVyLCBpbiB0
aGVvcnkgYXQKPj4+Pj4+PiAgIGxlYXN0LAo+Pj4+Pj4+ICAgdGhlCj4+Pj4+Pj4gICBjb25zaXN0
ZW5jeSBvZiB3aW5kb3dzIGlzIHdoYXQgbWFrZXMgaXQgcG9zc2libGUgZm9yIGZyZWVkb20gb3Ig
dGhlCj4+Pj4+Pj4gICBmb3JtZXIKPj4+Pj4+PiAgIGd3ICBtaWNybyBvciBudmRhIHRvIGNyZWF0
ZSBzb21ldGhpbmcgdGhhdCBjYW4gaW4gdGhlb3J5ICB3b3JrLgo+Pj4+Pj4+ICAgRmxvb3IgZm9y
IHRoZSBmdXJuaXR1cmUgaXMgc29tZXdoYXQgc29saWQuCj4+Pj4+Pj4gICBKdXN0IG15IHRob3Vn
aHRzLAo+Pj4+Pj4+IAo+Pj4+Pj4+IAo+Pj4+Pj4+IAo+Pj4+Pj4+ICAgT24gU2F0LCAxMyBBdWcg
MjAyMiwgSzBMTllfR2xlbm4gd3JvdGU6Cj4+Pj4+Pj4gCj4+Pj4+Pj4+ICAgSSB3b3VsZCBsaWtl
IHRvIHNlZSBGcmVlZG9tIFNjaWVudGlmaWMgbWFrZSBhIEphd3MgRm9yIExpbnV4Lgo+Pj4+Pj4+
PiAgIEpGTAo+Pj4+Pj4+PiAgIEknZCBjZXJ0YWlubHkgcGF5IHRoZSB5ZWFybHkgcmVudGFsIGZl
ZSBmb3IgaXQsIGFuZCBpdCB3b3VsZCBicmluZwo+Pj4+Pj4+PiAgIG1hbnkKPj4+Pj4+Pj4gICBt
b3JlCj4+Pj4+Pj4+ICAgdXNlcnMgaW50byBMaW51eC4KPj4+Pj4+Pj4gICBGUyBjb3VsZCwgd2l0
aCBpdHMgcmVzb3VyY2VzLCBwb3NzaWJseSBtYWtlIGl0IG1vcmUgcm9idXN0IHRoYW4KPj4+Pj4+
Pj4gICBPcmNhLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gICBHbGVubgo+Pj4+Pj4+PiAgIC0tLS0tIE9y
aWdpbmFsIE1lc3NhZ2UgLS0tLS0KPj4+Pj4+Pj4gICBGcm9tOiAiTWlsYW4gWmFtYXphbCIgPHBk
bUB6YW1hemFsLm9yZz4KPj4+Pj4+Pj4gICBUbzogPHNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmc+
Cj4+Pj4+Pj4+ICAgQ2M6IDxCbGludXgtbGlzdEByZWRoYXQuY29tPgo+Pj4+Pj4+PiAgIFNlbnQ6
IFNhdHVyZGF5LCBBdWd1c3QgMTMsIDIwMjIgMTI6MDggUE0KPj4+Pj4+Pj4gICBTdWJqZWN0OiBS
ZTogIkFjY2Vzc2liaWxpdHkgaW4gRmVkb3JhIFdvcmtzdGF0aW9uIiAoZndkKQo+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+Pj4gICAiS0wiID09IEthcmVuIExld2VsbGVuIDxrbGV3ZWxs
ZW5Ac2hlbGx3b3JsZC5uZXQ+Cj4+Pj4+Pj4+Pj4+Pj4gd3JpdGVzOgo+Pj4+Pj4+PiBLTD4gIFdo
YXQgYm90aGVycyBtZSBtb3N0IGFyZSBoaXMgbGFjayBvZiBhY3R1YWwgcXVhbGlmaWNhdGlvbnMs
Cj4+Pj4+Pj4+IGFuZAo+Pj4+Pj4+PiBLTD4gIGFic29sdXRlIGRpc21pc3NhbCBvZiB3aGF0IGhl
IGhhcyBub3QgZXhwZXJpZW5jZWQuLmFzIGlmIGhlCj4+Pj4+Pj4+IEtMPiAgZGVmaW5lcyBMaW51
eCB1c2FnZSBmb3IgZXZlcnlvbmUuICBUaGF0IGF0dGl0dWRlIGlzIGRhbmdlcm91cywKPj4+Pj4+
Pj4gS0w+ICBiZWNhdXNlIGhlIGlzIGVkdWNhdGluZyB0aG9zZSBvdXRzaWRlIG9mIHRoZSBhY2Nl
c3NpYmlsaXR5Cj4+Pj4+Pj4+IEtMPiAgZXhwZXJpZW5jZXMsIHdobyB3aWxsIGJlbGlldmUgaGlz
IGlnbm9yYW5jZSBpcyBmYWN0dWFsLiAgaGUKPj4+Pj4+Pj4gaGFzCj4+Pj4+Pj4+IEtMPiAgdG8g
YmUgZXhwZXJ0LCBpdCBpcyBoaXMgam9iLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gICBIaSBLYXJlbiwK
Pj4+Pj4+Pj4gCj4+Pj4+Pj4+ICAgSSBrbm93IEx1a2FzIHBlcnNvbmFsbHkgYW5kIEkgYWRtaXJl
IGhpcyBza2lsbHMgYW5kCj4+Pj4+Pj4+IHF1YWxpZmljYXRpb25zLgo+Pj4+Pj4+PiAgIEkKPj4+
Pj4+Pj4gICBhbHNvIGtub3cgZmlyc3QgaGFuZCB0aGF0IGhlIGlzIG9wZW4gdG8gY29uc3RydWN0
aXZlIGZlZWRiYWNrIGFuZAo+Pj4+Pj4+PiBJCj4+Pj4+Pj4+ICAgYmVsaWV2ZSBoZcOiP1RkIGJl
IGhhcHB5IHRvIGJlIGNvcnJlY3RlZCBhYm91dCBwb3NzaWJsZSB0ZWNobmljYWwKPj4+Pj4+Pj4g
ICBpbmFjY3VyYWNpZXMgaW4gdGhlIGludGVydmlldy4gIEl0IG1heSBiZSBhbHNvIGEgZ29vZCBv
cHBvcnR1bml0eQo+Pj4+Pj4+PiB0bwo+Pj4+Pj4+PiAgIGZpbmQgb3V0IHdoYXTDoj9UcyBwb3Nz
aWJseSBtaXNzaW5nIGluIG1ha2luZyBhbnlib2R5IGJldHRlcgo+Pj4+Pj4+PiAgIGluZm9ybWVk
Lgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gICBBcyBmb3Igw6I/b2Fic29sdXRlIGRpc21pc3NhbCBvZiB3
aGF0IGhlIGhhcyBub3QgZXhwZXJpZW5jZWTDoj/CnSwKPj4+Pj4+Pj4gd2hhdAo+Pj4+Pj4+PiAg
IHJlYXNvbmFibGUgZnJlZSBzb2Z0d2FyZSBhbHRlcm5hdGl2ZXMgdG8gYSBsZXNzIG9yIG1vcmUg
c3RhbmRhcmQKPj4+Pj4+Pj4gICBkZXNrdG9wCj4+Pj4+Pj4+ICAgd2l0aCBPcmNhIGFuZCBhIHNv
ZnR3YXJlIHN5bnRoZXNpemVyIGNhbiB5b3Ugc2VlIGZvciBhIGNvbW1vbgo+Pj4+Pj4+PiBibGlu
ZAo+Pj4+Pj4+PiAgIHVzZXIKPj4+Pj4+Pj4gICB3aG8gbmVlZHMgdG8gdXNlIGEgZnVsbHkgd29y
a2luZyB3ZWIgYnJvd3NlciwgdG8gcmVhZCBhbmQgcHJvY2Vzcwo+Pj4+Pj4+PiAgIHRleHQKPj4+
Pj4+Pj4gICBkb2N1bWVudHMsIHRvIGJlIGNvbXBhdGlibGUgd2l0aCBvdGhlciBjb21wdXRlciB1
c2VycywgZXRjLj8KPj4+Pj4+Pj4gCj4+Pj4+Pj4+ICAgQW5kIGxldMOiP1RzIGJlIHJlYWxpc3Rp
Yy4gIFdlIGNlbGVicmF0ZSBldmVyeSBzaW5nbGUgZGV2ZWxvcGVyCj4+Pj4+Pj4+IGhpcmVkCj4+
Pj4+Pj4+ICAgdG8KPj4+Pj4+Pj4gICBpbXByb3ZlIGFjY2Vzc2liaWxpdHkuICBUaGlzIHRlbGxz
IHNvbWV0aGluZyBhYm91dCB0aGUgc3RhdGUgb2YKPj4+Pj4+Pj4gdGhlCj4+Pj4+Pj4+ICAgbWF0
dGVycy4gIFdlIGNhbm5vdCBleHBlY3QgdGhhdCBhIHNpbmdsZSBwZXJzb24gd2lsbCBmaXggYWxs
IHRoZQo+Pj4+Pj4+PiAgIGtpbmRzCj4+Pj4+Pj4+ICAgb2YgYWNjZXNzaWJpbGl0eSBwcm9ibGVt
cyBpbiBhbGwgdGhlIGVudmlyb25tZW50cy4gIEx1a2FzIHdvcmtzIGF0Cj4+Pj4+Pj4+ICAgaGlz
Cj4+Pj4+Pj4+ICAgam9iIGZvY3VzaW5nIG9uIGNlcnRhaW4gYXJlYXMgY3VycmVudGx5IHNlZW4g
dGhlcmUgYXMgdXJnZW50IG9uZXMKPj4+Pj4+Pj4gICBhbmQgSQo+Pj4+Pj4+PiAgIGFwcHJlY2lh
dGUgdGhpcyBvcHBvcnR1bml0eS4gIEFueWJvZHkgZWxzZSBzZWVpbmcgYSBuZWVkIHRvIHdvcmsK
Pj4+Pj4+Pj4gb24KPj4+Pj4+Pj4gICBvdGhlciBhcmVhcyBpcyB3ZWxjb21lIHRvIGNvbnRyaWJ1
dGUgdG8gd2hhdGV2ZXIgc2VlcyBmaXQsIGFzIEkKPj4+Pj4+Pj4gZG8uCj4+Pj4+Pj4+IAo+Pj4+
Pj4+PiAgIFJlZ2FyZHMsCj4+Pj4+Pj4+ICAgTWlsYW4KPj4+Pj4+Pj4gCj4+Pj4+Pj4+IAo+Pj4+
Pj4+PiAKPj4+Pj4+Pj4gCj4+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

