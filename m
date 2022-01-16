Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B299248FD3A
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 14:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642340734;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WY6vV7Yss5GwbPTsZ3kCrlGBSxRzUwcx1NrcI28rsKc=;
	b=ffCdwwSATcpcqeE6sOKOw4MVYeRfA59494PRaooAXz5F22rUhFcbFNgIiuLZQf+ivYPU5f
	5loXso6urzaiDj2mWs4ca568T8tl6olgBQccqs0mATNHQARLdO1zy2SGIiR/MG6M9Qreb5
	WJbyintDeJ7jCoflG0DfmmcvEteNDrY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-UrLzutgYPOiKNSf04LqXcQ-1; Sun, 16 Jan 2022 08:45:30 -0500
X-MC-Unique: UrLzutgYPOiKNSf04LqXcQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 344151F2DA;
	Sun, 16 Jan 2022 13:45:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BF4C72FA4;
	Sun, 16 Jan 2022 13:45:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E24118095C9;
	Sun, 16 Jan 2022 13:45:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GDiwEh020973 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 08:44:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A8050492CA5; Sun, 16 Jan 2022 13:44:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A389F492CA4
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 13:44:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 840F729DD995
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 13:44:58 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-408-PVmM1nKDPaucimSxNRYtUg-1; Sun, 16 Jan 2022 08:44:56 -0500
X-MC-Unique: PVmM1nKDPaucimSxNRYtUg-1
Received: from [37.4.229.93] (helo=[192.168.178.110])
	by smtprelay04.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1n95ny-0003Dj-45
	for blinux-list@redhat.com; Sun, 16 Jan 2022 14:42:46 +0100
Message-ID: <6b40cb56-5d1a-d520-e69c-5574ce673d83@linux-a11y.org>
Date: Sun, 16 Jan 2022 14:44:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
Subject: Re: OCRdesktop 3.0 Released
To: blinux-list@redhat.com
References: <357e9c39-17b9-74cd-3b83-085af1adc4fc@linux-a11y.org>
	<39fc22f1-042c-5fe9-f00f-d6c59c1fcd46@protonmail.com>
In-Reply-To: <39fc22f1-042c-5fe9-f00f-d6c59c1fcd46@protonmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgUmFzdGlzbGF2LCBIb3dkeSBMaXN0LAoKdGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhl
IG5pY2UgZmVlZGJhY2suIEhlYXJpbmcgc3R1ZmYgbGlrZSB0aGF0IGlzIAp2ZXJ5IG1vdGl2YXRp
bmcuCgppIHdhcyB2ZXJ5IGJ1c3kgdGhlIGxhc3QgY291cGxlIG9mIGRheXMgOikuIE5vdCBzdXJl
IGlmIHlvdSBrbm93LCB0aGVyZSAKd2FzIGEgc21hbGwgdG9vbCBuYW1lZCBPQ1JQREYgYm9ybiBv
dXQgb2YgdGhlIE9DUmRlc2t0b3AgY29kZS4gaXRzIGZvciAKcXVpY2sgT0NSIEltYWdlIGFuZCBQ
REYgZmlsZXMuIHRoaXMgYnJva2UgYXMgd2VsbC4gU28gaSBkZWNpZGUgdG8gCnJldW5pb24gdGhl
IGNvZGUgYmFzZXMuIEkgYWxzbyBkaWQgYSBsb3Qgb2YgaW1wcm92ZW1lbnRzIGFuZCBjbGVhbnVw
cyAKd2hpbGUgZG9pbmcgdGhhdC4KcmVzdWx0Ogp5b3UgY2FuIG5vdyBPQ1IgZmlsZXMgbGlrZSBp
bWFnZXMsIFBERnMgKGFsc28gd2l0aCBtdWx0aXBsZSBwYWdlcykgd2l0aCAKT0NSZGVza3RvcC4g
Rm9yIHRoaXMsIGl0cyBhbHNvIHF1aXRlIG9wdGlvbmFsIG5vdyBoYXZpbmcgYSBVSS4gYmVjYXVz
ZSAKT0NSZGVza3RvcCBjYW4gcGlwZSB0aGUgcmVzdWx0IHRvIFNURE9VVC4KClNlZSBoZXJlIGZv
ciB0aGUgY29tcGxldGUgc3Rvcnk6Cmh0dHBzOi8vd3d3LnBhdHJlb24uY29tL3Bvc3RzLzYxMTMx
NDU1Cmh0dHBzOi8vd3d3LnBhdHJlb24uY29tL3Bvc3RzLzYxMjI4NjkxCgp0aGVyZSBpcyBhbHNv
IHNvbWUgZ29vZGllIGluZm9ybWF0aW9uIGFib3V0IE9DUiB0aGUgY2xpcGJvYXJkIGNvbnRlbnQg
aW4gCm15IGJsb2cgeW91IG1pZ2h0IGJlIGludGVyZXN0ZWQgaW4uCgppZiB5b3UgbGlrZSBteSB3
b3JrIHlvdSBjYW4gc3VwcG9ydCBtZSBvbiBwYXRyZW9uIGlmIHlvdSB3YW50IDgpLgoKaSBoYXZl
IHNvbWUgb3RoZXIgaWRlYXMgaSB3YW5uYSBicmluZyBpbiBuZXh0IGNvdXBsZSBvZiB3ZWVrczoK
Ci0gbXVsdGlwcm9jZXNzaW5nIGZvciBPQ1IgUERGIGZpbGVzIGZvciBwZXJmb3JtYW5jZSBzcGVl
ZHVwCi0gc29tZXRoaW5nIGVzc2VudGlhbCBhcyBhIGxvYWRpbmcgYmFyIHdoaWxlIE9DUiBwcm9j
ZXNzIChsb2wpCi0gaSBoYXZlIGFuIGlkZWEgZm9yIGEgd2hpbGUsIHRlc3NlcmFjdCBjcmVhdGVz
IHNvbWUgbm9pc2Ugd2hlbiBPQ1IgCndpZGdldHMuIGkuZS4gYSBjaGVja2JveCBpcyBkZXRlY3Rl
ZCBhcyBhIFEuIGkgd2FudCB0byBzdWdnZXN0IHRoaXMgCmNvbW1vbiBwYXR0ZXJuIGF0IGRldGFp
bHMgcGFnZS4KCmkgd291bGQgc2F5LCB3ZSBzZXQgdGhlbiBPQ1JkZXNrdG9wIG9uIHN0ZXJvaWRz
IDgtKSwgaSB3aWxsIHJldHVybiB0byAKbWlncmF0ZSBPcmNhIHRvIGFuIHBsdWdpbiBkcml2ZW4g
YXJjaGl0ZWN0dXJlLgoKY2hlZXJzIGNocnlzCgpBbSAxNS4wMS4yMiB1bSAyMzoxMiBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gSGVsbG8gQ2hyeXMsCj4KPiBh
aCwgZ3JlYXQgbmV3cyEgSSBjb25zaWRlciB0aGlzIGF3ZXNvbWUgcHJvamVjdCB0byBiZSBhIGZ1
bmRhbWVudGFsIGFuZAo+IGFic29sdXRlbHkgY3JpdGljYWwgcGFydCBvZiBMaW51eCBhY2Nlc3Np
YmlsaXR5LiBVbmZvcnR1bmF0ZWx5LCBkZXNwaXRlCj4gaGlnaCBlZmZvcnRzIHRvIG1ha2Ugc29m
dHdhcmUgYXMgYWNjZXNzaWJsZSBhcyBwb3NzaWJsZSwgdGhlcmUgd2lsbCBiZQo+IHN0aWxsIG1h
bnkgaW5hY2Nlc3NpYmxlIGFwcGxpY2F0aW9ucyBvbiBhbGwgcGxhdGZvcm1zLCBmb3IgcXVpdGUg
YSBzb21lCj4gdGltZS4KPgo+IFRoZXJlZm9yZSwgYW4gT0NSIHNvbHV0aW9uIGZvciB0aGVzZSBj
YXNlcyBpcyBhbiBhYnNvbHV0ZSBtdXN0IGhhdmUgZm9yCj4gYWxsIHNlcmlvdXMgYmxpbmQgdXNl
cnMsIGFuZCBJJ2QgbGlrZSB0byB0aGFuayB5b3UgdGhhdCB5b3UncmUga2VlcGluZwo+IHRoaXMg
YWxpdmUgb24gTGludXgsIGFsb25nIGFsbCB0aGUgb3RoZXIgZ3JlYXQgd29yayB5b3UncmUgZG9p
bmcuCj4KPgo+IE9DUkRlc2t0b3AgY2FuIGJlIGluc2FuZWx5IGhhbmR5LCBJJ3ZlIHVzZWQgaXQg
aW4gbWFueSBhcmVhcyBmcm9tCj4gYWNjZXNzaWJpbGl0eSBvZiBub3JtYWwgTGludXggYXBwcywg
dGhyb3VnaCBpbnN0YWxsaW5nIHNvZnR3YXJlIHVzaW5nCj4gd2luZSB0byBmaXJpbmcgdXAgdmly
dHVhbCBtYWNoaW5lcywgd2hpY2ggd291bGQgYmUgaW1wb3NzaWJsZSB3aXRob3V0IGFuCj4gZXF1
aXBtZW50IGxpa2UgdGhpcy4KPgo+Cj4gU28gYWdhaW4sIHRoYW5rIHlvdSEKPgo+Cj4gS2VlcCB1
cCB0aGUgZ3JlYXQgam9iIQo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2Cj4KPgo+
IETFiGEgMTIuIDEuIDIwMjIgbyAyMjoxMiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIG5hcMOtc2FsKGEpOgo+PiBIb3dkeSBMaXN0LAo+Pgo+PiBzb3JyeSBmb3IgY3Jvc3MgcG9z
dGluZywgYnV0IEkgdGhvdWdodCB5b3UgbWlnaHQgYmUgaW50ZXJlc3RlZCBpbnRvIHRoYXQuCj4+
IEkganVzdCByZWxlYXNlZCBPQ1JkZXNrdG9wIDMuMCB3aXRoIHNvbWUgdmVyeSBuaWNlIHN0dWZm
IDopLgo+PiBGb3IgdGhvc2Ugd2hvIGRvbid0IGtub3cgYWJvdXQgT0NSZGVza3RvcDoKPj4gaHR0
cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvdGl0bGUvT2NyZGVza3RvcAo+Pgo+PiAxLiBpIHJlbW92
ZWQgdW5tYWludGFpbmVkICJ0ZXNzZXJ3cmFwIiBiaW5kaW5ncyBhbmQgdXNlICJweXRlc3NlcmFj
dCIKPj4gbm93LiBUaGlzIGlzIHZlcnkgZ29vZCBtYWludGFpbmVkIGFuZCBpcyBhYmxlIHRvIHVz
ZSBUZXNzZXJhY3QgNC4xLnggYW5kCj4+IFRlc3NlcmFjdCA1LjAuIExhc3QgZGlkbnQgd29yayB3
aXRoIHRlc3NlcndyYXAgYW55bW9yZSBjYXVzZSBieSBicm9rZW4gQVBJLgo+PiAyLiBSZW1vdmVk
IGFsbCBkZXByZWNhdGlvbiB3YXJuaW5ncywgTW9kZXJuaXplIHRoZSBjb2RlLCB1c2Ugc3BhY2Vz
Cj4+IGluc3RlYWQgb2YgVGFiIGFuZCBhbGwga2luZCBvZiBjbGVhbnVwIGdvb2RuZXNzLgo+PiAz
LiBpIGFkZGVkIGFuIHZlcnkgbmljZSBuZXcgZmVhdHVyZSB0byBhbmFseXplIHRoZSBjb2xvciBv
ZiBhbiBnaXZlbgo+PiBUZXh0IGFuZCBpdHMgYmFja2dyb3VuZC4gU28geW91IGNhbiBmaWd1cmUg
d2hhdCB0ZXh0IGlzIGhpZ2hsaWdodGVkLCBoYXMKPj4gdGhlIGZvY3VzIGFuZCBhbGwga2luZCBv
ZiB1c2VmdWwgc3R1ZmYuIGl0cyBvZmYgYnkgZGVmYXVsdCBhbmQgY291bGQgYmUKPj4gdXNlZCBi
eSAiLU8iIGZsYWcgYXMgcGFyYW1ldGVyLiBGb3IgdGhpcyB3ZSBuZWVkIHNvbWUgbmV3IGRlcGVu
ZGVuY3kKPj4gd2ViY29sb3IgYW5kIHNjaXB5Lgo+Pgo+PiBTZWUgdGhlIGZ1bGwgc3RvcnkgaGVy
ZToKPj4gaHR0cHM6Ly93d3cucGF0cmVvbi5jb20vcG9zdHMvb2NyLWRlc2t0b3AtNjA4OTUyOTIK
Pj4gaHR0cHM6Ly93d3cucGF0cmVvbi5jb20vcG9zdHMvY29sb3ItYW5hbHl6aW5nLTYwOTg4NTU1
Cj4+Cj4+IFdoZXJlIHRvIGdldDoKPj4KPj4gaHR0cHM6Ly9naXRodWIuY29tL2NocnlzODcvb2Ny
ZGVza3RvcC9yZWxlYXNlcy90YWcvdjMuMAo+Pgo+PiBEZXBlbmN5czoKPj4gLSBweXRob24zCj4+
IC0gdGVzc2VyYWN0Cj4+IC0gdGVzc2VyYWN0LWxhbmctPHlvdXJMYW5ndWFnZUNvZGU+Cj4+IC0g
cHl0aG9uMy1waWxsb3cKPj4gLSBweXRob24tYXRzcGkKPj4gLSBweXRob24tcHl0ZXNzZXJhY3QK
Pj4gLSBsaWJ3bmNrMwo+PiAtIEdUSzMKPj4gT3B0aW9uYWwgRGVwZW5jeXMKPj4gLSBweXRob24t
c2NpcHkgKGZvciBjb2xvciBkZXRlY3Rpb24pCj4+IC0gcHl0aG9uLXdlYmNvbG9ycyAoZm9yIGNv
bG9yIGRldGVjdGlvbikKPj4KPj4gSSBob3BlIHlvdSBoYXZlIGFzIG11Y2ggZnVuIHdoaWxlIHVz
aW5nIGl0IGFzIGkgaGFkIHdoaWxlIHdvcmtpbmcgb24gaXQgOikuCj4+IGhhdmUgYSBnb29kIGRh
eSBhbmQgc3RheSBoZWFsdGh5IGluIHRob3NlIGNyYXp5IHRpbWVzLgo+Pgo+PiBjaGVlcnMgY2hy
eXMKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

