Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CCF49F632
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 10:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643361780;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mHzjVwuXyhngiO8HT/EjgmYYKOdub1vjcNyQZuX4UI4=;
	b=WXSnLmupbiV/rKpFRi4gUaHR+gWoLlMqhsjGaJ4Yqtf4XDQJ0o8drd7m0xYzOun49Ym7Sk
	W162h1mrnqLh9wT8ZgJDVAx7Q8KPGfT01OztCU++bSNY2bvOUulvq6+K3mrVPmW0JiEO+V
	2dyI2ARDLJy4tGoTIR4c5QmX6g/EiGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-228-jOdL7-JPPu6FhkUElMF7Nw-1; Fri, 28 Jan 2022 04:22:56 -0500
X-MC-Unique: jOdL7-JPPu6FhkUElMF7Nw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B0FC1083F66;
	Fri, 28 Jan 2022 09:22:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 936771F2F8;
	Fri, 28 Jan 2022 09:22:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A3824BB7C;
	Fri, 28 Jan 2022 09:22:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S9MZE0030098 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 04:22:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DDFAD2166BB1; Fri, 28 Jan 2022 09:22:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D953B2166BA4
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 09:22:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E33053C13DB9
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 09:22:30 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-403-J7aLLVR0Mi-mejGTWDglhA-1;
	Fri, 28 Jan 2022 04:22:27 -0500
X-MC-Unique: J7aLLVR0Mi-mejGTWDglhA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 98D70246AE
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 09:22:20 +0100 (CET)
Message-ID: <cbe48dfc-be66-5392-ac0a-fae46aa017ae@slint.fr>
Date: Fri, 28 Jan 2022 10:22:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Slint install problem
To: blinux-list@redhat.com
References: <295A066D-05BF-4695-972E-E91261CDBFAB@icloud.com>
In-Reply-To: <295A066D-05BF-4695-972E-E91261CDBFAB@icloud.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20S9MZE0030098
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iCgpEaWRpZXIsIFNsaW50IG1haW50YWluZXIgaGVyZS4KCkEgZmV3IHF1ZXN0aW9ucyBi
ZWxvdzoKMS4gRGlkIHlvdSBjaGVjayB0aGUgaW50ZWdyaXR5IG9mIHRoZSBJU08gYWZ0ZXIgaGF2
aW5nIGRvd25sb2FkZWQgaXQ/CkZvciB0aGlzIHlvdSBuZWVkIHRvIGRvd25sb2FkIGJvdGggdGhl
IElTTyBhbmQgdGhlIGNoZWNrc3VtOgp3Z2V0IGh0dHBzOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4
Nl82NC9zbGludC0xNC4yLjEvaXNvL3NsaW50NjQtMTQuMi4xLjQuaXNvCndnZXQKaHR0cHM6Ly9z
bGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE0LjIuMS9pc28vc2xpbnQ2NC0xNC4yLjEu
NC5pc28uc2hhMjU2L2lzby9zbGludDY0LTE0LjIuMS40Lmlzby5zaGEyNTYKVGhlbiB0aGlzIGNv
bW1hbmQ6CnNoYTI1NnN1bSBzbGludDY0LTE0LjIuMS40Lmlzby5zaGEyNTYKc2hvdWxkIGdpdmUg
dGhpcyBvdXRwdXQ6Ck9LCmVsc2UsIHJlZG8gdGhlIGRvd253bG9hZHMuCjIuIFdoaWNoIHZpdHJ1
YWxpemF0aW9uIHNvZnR3YXJlIGFyZSB5b3UgdXNpbmc/CndydCBzb3VuZCBhbmQgc3BlZWNoLCB0
aGUgYmVzdCBpcyBieSBmYXIgUWVtdSwgd2hpY2ggaXMgYXZhaWxhYmxlIGZvciBNYWNPUzoKaHR0
cHM6Ly93d3cucWVtdS5vcmcvZG93bmxvYWQvI21hY29zCkhvd2V2ZXIgSSBjYW4ndCB0ZXN0LCBh
cyBJIGRvIG5vdCBvd24gYSBNYWMuCjMuIFdoZW4gYXNrZWQgaWYgeW91IHdhbnRlZCB0byBoYXZl
IHNwZWVjaCBkdXJpbmcgaW5zdGFsbGF0aW9uLCBkaWQgeW91IHByZXNzCiJTIiBhcyBzdWdnZXN0
ZWQ/IEVsc2UgeW91IHdpbGwgaGF2ZSBubyBzcGVlY2ggZ29pbmcgZnVydGhlci4KCk90aGVyIHRo
YXQgdGhhdCwgdHdvIHRpcHMgaWYgeW91IGxvb3NlIHNwZWVjaCBkdXJpbmcgaW5zdGFsbGF0aW9u
CiAoYWx0aG91Z2ggdGhpcyBzaG91bGQgbm90IGhhcHBlbik6CmEuIHByZXNzIHRoZSBrZXkgUHJp
bnRTY3JlZW4gd2hpY2ggdG9nZ2xlcyBlc3BlYWt1cCBvbi9vZmYKYi4gZ28gdG8gYW5vdGhlciBj
b25zb2xlIHByZXNzaW5nIEFsdCtGMiwgdGhlIHByZXNzIEVudGVyIHRvIGFjdGl2YXRlIGl0LCB0
aGVuIHR5cGU6Ci9ldGMvcmMuZC9yYy5lc3BlYWt1cCByZXN0YXJ0CnRoZW4gZ28gYmFjayB0byB0
aGUgaW5zdGFsbGVyIHByZXNzaW5nIEFsdCtGMQoKQWxsIHRoaXMgYmVpbmcgc2FpZCB5b3Ugd2ls
bCBiZSB3YXkgYmV0dGVyIG9mZiBpbnN0YWxsaW5nIG9uIGEgcmVtb3ZhYmxlIGRyaXZlCnRoYW4g
aW4gYSBWTS4gVGhpcyBjYW4gYmUgYW4gVVNCIGNvbm5lY3RlZCBTU0QsIGhhcmQgZGlzaywgb3Ig
ZXZlbiBhbiBVU0Igc3RpY2ssCnBvc3NpYmx5IGVuY2xvc2luZyBhbiBTRCBjYXJkLCBvciBhbiBT
RCBjYXJkIGRpcmVjdGx5IGNvbm5lY3RlZCB0byB0aGUgbWFpbgpib2FyZCAoYnVyIGNhdmVhdDsg
bm90IGFsbCBmaXJtd2FyZSBhbGxvdyB0byBib290IGZyb20gYSBTRCBjYXJkIGlmIG5vdCBpbiBh
bgpVU0IgZW5jbG9zdXJlKS4gQWxsIHRoZXNlIHNvbHV0aW9ucyBhbGxvdyBkdWFsIGJvb3Rpbmcg
d2l0aCB5b3VyIGV4aXN0aW5nCnN5c3RlbSwgd2hpY2ggd2lsbCBzdGF5IHVudG91Y2hlZC4KCkNo
ZWVycywKRGlkaWVyCgoKTGUgMjgvMDEvMjAyMiDDoCAwNDoxNSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFRyeWluZyB0byBpbnN0YWxsIFNsaW50IG9u
IGEgVk0uCj4gSSBnZXQgc3BlZWNoIHVwIHVudGlsIEkgY2hvb3NlIGF1dG8gc2V0dXAuCj4gQXMg
SSB0eXBlIHRoZSB3b3JkIGF1dG8sIHRoZSBsZXR0ZXIgQSBpcyBlY2hvZWQsIGJ1dCB0aGUgdSB0
IG8gYW5kIHRoZSBlbnRlciBrZXkgaXMgbm90LiBUaGVyZSBpcyBubyBtb3JlIHNwZWVjaCBhZnRl
ciB0aGF0Lgo+IFRoYW5rcywKPiBSb2IKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

