Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CDEE038D421
	for <lists+blinux-list@lfdr.de>; Sat, 22 May 2021 09:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621667788;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tBCNFEoJZPxsQQpsmYtzVSuFN82xVyC1Mo6+hh3By1I=;
	b=DjffYFra4CY1PbsqpzMKwgshcqCXJiX9y+rmTCyviFHHW1AO1qrvewC49dF8BezcTJchbG
	CpGSjY7TM0WDYeFGSV9wfthtJMp2PK84gojS8XpJYfqSvaVKu8sowXM9RwIG7N82p/PnE8
	2HmjLt8XOzA1Y4Xp3nbPiW+EADbk8o0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-BEsxfmmePiipPqHvUBvjgg-1; Sat, 22 May 2021 03:16:26 -0400
X-MC-Unique: BEsxfmmePiipPqHvUBvjgg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE3B980293F;
	Sat, 22 May 2021 07:16:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12DC860D4B;
	Sat, 22 May 2021 07:16:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32D5C1801028;
	Sat, 22 May 2021 07:16:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14M7FsPC003521 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 May 2021 03:15:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 296662135291; Sat, 22 May 2021 07:15:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25003213528E
	for <blinux-list@redhat.com>; Sat, 22 May 2021 07:15:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B2B4B80D0E0
	for <blinux-list@redhat.com>; Sat, 22 May 2021 07:15:51 +0000 (UTC)
Received: from smtprelay03.ispgateway.de (smtprelay03.ispgateway.de
	[80.67.18.15]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-432-tPtH77hBOXWRZFP2V8quPQ-1; Sat, 22 May 2021 03:15:49 -0400
X-MC-Unique: tPtH77hBOXWRZFP2V8quPQ-1
Received: from [80.187.104.16] (helo=[10.149.252.16])
	by smtprelay03.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lkLre-0000kH-LX
	for blinux-list@redhat.com; Sat, 22 May 2021 09:16:02 +0200
Mime-Version: 1.0 (1.0)
Subject: Re: A question about Fenrir on Arch linux
Date: Sat, 22 May 2021 09:15:46 +0200
Message-Id: <F29E6A18-19B8-4EDC-87F4-234C18D8952F@linux-a11y.org>
References: <093e01d74e9e$05841320$108c3960$@gmail.com>
In-Reply-To: <093e01d74e9e$05841320$108c3960$@gmail.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14M7FsPC003521
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpDb25maWd1cmUgc3BlZWNoLWRpc3BhdGNoZXIgaXMgbm90IG5lZWRlZC4gQnkgZGVm
YXVsdCBmZW5yaXIgdXNlcyB0aGUgZ2VuZXJpYyBzcGVlY2ggZHJpdmVyLiBUaGlzIGRvZXMgIGdl
bmVyYXRlIHNwZWVjaCBieSBzdXByb2Nlc3NpbmcuIFNvIGJhc2ljYWxseSBzYW1lIGxpa2UgY2Fs
bGluZyBlc3BlYWstbmcgaW4gc2hlbGwuCgpJIGRvbnQgc3RheSBhdCBob21lIGN1cnJlbnRseSBh
cyBpIGhlbHAgYSBmcmllbmQgdG8ga25vY2sgZG93biBhIHdhbGwgaW4gaGlzIGhvdXNlICh0aGF0
cyBmdW4pLgoKQ2FuIHlvdSBzZW5kIG1lIGEgZGVidWcgZmlsZSBvZiBmZW5yaXJzIGluaXRpYWxp
c2F0aW9uIHByb2dyZXNzIHRvIGFuYWx5emUgeW91ciBpc3N1ZT8KCnN1ZG8gZmVucmlyIC1kCgpU
aGVuIHByZXNzIApDdHJsICsgYyAKCllvdSBmaW5kIGEgZmlsZSAvdG1wL2ZlbnJpcjxQSUQ+Xzx0
aW1lc3RhbXA+LmxvZwogCldoZXJlIFBJRCBpcyByZXBsYWNlZCBieSBwcm9jZXNzIElEIGFuZCB0
aW1lc3RhbXAgd2l0IGN1cnJlbnQgZGF0ZS4gL3RpbWUKClN0aWxsIGxvb2tpbmcgZm9yd2FydCB0
byBtZWV0IHlvdSBpbiBJUkMgOkQKCkNoZWVycyBjaHJ5cwoKVm9uIG1laW5lbSBpUGhvbmUgZ2Vz
ZW5kZXQKCj4gQW0gMjIuMDUuMjAyMSB1bSAwMjowNCBzY2hyaWViIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IO+7v0hpIGRp
ZCB5b3UgdGVsbCBzcGVlY2gtZGlzcGF0Y2hlciB0byB1c2UgZXNwZWFrLW5nPy4gIFlvdSBjYW4g
Y2hhbmdlIHRoaXMgaW4gZXRjL3NwZWVjaC1kaXNwYXRjaGVyL3NwZWVjaGRkY2NmLiBTcGVlY2hk
ZGNjZiBIVEguCj4gCj4gTWF0dGhldwo+IAo+IAo+IAo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4gRnJvbTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1i
b3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uCj4gU2VudDogRnJpZGF5LCBNYXkgMjEsIDIwMjEgNzozOSBBTQo+IFRvOiBibGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gU3ViamVjdDogUmU6IEEgcXVlc3Rpb24gYWJvdXQgRmVucmly
IG9uIEFyY2ggbGludXgKPiAKPiBIZWxsbyB0aGVyZSwKPiAKPiAKPiByZW1vdmluZyBlc3BlYWsg
ZG9lc24ndCBmaXggaXQsIHRoZSBzYW1lIHByb2JsZW0gc3RpbGwgcGVyc2lzdHMuCj4gCj4gQmVz
dCByZWdhcmRzLgo+IAo+IEZyYW5jaXNjby4KPiAKPiAKPj4gT24gNS8yMS8yMSAxMjozNiBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSG93ZHkKPj4gCj4+
PiBJIGhhdmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxsZWQsIHBsdXMgcHVsc2VhdWRp
bywgCj4+PiBwdWxzZWF1ZGlvLWFsc2EsIGFsc2EtdXRpbHMgYW5kIHBsdWdpbnMuIAo+PiBlc3Bl
YWstbmcgaXMgdXNlZCBieSBkZWZhdWx0IGluc3RlYWQgb2YgZXNwZWFrLiBlc3BlYWstbmcgaXMg
dGhlIAo+PiBzdWNjZXNzb3Igb2YgZXNwZWFrLiBkbyB0YWtlIGNhcmUgdG8gbm90IGluc3RhbGwg
ZXNwZWFrIGJ1dCBlc3BlYWstbmcgCj4+IGFuZCBnaXZlIGFub3RoZXIgc2hvdCA6KS4KPj4gCj4+
IAo+Pj4gQW0gMjEuMDUuMjEgdW0gMTE6NDcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uOgo+Pj4gSGVsbG8gdGhlcmUsCj4+PiAKPj4+IAo+Pj4gSnVzdCBmb3IgdGhl
IGhlY2sgb2YgaXQsIEkgcmVkaWQgYSBjbGVhbiBpbnN0YWxsIG9mIGFyY2ggd2l0aCAKPj4+IHB1
bHNlYXVkaW8gdGhpcyB0aW1lLCBhbmQgSSBjb25maWd1cmVkIGV2ZXJ5dGhpbmcgSSBuZWVkZWQg
cnVubmluZyAKPj4+IHRoZSBzaCBzY3JpcHQgeW91IGluZGljYXRlZC4KPj4+IAo+Pj4gSXQgaGFs
ZiB3b3JrcywgYW5kIGhhbGYgZG9lc24ndC4KPj4+IAo+Pj4gV2hhdCBJIG1lYW4gYnkgdGhhdCBp
cyB0aGF0IHdoZW4gSSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUsIGp1c3QgYSBmZXcgCj4+PiBzZWNv
bmRzIGFnbyBhbmQgcmFuIGZlbnJpciBhcyBzdWRvZXIsIGl0IHBsYXllZCB0aGUgc291bmQgaWNv
biwgdGhpbmcgCj4+PiB0aGF0IHdpdGggcGlwZXdpcmUgZGlkbid0IGhhcHBlbiwgYnV0IGdhdmUg
bWUgbm8gc3BlZWNoIGF0IGFsbC4KPj4+IAo+Pj4gSSBoYXZlIGVzcGVhaywgc294LCBhbmQgeGNs
aXAgaW5zdGFsbGVkLCBwbHVzIHB1bHNlYXVkaW8sIAo+Pj4gcHVsc2VhdWRpby1hbHNhLCBhbHNh
LXV0aWxzIGFuZCBwbHVnaW5zLgo+Pj4gCj4+PiBBbnkgc3VnZ2VzdGlvbnM/Cj4+PiAKPj4+IFRo
YW5rcyBhZ2Fpbi4KPj4+IAo+Pj4gQmVzdCByZWdhcmRzLgo+Pj4gCj4+PiBGcmFuY2lzY28uCj4+
PiAKPj4+IE9uIDUvMTgvMjEgNTowNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4+PiBIb3dkeSwKPj4+PiAKPj4+PiBkbyB5b3UgaGF2ZSB0aGUgcmVxdWly
ZW1lbnRzIGZvciB0aGUgZ2VuZXJpYyBzb3VuZCAvIHZvaWNlIGRyaXZlcnMgCj4+Pj4gaW5zdGFs
bGVkPwo+Pj4+IFRvIGdldCBzdXJlLCByZWluc3RhbGwgaXQgZXhlY3V0ZToKPj4+PiBzdWRvIHBh
Y21hbiAtUyBzb3ggZXNwZWFrLW5nIHhjbGlwCj4+Pj4gCj4+Pj4gc294IGlzIHVzZWQgZm9yIHBs
YXkgc291bmQsIGVzcGVhayBmb3Igdm9pY2Ugb3V0cHV0IGluIHRoZSBkZWZhdWx0IAo+Pj4+IGNv
bmZpZ3VyYXRpb24sIHhjbGlwIGlzIGEgZnVubnkgdG95IHRvIGxldCBmZW5yaXIgc2hhcmUgdGhl
IAo+Pj4+IGNsaXBib2FyZCBiZXR3ZWVuIHlvdXIgR1VJIGFuZCBUZXJtaW5hbC4KPj4+PiAKPj4+
PiBzdGFydCBmZW5yaXIgZm9yIHRlc3RpbmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBjYW4gc3RvcCBp
dCB1c2luZyBDVFJMICsgQwo+Pj4+IHN1ZG8gZmVucmlyCj4+Pj4gCj4+Pj4gZGlkIHlvdSBoZWFy
IHRoZSBzdGFydHVwIHNvdW5kPyBmZW5yaXIgcGxheXMgYSBsaXR0bGUgc291bmRpY29uIGF0IAo+
Pj4+IHN0YXJ0dXAuCj4+Pj4gCj4+Pj4gaWYgbm90LCB0aGVuIHB1bHNlYXVkaW8gaXMgbm90IGNv
bmZpZ3VyZWQuCj4+Pj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPj4+PiAjIGNvbmZpZ3VyZSB1c2Vy
Cj4+Pj4gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNl
LnNoCj4+Pj4gIyBjb25maWd1cmUgcm9vdAo+Pj4+IHN1ZG8gL3Vzci9zaGFyZS9mZW5yaXJzY3Jl
ZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4+Pj4gCj4+Pj4gIyBuZWVkIHRvIHJl
c3RhcnQgdGhhdCB0aGUgY29uZmlndXJhdGlvbiBmb3IgYm90aCBnZXQgYWN0aXZlCj4+Pj4gCj4+
Pj4gcmVzdGFydAo+Pj4+IAo+Pj4+IHRoZW4gcmV0cnkKPj4+PiAKPj4+PiBzdWRvIGZlbnJpcgo+
Pj4+IAo+Pj4+IGxvbmcgc3RvcnJ5OiBmZW5yaXIgbmVlZHMgYnkgZGVmYXVsdCB0byBydW4gYXMg
cm9vdCB0byBjb2xsZWN0IHRoZSAKPj4+PiBkYXRhIG9uIHlvdXIgc2NyZWVuIG9yIGNhcHV0cmUg
dGhlIGlucHV0IGRldmljZXMuIGlmIGZlbnJpciBzcGVha3MgCj4+Pj4gb3IgY3JlYXRlcyBzb3Vu
ZCwgaXQgZG9lcyB0aGlzIGFzIHJvb3QgdXNlci4geW91IHdvbnQgaGVhciBzb3VuZCBvZiAKPj4+
PiBhbiBvdGhlciB1c2VyIGJ5IHB1bHNlYXVkaW8gKHNvdW5kIHNlcnZlcikgZGVzaWduLiBXZSBu
ZWVkIHRvIAo+Pj4+IHRyYW5zcG9ydCB0aGUgc291bmQgY3JlYXRlZCBhcyByb290IHRvIHRoZSBz
b3VuZCBzZXJ2ZXIgeW91IGhhdmUgCj4+Pj4gcnVubmluZyBhcyB1c2VyIHRvIGZpbmFsbHkgaGVh
ciB0aGUgc291bmQuCj4+Pj4gCj4+Pj4gZmVucmlyIHByb3ZpZGVzIDIgc2NyaXB0cyAoc2VlIGFi
b3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSAKPj4+PiBhdWRpbyB0byBzZW5kIHRoZSBk
YXRhIHRvIHlvdXIgdXNlciBhbmQgY29uZmlndXJlIHVzZXIgcHVsc2UgYXVkaW8gCj4+Pj4gdG8g
bGlzdGVuIHRvIHRoZSBzb3VuZCBzZW50IGJ5IHJvb3QgYW5kIHBsYXkgaXQuCj4+Pj4gCj4+Pj4g
Y2hlZXJzIGNocnlzCj4+Pj4gCj4+Pj4gCj4+Pj4gMTguMDUuMjEgdW0gMTQ6NDYgc2NocmllYiBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+IAo+Pj4+PiBIZWxsbyB0aGVy
ZSwKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQgb2Yg
dGhlIHByb2JsZW0gaXMgc29sdmVkIQo+Pj4+PiAKPj4+Pj4gVGhlIG90aGVyIHBhcnQsIGhvdyBl
dmVyLCB0aGF0IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIAo+Pj4+PiBkb2Vzbid0IHNw
ZWFrIHdpdGggZXNwZWFrLCBvciBlc3BlYWstbmcuCj4+Pj4+IAo+Pj4+PiBEbyBJIGhhdmUgdG8g
c2V0IHNvbWV0aGluZyBzb21ld2hlcmUgZm9yIHRoYXQgdG8gaGFwcGVuPwo+Pj4+PiAKPj4+Pj4g
VGhhbmtzIGFnYWluLgo+Pj4+PiAKPj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+PiAKPj4+Pj4gRnJh
bmNpc2NvLgo+Pj4+PiAKPj4+Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+IEhvd2R5IEZyYW5jaXNjbywKPj4+Pj4+
IAo+Pj4+Pj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5
IGJ5IAo+Pj4+Pj4gcHl0aG9uLXB5ZW5jaGFudCBpZiB0aG9zZSBhcmUgc3ByZWFkIHdhcm5pbmdz
LiBNYXliZSB0aGlzIHNob3VsZCAKPj4+Pj4+IGJlIHJlcG9ydGVkIHRvIHRoZSBwYWNrYWdlIG1h
aW50YWluZXIuIEJ1dCBhbnl3YXkuCj4+Pj4+PiAKPj4+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3
aGF0IHBhY2thZ2UgY29udGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91IAo+Pj4+Pj4gbmVlZCBi
eSAic3VkbyBwYWNtYW4gLUZ5IGZpbGVuYW1lIi4gaGVyZSBpIGRpZCB0aGlzIGZvciBmb3IgCj4+
Pj4+PiBleGFtcGxlIGluIGxpYnZva2tvLnNvOgo+Pj4+Pj4gCj4+Pj4+PiAxMDoxNCBbY2hyeXNA
YmxhY2tiZWFzdCB+XSA6KSAkIHN1ZG8gcGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPj4+Pj4+IFtz
dWRvXSBQYXNzd29ydCBmw7xyIGNocnlzOgo+Pj4+Pj4gOjogU3luY2hyb25pc2llcmUgUGFrZXRk
YXRlbmJhbmtlbi4uLgo+Pj4+Pj4gY29yZSA5MDMsNSBLaUIgIDYsMTcgTWlCL3MgMDA6MDAgCj4+
Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjI10gCj4+Pj4+PiAxMDAlCj4+Pj4+PiBleHRyYSA5LDMgTWlC
ICAyNiw5IE1pQi9zIDAwOjAwIAo+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4+Pj4gMTAw
JQo+Pj4+Pj4gY29tbXVuaXR5IDIyLDggTWlCICAyOSw2IE1pQi9zIDAwOjAxIAo+Pj4+Pj4gWyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyNdIAo+Pj4+Pj4gMTAwJQo+Pj4+Pj4gbXVsdGlsaWIgMjIyLDUgS2lCICAx
Miw4IE1pQi9zIDAwOjAwIAo+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4+Pj4gMTAwJQo+
Pj4+Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPj4+Pj4+ICAgIHVzci9saWIvbGlidm9pa2tv
LnNvCj4+Pj4+PiAxMDoxNSBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkCj4+Pj4+PiAKPj4+Pj4+
IHNvIHRoZSBwYWNrYWdlIHlvdSBuZWVkIGZvciBsaWJ2b2trby5zbyBpcyAibGlidm9pa2tvIgo+
Pj4+Pj4gdG8gc2lsZW5jZSBvdXQgYWxsIHRoZSB3YXJuaW5ncyBkbyB0aGlzOgo+Pj4+Pj4gc3Vk
byBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4+Pj4+PiAKPj4+Pj4+IHRoaXMg
aW5zdGFsbCBhbGwgMyAoSU1PIG9wdGlvbmFsIGRlcGVuZGVuY3kncywgd2hhdCBzaG91bGQgbm90
IAo+Pj4+Pj4gY3JlYXRlIGEgd2FybmluZywgYnV0IHdlbGwsIGl0IGlzIGxpa2UgaXQgaXMpCj4+
Pj4+PiAKPj4+Pj4+IGkgdXNlIGlyc3NpIGFzIElSQyAoY29tbWFuZGxpbmUpIGNsaWVudC4gdGhl
cmUgaXMgYWxzbyBQaWRnaW4gKGFzIAo+Pj4+Pj4gZ3JhcGhpY2FsIGNsaWVudCkuIGJvdGggYXJl
IHZlcnkgbmljZS4KPj4+Pj4+IAo+Pj4+Pj4gbG9va2luZyBmb3J3YXJkIHRvIHNlZSB5b3UgaW4g
SVJDIDopLgo+Pj4+Pj4gCj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+IAo+Pj4+Pj4gCj4+Pj4+
PiBBbSAxOC4wNS4yMSB1bSAwODo1NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb246Cj4+Pj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4+Pj4gCj4+Pj4+Pj4gCj4+Pj4+Pj4g
SSBtYW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMsIGJ1dCBub3QgdGhlIG90
aGVyIHR3bywKPj4+Pj4+PiBzbyB0aGFua3MgZm9yIHRoYXQuCj4+Pj4+Pj4gCj4+Pj4+Pj4gQWxz
bywgdGhhbmtzIGZvciBzdWdnZXN0aW5nIHRvIHVzZSB5YXksIEkganVzdCBpbnN0YWxsZWQgaXQs
IEkgCj4+Pj4+Pj4gZGlkbid0IGtub3cgeWFvdXJ0IHdhcyBkZXByZWNhdGVkLgo+Pj4+Pj4+IAo+
Pj4+Pj4+IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwgYmUgZHVtLCB3aGF0IGFyZSBy
ZWNvbW1lbmRlZCBJUkMgCj4+Pj4+Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0gd29ya2lu
Zz8gd2hhdCBzaG91bGQgSSBrbm93IGJlZm9yZSAKPj4+Pj4+PiBqb2luaW5nIGFuIElSQyBjaGFu
bmVsLCB3aGF0IGV2ZXIgaXQgbWlnaHQgYmU/Cj4+Pj4+Pj4gCj4+Pj4+Pj4gVGhhbmtzIGFnYWlu
Lgo+Pj4+Pj4+IAo+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pj4+PiAKPj4+Pj4+PiBGcmFuY2lz
Y28uCj4+Pj4+Pj4gCj4+Pj4+Pj4gT24gNS8xNy8yMSA5OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxp
bmsgdG8gdGhpcyBtZXNzYWdlIGludGVuZGVkIHRvIGNocnlzIAo+Pj4+Pj4+PiAoRmVucmlyIGF1
dGhvcikgb24gdGhlICNhMTF5IGNoYW5uZWwgb2YgaXJjLmxpbnV4LWExMXkub3JnLgo+Pj4+Pj4+
PiAKPj4+Pj4+Pj4gTWF5YmUgam9pbiBoaW0gdGhlcmU/Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBEaWRp
ZXIKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IExlIDE3LzA1LzIwMjEgw6AgMjA6MTUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4+Pj4+Pj4gSGVsbG8gZXZlcnlv
bmUsCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gSSBqdXN0IGRvd25sb2FkZWQgZmVu
cmlyLWdpdCBmcm9tIHRoZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBX
aGVuIEkgdHJ5IHRvIHJ1biBmZW5yaXIgd2l0aCB0aGUgY29tbWFuZAo+Pj4+Pj4+Pj4gCj4+Pj4+
Pj4+PiBmZW5yaXIKPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gaW4gYSB0ZXJtaW5hbCwgaG93IGV2ZXIs
IGkgZ2V0IGZlbnJpcidzIHN0YXJ0dXAgc291bmQsIGFuZCB0aGlzOgo+Pj4+Pj4+Pj4gCj4+Pj4+
Pj4+PiAKPj4+Pj4+Pj4+IFtmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPj4+Pj4+Pj4+
ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRp
bmcgCj4+Pj4+Pj4+PiBwbHVnaW46IGxpYmhzcGVsbC5zby4KPj4+Pj4+Pj4+IDA6IGNhbm5vdCBv
cGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+Pj4+
Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9h
ZGluZyAKPj4+Pj4+Pj4+IHBsdWdpbjogbGlidm9pa2tvLnNvLgo+Pj4+Pj4+Pj4gMTogY2Fubm90
IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+
Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc3OiBFcnJvciBs
b2FkaW5nIAo+Pj4+Pj4+Pj4gcGx1Z2luOiBsaWJudXNwZWxsLnNvCj4+Pj4+Pj4+PiAuNDogY2Fu
bm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+
Pj4+Pj4+PiAKPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQs
IGFuZCBubyBzcGVlY2ggZWl0aGVyLgo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBUaGFuayB5b3UgZm9y
IGFueSBhbnN3ZXIuCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pj4+Pj4+
IAo+Pj4+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pj4+Pj4+PiAKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4gCj4+
Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4+Pj4gCj4+Pj4+PiAKPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4gCj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiAKPj4+
PiAKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

