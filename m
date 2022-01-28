Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F8849F95C
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 13:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643372961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZUhADSFHNM/CMX65kPHcwIAf/aqc5pc2AmLlWhs/Guc=;
	b=PZZzJi3uWnRhcpl1TyM6sTyG0H2RRuC8LHItRlLgvPX3XTsBuBbboqIzZwOJ+F7LhC/12I
	xApwikyZtQTBUY73bhejZHNDrMnGVzbahGnMS2oW8L98YCUVQrPbhPDxIHEeOmP8Th3cCv
	V9AC5L4KJFq+wevWty4SZ8MGwf9cFfI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-298-ICHILSrCMNCICAHw2G7Uyw-1; Fri, 28 Jan 2022 07:29:17 -0500
X-MC-Unique: ICHILSrCMNCICAHw2G7Uyw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90B6F1F2DB;
	Fri, 28 Jan 2022 12:29:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 129557BB48;
	Fri, 28 Jan 2022 12:29:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE0971809CB8;
	Fri, 28 Jan 2022 12:28:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SCShFU010777 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 07:28:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 515AD40F9D78; Fri, 28 Jan 2022 12:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CDAD40F9D75
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 12:28:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33CDF8027FB
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 12:28:43 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-59-8SUilO6bP8KTRJepFcRgIg-1;
	Fri, 28 Jan 2022 07:28:32 -0500
X-MC-Unique: 8SUilO6bP8KTRJepFcRgIg-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C98CF2017E
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 12:28:24 +0100 (CET)
Message-ID: <d447078e-3161-a32d-a069-94bb576f2958@slint.fr>
Date: Fri, 28 Jan 2022 13:28:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Slint install problem
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <295A066D-05BF-4695-972E-E91261CDBFAB@icloud.com>
	<cbe48dfc-be66-5392-ac0a-fae46aa017ae@slint.fr>
In-Reply-To: <cbe48dfc-be66-5392-ac0a-fae46aa017ae@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20SCShFU010777
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZXJyYXR1bToKCmluc3RlYWQgb2YKc2hhMjU2c3VtIHNsaW50NjQtMTQuMi4xLjQuaXNvLnNoYTI1
NgpwbGVhc2UgcmVhZDoKc2hhMjU2c3VtIC1jIHNsaW50NjQtMTQuMi4xLjQuaXNvLnNoYTI1NgoK
RGlkaWVyCkxlIDI4LzAxLzIwMjIgw6AgMTA6MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBSb2IKPiAKPiBEaWRpZXIsIFNsaW50IG1haW50YWlu
ZXIgaGVyZS4KPiAKPiBBIGZldyBxdWVzdGlvbnMgYmVsb3c6Cj4gMS4gRGlkIHlvdSBjaGVjayB0
aGUgaW50ZWdyaXR5IG9mIHRoZSBJU08gYWZ0ZXIgaGF2aW5nIGRvd25sb2FkZWQgaXQ/Cj4gRm9y
IHRoaXMgeW91IG5lZWQgdG8gZG93bmxvYWQgYm90aCB0aGUgSVNPIGFuZCB0aGUgY2hlY2tzdW06
Cj4gd2dldCBodHRwczovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL2lz
by9zbGludDY0LTE0LjIuMS40Lmlzbwo+IHdnZXQKPiBodHRwczovL3NsYWNrd2FyZS51ay9zbGlu
dC94ODZfNjQvc2xpbnQtMTQuMi4xL2lzby9zbGludDY0LTE0LjIuMS40Lmlzby5zaGEyNTYvaXNv
L3NsaW50NjQtMTQuMi4xLjQuaXNvLnNoYTI1Ngo+IFRoZW4gdGhpcyBjb21tYW5kOgo+IHNoYTI1
NnN1bSBzbGludDY0LTE0LjIuMS40Lmlzby5zaGEyNTYKPiBzaG91bGQgZ2l2ZSB0aGlzIG91dHB1
dDoKPiBPSwo+IGVsc2UsIHJlZG8gdGhlIGRvd253bG9hZHMuCj4gMi4gV2hpY2ggdml0cnVhbGl6
YXRpb24gc29mdHdhcmUgYXJlIHlvdSB1c2luZz8KPiB3cnQgc291bmQgYW5kIHNwZWVjaCwgdGhl
IGJlc3QgaXMgYnkgZmFyIFFlbXUsIHdoaWNoIGlzIGF2YWlsYWJsZSBmb3IgTWFjT1M6Cj4gaHR0
cHM6Ly93d3cucWVtdS5vcmcvZG93bmxvYWQvI21hY29zCj4gSG93ZXZlciBJIGNhbid0IHRlc3Qs
IGFzIEkgZG8gbm90IG93biBhIE1hYy4KPiAzLiBXaGVuIGFza2VkIGlmIHlvdSB3YW50ZWQgdG8g
aGF2ZSBzcGVlY2ggZHVyaW5nIGluc3RhbGxhdGlvbiwgZGlkIHlvdSBwcmVzcwo+ICJTIiBhcyBz
dWdnZXN0ZWQ/IEVsc2UgeW91IHdpbGwgaGF2ZSBubyBzcGVlY2ggZ29pbmcgZnVydGhlci4KPiAK
PiBPdGhlciB0aGF0IHRoYXQsIHR3byB0aXBzIGlmIHlvdSBsb29zZSBzcGVlY2ggZHVyaW5nIGlu
c3RhbGxhdGlvbgo+ICAoYWx0aG91Z2ggdGhpcyBzaG91bGQgbm90IGhhcHBlbik6Cj4gYS4gcHJl
c3MgdGhlIGtleSBQcmludFNjcmVlbiB3aGljaCB0b2dnbGVzIGVzcGVha3VwIG9uL29mZgo+IGIu
IGdvIHRvIGFub3RoZXIgY29uc29sZSBwcmVzc2luZyBBbHQrRjIsIHRoZSBwcmVzcyBFbnRlciB0
byBhY3RpdmF0ZSBpdCwgdGhlbiB0eXBlOgo+IC9ldGMvcmMuZC9yYy5lc3BlYWt1cCByZXN0YXJ0
Cj4gdGhlbiBnbyBiYWNrIHRvIHRoZSBpbnN0YWxsZXIgcHJlc3NpbmcgQWx0K0YxCj4gCj4gQWxs
IHRoaXMgYmVpbmcgc2FpZCB5b3Ugd2lsbCBiZSB3YXkgYmV0dGVyIG9mZiBpbnN0YWxsaW5nIG9u
IGEgcmVtb3ZhYmxlIGRyaXZlCj4gdGhhbiBpbiBhIFZNLiBUaGlzIGNhbiBiZSBhbiBVU0IgY29u
bmVjdGVkIFNTRCwgaGFyZCBkaXNrLCBvciBldmVuIGFuIFVTQiBzdGljaywKPiBwb3NzaWJseSBl
bmNsb3NpbmcgYW4gU0QgY2FyZCwgb3IgYW4gU0QgY2FyZCBkaXJlY3RseSBjb25uZWN0ZWQgdG8g
dGhlIG1haW4KPiBib2FyZCAoYnVyIGNhdmVhdDsgbm90IGFsbCBmaXJtd2FyZSBhbGxvdyB0byBi
b290IGZyb20gYSBTRCBjYXJkIGlmIG5vdCBpbiBhbgo+IFVTQiBlbmNsb3N1cmUpLiBBbGwgdGhl
c2Ugc29sdXRpb25zIGFsbG93IGR1YWwgYm9vdGluZyB3aXRoIHlvdXIgZXhpc3RpbmcKPiBzeXN0
ZW0sIHdoaWNoIHdpbGwgc3RheSB1bnRvdWNoZWQuCj4gCj4gQ2hlZXJzLAo+IERpZGllcgo+IAo+
IAo+IExlIDI4LzAxLzIwMjIgw6AgMDQ6MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gYSDDqWNyaXTCoDoKPj4gVHJ5aW5nIHRvIGluc3RhbGwgU2xpbnQgb24gYSBWTS4KPj4g
SSBnZXQgc3BlZWNoIHVwIHVudGlsIEkgY2hvb3NlIGF1dG8gc2V0dXAuCj4+IEFzIEkgdHlwZSB0
aGUgd29yZCBhdXRvLCB0aGUgbGV0dGVyIEEgaXMgZWNob2VkLCBidXQgdGhlIHUgdCBvIGFuZCB0
aGUgZW50ZXIga2V5IGlzIG5vdC4gVGhlcmUgaXMgbm8gbW9yZSBzcGVlY2ggYWZ0ZXIgdGhhdC4K
Pj4gVGhhbmtzLAo+PiBSb2IKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

