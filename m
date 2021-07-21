Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 024773D187B
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 23:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626901293;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A2n9iF38uB2qmekJaPUyHIhZeW51MQQ1i6zwwtqjTDw=;
	b=aoQB7ciYxHrDplgtVMOD9FWDfx962oQxESDRoMzWWI3x1lGLmRC3IxaVm+OIcLJUOQdJuP
	dzvafuS+fygrNoRY0Q6lRndkpv9UN6LdV8EpUx2hzhkkDNNTRTBdSal1yotyKNA4wx13tx
	3IodVwn2TYFflLUksm9bJph/2+O9iFI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-2VBvXDdsOFuePsYSKLjg6g-1; Wed, 21 Jul 2021 17:01:31 -0400
X-MC-Unique: 2VBvXDdsOFuePsYSKLjg6g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1301C190A7A1;
	Wed, 21 Jul 2021 21:01:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9587E5D6D1;
	Wed, 21 Jul 2021 21:01:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B61771801028;
	Wed, 21 Jul 2021 21:01:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LL1Beu021045 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 17:01:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 34068FED3B; Wed, 21 Jul 2021 21:01:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E212FED35
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:01:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BBF718A01AC
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:01:07 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-571-e0M7MmMpOeijLDc0J7SIig-1; Wed, 21 Jul 2021 17:01:05 -0400
X-MC-Unique: e0M7MmMpOeijLDc0J7SIig-1
Received: by mail-ej1-f49.google.com with SMTP id hd33so5220911ejc.9
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 14:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Wf1nhKOsOaPvEp0BSdbAgzVkMTD8GgitgzmXXIn+tng=;
	b=gt2nveBCuCgNNMLPB0/2+83WZWPvcg3MsNy6Iu3ZDD96kcK9bGd5HqCg2733sDXPFR
	LdrFtmykTnv2/RYfq6bP2DRZDARAkQHGwG/Zxtw3GGtou/ACaeuS2tRPDX04hBpdgSWr
	l7lLYCRmgciHSlzybuWxSwJmQVoy+V07lhMJnOb+NUsa3GsPK2efw9pFPSZodf8gcRIZ
	Dl4uwbp4ghYP9/V0NVbdnOU0M3okXK+63Sc+d98u+vc7ySyGYr18jyoATmDhUsDTj80y
	nEEIisIyTP6EGXhuoOxjzlPUH8xVBRCCKFaULCT3DFG+fnHSqQ3qiJXB5Pf2X9C2WX63
	TFYQ==
X-Gm-Message-State: AOAM533vqrDujFLnzRRRZoWPJwrnZhAf9KCA0CyiFYyO4h5wh1j0tJbP
	LGPB5L1MMZ5nJ34MVJqHPUZfkEeMSenG6w==
X-Google-Smtp-Source: ABdhPJzhFzFQAcXSofoVa7aueuqsUKga6XU92oTIpMbvgd4G9gkcEUmTH9IlWDTBkYgGCchot28fNQ==
X-Received: by 2002:a17:907:381:: with SMTP id
	ss1mr39796089ejb.404.1626901263616; 
	Wed, 21 Jul 2021 14:01:03 -0700 (PDT)
Received: from [192.168.76.145] ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	hg23sm8722473ejc.106.2021.07.21.14.01.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 14:01:03 -0700 (PDT)
Subject: Re: Twitter, again
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
	<alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
	<alpine.DEB.2.11.2107211620400.7560@debian.work>
	<5a0ece74-7eef-6fe4-39a0-f6f98067e92a@gmail.com>
	<6e6febb6-8a7f-9fd5-aab4-81a285edf291@slint.fr>
Message-ID: <b2a0d181-1637-4339-082a-b6506b018df7@gmail.com>
Date: Wed, 21 Jul 2021 23:00:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <6e6febb6-8a7f-9fd5-aab4-81a285edf291@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKV2hhdCBJIG1lZW4gYnkgbmV3IGNvbXB1dGVyLCBpcyBtb3JlIGxpa2UsIG5ldy9vbGQg
Y29tcHV0ZXIuIEkgYW0gdXNpbmcgCmEgSHVhd2VpIE1hdGVib29rIGQxNSB3aGljaCBpcyBsZXNz
IHRoYW4gMyBtb250aHMgb2xkLCBhbmQgSSBhY3R1YWxseSAKbmVlZCBpdCBmb3IgbXkgd29yay4K
CgpJIGFtIGxvb2tpbmcgYXQgYW4gb2xkZXIgdGhpbmtwYWQgYXMgYSBsaW51eCBtYWNoaW5lLCBm
b3IgSSBhbSBub3QgCmJ1eWluZyBMaW51eCBoYXJkd2FyZSBzcGVjaWZpY2FsbHkuCgoKVGhhbmtz
IGZvciB0aGUgaW5mbyBvbiBUd2l0dGVyIGNsaWVudHMgZm9yIFNsaW50LiBJIHdpbGwgaGF2ZSBh
IGxvb2sgCnRvbW9ycm93IHdoZW4gSSBhbSBtb3JlIGF3YWtlIHRoYW4gSSBhbSBub3cuCgoKV2Fy
bSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBmcm9tIFRodW5kZXJiaXJkIG9uICBB
cmNoIExpbnV4CgpPbiA3LzIxLzIxIDEwOjI3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+IEhpIEJyYW5iZHQsCj4KPiBubyBjYXdiaXJkIGluIFNsaW50LCBz
b3JyeS4KPgo+IEJ1dCBzZXZlcmFsIGNsaWVudHMgY2FuIGJlIGJ1aWx0IGZyb20gYnVpbGRpbmcg
c3R1ZmYgYXZhaWxhYmxlCj4gYXQgaHR0cHM6Ly9zbGFja2J1aWxkcy5vcmcgJ3NvbWVob3cgc2lt
aWxhciB0byB0aGUgQVVSCj4KPiBKdXN0IHR5cGU6Cj4gc3BpIHR3aXR0ZXIKPiB0byBrbm93IHlv
dXIgb3B0aW9ucy4KPgo+IElmIHlvdSB3YW50IG9uZSB0eXBlIGFzIHJvb3Q6Cj4gc2xhcHQtc3Jj
IC1pIDxwYWNrYWdlPgo+Cj4gYXMgbm90ZWQgaW46Cj4gaHR0cHM6Ly9zbGludC5mci9kb2MvSGFu
ZEJvb2suaHRtbCNHZXRfYWRkaXRpb25hbF9hcHBsaWNhdGlvbnMKPgo+IENhdmVhdDogZm9yIG5v
dyB0aGVyZSBpcyBhbiBpc3N1ZTsgc2l4IGlzIG5vdGVkIGFzIGEgZGVwIG9mIHNldmVyYWwKPiBw
YWNrYWdlcyBpbiB0aGUgbGlzdCwgYnV0IGFjdHVhbGx5IHB5dGhvbi1zaXgsIGluY2x1ZGVkIGlu
IFNsaW50LCBpcyAKPiB0aGUgc2FtZQo+IHNvZnR3YXJlLiBJIGhvcGUgdG8gc29sdmUgdGhhdCBp
biB0aGUgY29taW5nIGRheXMuCj4KPiBGb3Igbm93LCBhcyBhIHdvcmthcm91bmQgeW91IGNhbiBh
Y2NlcHQgdG8gYnVpbGQgYW5kIGluc3RhbGwgc2l4IGFzIGRlcHMsCj4gYWx0aG91Z2ggaXQgd2ls
bCBiZSBzb21laG93IHJlZHVuZGFudC4KPgo+IE9oLCBhbmQgeW91IGRvbid0IGFsd2F5cyBuZWVk
IHRvIGdldCBhIG5ldyBjb21wdXRlciB0byBpbnN0YWxsIFNsaW50IAo+IG9uIGJhcmUKPiBtZXRh
bCwgdGhlcmUgYXJlIG90aGVyIHBvc3NpYmlsaXRpZXMgbm90ZWQgaW46Cj4gaHR0cHM6Ly9zbGlu
dC5mci9kb2MvSGFuZEJvb2suaHRtbCNfZmVhdHVyZXNfb2ZfdGhlX2luc3RhbGxlcgo+Cj4gQWxz
bywgZmVlbCBmcmVlIHRvIHVzZSBvbmUgb2Ygb3VyIHN1cHBvcnQgY2hhbm5lbHM6Cj4gaHR0cHM6
Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCNfc3VwcG9ydF9hbmRfY29udHJpYnV0aW9ucwo+
Cj4gRm9yIElSQywgU2xpbnQgaW5jbHVkZXMgcGlkZ2luIGFuZCBpcnNzaS4KPgo+IENoZWVycywK
PiBEaWRpZXIKPiAtLSAKPiBEaWRpZXIgU3BhaWVyCj4KPiBMZSAyMS8wNy8yMDIxIMOgIDIxOjUy
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIGFs
bCwKPj4KPj4KPj4gSSBmb3VuZCBjYXdiaXJkIGZvciBBcmNoIHRvIGJlIHNlbWkgdXNhYmxlLiBJ
dCBpcyBhIEdVSSBhcHBsaWNhdGlvbiwgCj4+IGJ1dCBiZWluZyBhIHByYWdtYXRpc3QsIEkgd2ls
bCB1c2Ugd2hhdGV2ZXIgZG9lcyB0aGUgam9iLiAKPj4gVW5mb3J0dW5hdGVseSBJIGFjdHVhbGx5
IG5lZWQgdHdpdHRlciBmb3Igc29tZSBvZiBteSB3b3JrLCBzbyBJIHdpbGwgCj4+IGhhdmUgdG8g
c2VlIGlmIGNhd2JpcmQgaXMgYXZhaWxhYmxlIGluIFNsaW50LiBJIGxvdmUgYm90aCBBcmNoIGFu
ZCAKPj4gU2xpbnQsIGJ1dCBJIGhhdmUgdG8gdXNlIHdoYXRldmVyIHdvcmtzIGZvciBteSBzaXR1
YXRpb24uCj4+Cj4+IFdhcm0gcmVnYXJkcywKPj4KPj4gQnJhbmR0IFN0ZWVua2FtcAo+Pgo+PiBT
ZW50IGZyb20gVGh1bmRlcmJpcmQgb27CoCBBcmNoIExpbnV4Cj4+Cj4+IE9uIDcvMjEvMjEgMzo0
OSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IE9uIFdl
ZCwgMjEgSnVsIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+Pgo+Pj4+IE95c3R0eWVyIGhhcyBiZWVuIGF2YWlsYWJsZSBmb3Igc29tZSB0aW1lIG5vdyBh
bmQgcGVybCBpcyB1c2VkIHRvIAo+Pj4+IHJ1biBpdC4KPj4+PiBUaGUgZW1hY3MgZW52aXJvbm1l
bnQgaGFzIHR0eXR0ZXIgYXZhaWxhYmxlLCBhbmQgcHl0aG9uIGhhcwo+Pj4+IHJhaW5ib3ctdHdp
dHRlciBhdmFpbGFibGUuCj4+Pgo+Pj4gTm90ZSB0aGF0IE95c3R0eWVyIGlzIHRoZSBzdWNjZXNz
b3IgdG8gVFRZdHRlciwgYm90aCBpbiBQZXJsLiAKPj4+IFRUWXR0ZXIgaGFzIG5vdCBiZWVuIGRl
dmVsb3BlZCBzaW5jZSAyMDEyIGFuZCB0aGVyZSdzIHByb2JhYmx5IG5vIAo+Pj4gZ29vZCByZWFz
b24gdG8gdXNlIGl0IGFueW1vcmUuCj4+Pgo+Pj4gT3lzdHR5ZXIgaXRzZWxmIGhhcyBub3Qgc2Vl
biBhbnkgY29tbWl0cyBzaW5jZSAyMDE4LCB3aGljaCBpcyBhIGJpdCAKPj4+IGNvbmNlcm5pbmcu
Cj4+Pgo+Pj4gTW9yZSBhbm5veWluZyBpcyB0aGF0IGFsbCBpbnN0YWxscyBzaG93IHVwIGFzIHRo
ZSBzYW1lIGFwcCwgYW5kIAo+Pj4gYmVjYXVzZSBvZiBUd2l0dGVyIHN0dXBpZG5lc3MsIGFsbCBj
b3VudCBpbiB0ZXJtcyBvZiBkYWlseSBxdW90YXMsIAo+Pj4gZXRjLsKgIFNvIGl0J3MgY29tbW9u
IHRvIGJlIHVuYWJsZSB0byBwb3N0IGR1ZSB0byBxdW90YXMgaGF2aW5nIGJlZW4gCj4+PiBleGNl
ZWRlZCB3aGVuIHlvdSd2ZSBub3QgcG9zdGVkIGFueXRoaW5nIHRvZGF5Lgo+Pj4KPj4+IEknbGwg
c3BhcmUgeW91IG15IHJhbnQgYWJvdXQgVHdpdHRlciBhbmQgdGhlIHdheSB0aGV5IG1hbmFnZSB0
aGVpciAKPj4+IEFQSS4gVGhlIG9uZS1saW5lIHN1bW1hcnkgb2YgaXQgaXMgdGhhdCB0aGV5IHNo
b3VsZCBjaGFyZ2UgKnVzZXJzKiBhIAo+Pj4gbm9taW5hbCBmZWUgZm9yIEFQSSBhY2Nlc3MgYW5k
IGxlYXZlIHRoZSBwb29yIGRldmVsb3BlcnMgYWxvbmUuCj4+Pgo+Pj4gSSd2ZSBub3QgdHJpZWQg
UmFpbmJvd1N0cmVhbSwgSSd2ZSBiZWVuIG1lYW5pbmcgdG8uwqAgQXQgbGVhc3QgaXQgCj4+PiBz
ZWVtcyB0byBiZSB1bmRlciBhY3RpdmUgZGV2ZWxvcG1lbnQuCj4+Pgo+Pj4gVGhlcmUgYXJlIHNv
bWUgb3RoZXIgb3B0aW9ucyBvdXQgdGhlcmUuwqAgU2VhcmNoaW5nIHlvdXIgZmF2b3VyaXRlIAo+
Pj4gcGFja2FnZSBtYW5hZ2VyIHdpbGwgbGlrZWx5IHR1cm4gdXAgc29tZS4KPj4+Cj4+PiBDaGVl
cnMsCj4+PiBHZW9mZi4KPj4+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

