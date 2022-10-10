Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 996D85FA395
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 20:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665427652;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bjfzgTlQ5jwG29naq0ec08DOSNoKiTVnjKppUSgYpBE=;
	b=PUpmU08NVOzTlPG0quUXPECplfwWWCVAG+/vs+Hc2dUICJVlkpafv1o87dkuFrU4iwmeob
	/YNP4CKitYp69XSCAU6CdE8NHOG1DM1DsJGDufy972lj7s8YAS9EsS+VxFj8Snepv7TvpK
	5O0Zw+AdNKyLx/gjZYfa0rkG9KkUbB8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-TsXgM8HwMECo9yNr4SYEDA-1; Mon, 10 Oct 2022 14:47:28 -0400
X-MC-Unique: TsXgM8HwMECo9yNr4SYEDA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4496C1C0758D;
	Mon, 10 Oct 2022 18:47:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 42DA2C68E43;
	Mon, 10 Oct 2022 18:47:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0BF5F1946A47;
	Mon, 10 Oct 2022 18:47:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 20:47:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: TDSR?
To: blinux-list@redhat.com
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
 <mailman.6853.1665423932.6082.blinux-list@redhat.com>
 <mailman.6257.1665425449.6074.blinux-list@redhat.com>
In-Reply-To: <mailman.6257.1665425449.6074.blinux-list@redhat.com>
Message-ID: <mailman.6398.1665427644.6083.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzIGZlbnJpciBpcyBhbHNvIGluY2x1ZGVkIGluIFNsaW50IDE1LjAsIHRoYW5rcyBKdWRlIGZv
ciB0aGUgcmVtYWluZGVyLgoKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyCmRpZGllcmF0c2ludGRv
dGZyCgoKTGUgMTAvMTAvMjAyMiDDoCAyMDoxMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFlvdSBmb3Jnb3QgZmVucmlyLgo+IAo+IAo+IAo+IEp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+Cj4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJl
IHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ICBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBh
bW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9y
LCAxOTQwKQo+IAo+IC4KPiAKPiBPbiBNb24sIDEwIE9jdCAyMDIyLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IAo+PiBTbyBuZWl0aGVyIHRkc3Igbm9yIHlhc3Ig
d2lsbCBsYW5kIGluIFNsaW50IDE1LjAuLi4KPj4KPj4gLi4uIHdoaWNoIGFscmVhZHkgaW5jbHVk
ZXMgc3BlZWNoLWRpc3BhdGNoZXIsIGVzcGVha3VwLCBzcGVlY2hkLXVwLCBzcGVlY2hkLWVsLAo+
PiBlbWFjc3BlYWssIGJybHR0eSwgYW5kIG9mIGNvdXJzZSBvcmNhIHNvIGNhbiBiZSB1c2VkIG9u
IHRoZSBjb25zb2xlIGFzIGluCj4+IGdyYXBoaWNhbCBlbnZpcm9ubWVudHMgKG1haW4gaW5jbHVk
ZWQgYXJlIE1BVEUgYW5kIExYUXQpIGFuZCBzd2l0Y2ggYmFjayBhbmQKPj4gZm9ydGggYmV0d2Vl
biBjb25zb2xlIGFuZCBncmFwaGljYWwgd2l0aG91dCBsb3Npbmcgc3BlZWNoLgo+Pgo+PiBJIHdv
dWxkIGJlIGdsYWQgdG8gYW55b25lIHRlc3RpbmcgdGhlIHNsaW50LTE1LjAgcmVsZWFzZSBjYW5k
aWRhdGUgMiwgSVNPCj4+IGF2YWlsYWJsZSBoZXJlOgo+PiBodHRwczovL3NsYWNrd2FyZS51ay9z
bGludC94ODZfNjQvc2xpbnQtMTUuMC9pc28vCj4+IFBsZWFzZSByZWFkIGZpcnN0Ogo+PiBodHRw
czovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTUuMC9SRUFETUUtcmMyCj4+IGh0
dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjX2luc3RhbGxfc2xpbnQKPj4gaHR0cHM6
Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE1LjAvaXNvL1JFQURNRS1hbHQuaXNv
Cj4+Cj4+Cj4+IElmIHlvdSBsaWtlIGl0IHlvdSB3aWxsIG5vdCBoYXZlIHRvIHJlaW5zdGFsbCB3
aGVuIHRoZSAib2ZmaWNpYWwgcmVsZWFzZSIgSVNPCj4+IHdpbGwgYmUgYXZhaWxhYmxlIGluIGEg
dmVyeSBmZXcgZGF5cy4gT24gdGhlIG90aGVyIGhhbmQgaWYgbWFqb3IgYnVncyBhcmUgZm91bmQK
Pj4gSSB3aWxsIHByb3ZpZGUgYW5vdGhlciBJU08sIGVsc2UsIGp1c3QgdXBkYXRlIHRoZSBpbnN0
YWxsZWQgcGFja2FnZXMgdG8gcHJhdmlkZQo+PiBmaXhlcyB3aWxsIGJlIGVub3VnaC4KPj4KPj4g
QmVzdCwKPj4gRGlkaWVyCj4+IC0tCj4+IERpZGllciBTcGFpZXIKPj4gZGlpZGVyYXRzbGludGRv
dGZyCj4+Cj4+Cj4+IExlIDEwLzEwLzIwMjIgPyAxODozMCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhID9jcml0wqA6Cj4+PiBUZHNyIGlzIGluIGZhY3QgbXVjaCBsaWtlIFlB
U1IgaW4gZnVuY3Rpb25hbGl0eSBmcm9tIHdoYXQgSSBjYW4gdGVsbCwgd2l0aCB0aGUKPj4+IGV4
Y2VwdGlvbiB0aGF0IGl0IGFwcGVhcnMgdGhlcmUgaXMgbm8gd2F5IHRvIGNoYW5nZSB3aGF0IHZv
aWNlIGl0IHVzZXMgd2l0aG91dAo+Pj4gZWRpdGluZyB5b3VyIHNwZWVjaC1kaXNwYXRjaGVyIGNv
bmZpZ3VyYXRpb24uIEkgZGlkbid0IGZpbmQgYW55IG1lbnRpb24gb2YgYW4KPj4+IGV4Y2VwdGlv
biBkaWN0aW9uYXJ5IGVpdGhlciwgd2hpY2ggd2FzIGluY2x1ZGVkIGluIFlBU1IgYXMgSSByZWNh
bGwsIHRob3VnaCBpdAo+Pj4gaGFzIGJlZW4gYSB2ZXJ5IGxvbmcgdGltZSBzaW5jZSBJIHVzZWQg
dGhhdC4gVGhhdCBzYWlkLCBJIHNlZSBubyBhZHZhbnRhZ2UgdG8KPj4+IHVzaW5nIGl0IGlmIHlv
dSBhbHJlYWR5IGhhdmUgU3BlYWt1cCBydW5uaW5nLiBJIGFsc28gZG9uJ3Qgc2VlIGFueSBhZHZh
bnRhZ2UgdG8KPj4+IHJ1bm5pbmcgU3BlYWt1cCBhbmQgRmVucmlyIGF0IHRoZSBzYW1lIHRpbWUs
IGFuZCB0aGUgcHJpbWFyeSBhZHZhbnRhZ2Ugb2YgRmVucmlyCj4+PiBvdmVyIFNwZWFrdXAsIGFz
aWRlIGZyb20gc3BlbGwgY2hlY2sgYW5kIG90aGVyIHVzZWZ1bCBmZWF0dXJlcywgaXMgc2ltcGx5
IHRoYXQgYQo+Pj4ga2VybmVsIHVwZGF0ZSB3b24ndCBldmVuIHRlbXBvcmFyaWx5IGJyZWFrIHlv
dXIgc2NyZWVuIHJlYWRlciBhcyBJIGhhdmUgc2Vlbgo+Pj4gaGFwcGVuLCB0aG91Z2ggc3VjaCBi
cmVha2FnZSBkb2VzIG9jY3VyIHJhdGhlciBpbmZyZXF1ZW50bHkuIFRoYXQgc2FpZCwgcnVubmlu
Zwo+Pj4gZW50aXJlbHkgaW5kZXBlbmRlbnQgb2YgdGhlIGtlcm5lbCBkb2VzIG9mZmVyIGJldHRl
ciBwb3J0YWJpbGl0eSwgYW5kIGFsc28gbWVhbnMKPj4+IHRoYXQgdGhlIHNjcmVlbiByZWFkZXIg
Y2FuIGJlIHVwZGF0ZWQgaW5kZXBlbmRlbnRseSBvZiB0aGUga2VybmVsLCB3aGljaCBJTU8gaXMK
Pj4+IGFsd2F5cyBhIGdvb2QgdGhpbmcodG0pLgo+Pj4KPj4+IH5LeWxlCj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

